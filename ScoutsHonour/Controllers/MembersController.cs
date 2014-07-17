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
using Microsoft.AspNet.Identity.EntityFramework;
using ScoutsHonour.Enums;
using ScoutsHonour.Attributes;
using ScoutsHonour.Helpers;

namespace ScoutsHonour.Controllers
{
    [RequiresGroupIdInSession]
    public class MembersController : BaseController<ApplicationUser, IdentityRole, ScoutsHonourDbContext>
    {
        private ScoutsHonourDbContext db = new ScoutsHonourDbContext();

        // GET: Members
        public ActionResult Index()
        {
            var groupId = SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId);
            //TODO: Security check for GroupId

            return View(db.Members.Where(x => x.GroupId == groupId.Value).OrderBy(x => x.SixColour).ToList());
        }

        // GET: Members/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Member member = await db.Members.FindAsync(id);
            if (member == null)
            {
                return HttpNotFound();
            }
            return View(member);
        }

        // GET: Members/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Members/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,FirstName,LastName,Email,Type,SixColour,Rank,DOB,DateJoined,Status,Notes")] Member member)
        {
            if (ModelState.IsValid)
            {
                member.GroupId = SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value;
                db.Members.Add(member);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(member);
        }

        // GET: Members/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Member member = await db.Members.FindAsync(id);
            if (member == null)
            {
                return HttpNotFound();
            }

            var groups = CurrentUser.Groups.ToList();
            ICollection<SelectListItem> currentUsersGroups = (from g in groups
                                                             select new SelectListItem
                                                             {
                                                                    Text = g.Title,
                                                                    Value = g.Id.ToString(),
                                                                    Selected = (g.Id == member.GroupId)
                                                             }).ToList();            
            //EditMemberViewModel editMember = new EditMemberViewModel
            //{
            //    Member = member,
            //    LinkedGroups = currentUsersGroups
            //};

            ViewBag.UsersGroups = currentUsersGroups;

            return View(member);
        }

        // POST: Members/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,FirstName,LastName,Email,Type,SixColour,Rank,DOB,DateJoined,Status,Notes,GroupId")] Member member)
        {
            if (ModelState.IsValid)
            {
                // TODO: Why is GroupId not updated by dropdown?
                db.Entry(member).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(member);
        }

        // GET: Members/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Member member = await db.Members.FindAsync(id);
            if (member == null)
            {
                return HttpNotFound();
            }
            return View(member);
        }

        // POST: Members/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Member member = await db.Members.FindAsync(id);
            db.Members.Remove(member);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
