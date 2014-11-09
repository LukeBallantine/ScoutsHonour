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
using ScoutsHonour.Attributes;
using ScoutsHonour.Helpers;
using ScoutsHonour.Enums;
using System.Diagnostics;

namespace ScoutsHonour.Controllers
{
    [RequiresGroupIdCookie]
    public class EventsController : BaseController<ApplicationUser, IdentityRole, ScoutsHonourDbContext>
    {
        private ScoutsHonourDbContext db = new ScoutsHonourDbContext();

        // GET: /Events/
        public async Task<ActionResult> Index()
        {
            int groupId = CookieHelper.GetGroupId().Value;
            return View(await db.Events.Where(e => e.GroupId == groupId).OrderByDescending(e => e.EventDate).ToListAsync());
        }

        // GET: /Events/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Event @event = await db.Events.FindAsync(id);
            if (@event == null)
            {
                return HttpNotFound();
            }
            return View(@event);
        }

        // GET: /Events/Create
        public ActionResult Create()
        {
            var @event = new Event { EventDate = DateTime.Now };

            ViewBag.PossibleAttendees = GetPossibleAttendees();
            return View(@event);
        }

        // POST: /Events/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Title,OrganisedBy,Description,EventDate,Notes")] Event @event, FormCollection form)
        {
            if (ModelState.IsValid)
            {                
                @event.GroupId = CookieHelper.GetGroupId().Value;
                db.Events.Add(@event);
             
                // add attendees
                var attendees = form.GetValues("attendees");
                if (attendees != null)
                {
                    var members = db.Members.Where(m => attendees.Contains(m.Id.ToString())).ToList();
                    foreach (var member in members)
                        @event.Members.Add(member);
                }

                // add goals
                var goalIds = form.GetValues("goals");
                if (goalIds != null)
                {
                    var goals = db.Goals.Where(g => goalIds.Contains(g.Id.ToString())).ToList();
                    foreach (var goal in goals)
                        @event.Goals.Add(goal);
                }

                await db.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return View(@event);
        }

        // GET: /Events/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Event @event = await db.Events.FindAsync(id);
            if (@event == null)
            {
                return HttpNotFound();
            }

            var currentAttendees = @event.Members.ToList();
            var possibleAttendees = GetPossibleAttendees(currentAttendees);
            ViewBag.PossibleAttendees = possibleAttendees;

            var eventGoals = (from g in @event.Goals
                      join gp in db.Goals on g.GoalId equals gp.Id
                      select new SelectListItem
                      {
                          Text = gp.Title + ": " + g.Title,
                          Value = g.Id.ToString()
                      }).ToList();
            ViewBag.EventGoals = eventGoals;

            return View(@event);
        }

        // POST: /Events/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Title,OrganisedBy,Description,EventDate,Notes,GroupId")] Event @event, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                db.Entry(@event).State = EntityState.Modified;

                var dbEvent = db.Events.Where(e => e.Id == @event.Id)
                    .Include(e => e.Members)
                    .Include(e => e.Goals);                

                // work out which members were added, and which were removed
                var attendees = form.GetValues("attendees");

                if (attendees == null)
                    attendees = new string[0] { }; 

                var oldMembers = dbEvent.Single().Members.ToList();
                var newMembers = db.Members.Where(m => attendees.Contains(m.Id.ToString())).ToList();

                var deletedMembers = oldMembers.Except(newMembers).ToList();
                foreach (var member in deletedMembers)
                {
                    @event.Members.Remove(member);
                    db.Entry(member).State = EntityState.Unchanged;
                }

                var addedMembers = newMembers.Except(oldMembers).ToList();
                foreach (var member in addedMembers)
                {
                    @event.Members.Add(member);
                    db.Entry(member).State = EntityState.Unchanged;
                }

                // work out which goals were added, and which were removed
                var goals = form.GetValues("goals");

                if (goals == null)
                    goals = new string[0] { };

                var oldGoals = dbEvent.Single().Goals.ToList();
                var newGoals = db.Goals.Where(g => goals.Contains(g.Id.ToString())).ToList();

                var deletedGoals = oldGoals.Except(newGoals).ToList();
                foreach (var goal in deletedGoals)
                {
                    @event.Goals.Remove(goal);
                    db.Entry(goal).State = EntityState.Unchanged;
                }

                var addedGoals = newGoals.Except(oldGoals).ToList();
                foreach (var goal in addedGoals)
                {
                    @event.Goals.Add(goal);
                    db.Entry(goal).State = EntityState.Unchanged;
                }

                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(@event);
        }

        // GET: /Events/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Event @event = await db.Events.FindAsync(id);
            if (@event == null)
            {
                return HttpNotFound();
            }
            return View(@event);
        }

        // POST: /Events/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Event @event = await db.Events.FindAsync(id);
            db.Events.Remove(@event);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [RequiresOrganisationIdCookie]
        public ActionResult Autocomplete(string term)
        {
            int organisationId = CookieHelper.GetOrganisationId().Value;
            var model = from g in db.Goals
                      join gp in db.Goals on g.GoalId equals gp.Id
                      where (
                                g.GoalId != null 
                                && g.OrganisationId == organisationId
                                && (g.Title.Contains(term) || gp.Title.Contains(term))
                            )
                      select new
                      {
                          label = gp.Title + ": " + g.Title,
                          value = g.Id
                      };

            return Json(model, JsonRequestBehavior.AllowGet);
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        /// <summary>
        /// Returns a SelectListItem list of possible attendees (all members in a group), with selected 
        /// property set based on parameter currentAttendees
        /// </summary>
        /// <param name="currentAttendees">The current attendees</param>
        /// <returns></returns>
        private List<SelectListItem> GetPossibleAttendees(List<Member> currentAttendees = null)
        {
            int[] currentAttendeeIds = new int[0];
            if (currentAttendees != null)
            {
                currentAttendeeIds = new int[currentAttendees.Count];
                for (int i = 0; i < currentAttendees.Count; i++)
                    currentAttendeeIds[i] = currentAttendees[i].Id;
            }

            var groupMembers = db.Groups.Find(CookieHelper.GetGroupId().Value)
                    .Members.Where(m => m.Status == MemberStatus.Joined || m.Status == MemberStatus.Invested)
                    .OrderBy(m => m.SixColour).ThenBy(m => m.FirstName);
            var possibleAttendees = (from m in groupMembers
                                     select new SelectListItem
                                     {
                                         Text = m.FirstName + " " + m.LastName,
                                         Value = m.Id.ToString(),
                                         Selected = (currentAttendeeIds.Contains(m.Id))
                                     }).ToList();
            return possibleAttendees;
        }

    }
}
