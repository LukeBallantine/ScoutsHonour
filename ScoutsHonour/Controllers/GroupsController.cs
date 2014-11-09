using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ScoutsHonour.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ScoutsHonour.Enums;
using ScoutsHonour.Helpers;

namespace ScoutsHonour.Controllers
{
    public class GroupsController : BaseController<ApplicationUser, IdentityRole, ScoutsHonourDbContext>
    {

        // GET: Groups
        public ActionResult Index()
        {
            if (CurrentUser != null && CurrentUser.Groups != null)
            { 
                var groupsList = CurrentUser.Groups.ToList();

                if (groupsList.Count() == 1)
                    return RedirectToAction("Details", new { id = groupsList.FirstOrDefault().Id });
            
                    return View(CurrentUser.Groups.ToList());
            }
            return RedirectToAction("Index", "Home");
        }

        // GET: Groups/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Group group = await Context.Groups.FindAsync(id);
            if (group == null)
            {
                return HttpNotFound();
            }

            CookieHelper.SetGroupId(group.Id);
            CookieHelper.SetOrganisationId(group.OrganisationId);

            var pastDate = DateTime.Now.AddDays(-7);
            var events = Context.Events.Where(e => e.GroupId == group.Id && e.EventDate >= pastDate)
                            .OrderBy(e => e.EventDate).Take(2).ToList();
            ViewBag.Events = events;

            ViewBag.CurrentCubs = group.Members.Where(m => m.Status != MemberStatus.Deleted
                                    && m.Status != MemberStatus.Left
                                    && m.Status != MemberStatus.Waitlisted).Count();
            ViewBag.WaitingCubs = group.Members.Where(m => m.Status == MemberStatus.Waitlisted).Count();

            return View(group);
        }

        // GET: Groups/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Groups/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Title,GroupCodeParent,GroupCodeLeader,BuildingName,StreetAddress,City")] Group group)
        {
            if (ModelState.IsValid)
            {
                Context.Groups.Add(group);
                await Context.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(group);
        }

        // GET: Groups/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Group group = await Context.Groups.FindAsync(id);
            if (group == null)
            {
                return HttpNotFound();
            }
            return View(group);
        }

        // POST: Groups/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,OrganisationId,Title,GroupCodeParent,GroupCodeLeader,BuildingName,StreetAddress,City")] Group group)
        {
            if (ModelState.IsValid)
            {
                Context.Entry(group).State = EntityState.Modified;
                await Context.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(group);
        }

        // GET: Groups/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Group group = await Context.Groups.FindAsync(id);
            if (group == null)
            {
                return HttpNotFound();
            }
            return View(group);
        }

        // POST: Groups/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Group group = await Context.Groups.FindAsync(id);
            Context.Groups.Remove(group);
            await Context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        public async Task<ActionResult> RegisterSuccess(Role role)
        {
            if (User.Identity.IsAuthenticated)
            {
                var user = await UserManager.FindByIdAsync(User.Identity.GetUserId());
                if (user != null)
                {
                    // finish registration process
                    Group group = await Context.Groups.FirstOrDefaultAsync(g => g.GroupCodeParent == user.RegistrationCode
                                                        || g.GroupCodeLeader == user.RegistrationCode);
                    if (group != null)
                    {
                        user.Groups.Add(group);
                        Context.SaveChanges();

                        var result = new RegisterSuccessViewModel
                        {
                            GroupTitle = group.Title,
                            Role = role,
                            GroupId = group.Id
                        };

                        return View(result);
                    }
                }
            }
            return View("Error: Group not found.");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                Context.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
