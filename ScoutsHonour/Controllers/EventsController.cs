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
    [RequiresGroupIdInSession]
    public class EventsController : BaseController<ApplicationUser, IdentityRole, ScoutsHonourDbContext>
    {
        private ScoutsHonourDbContext db = new ScoutsHonourDbContext();

        // GET: /Events/
        public async Task<ActionResult> Index()
        {
            return View(await db.Events.ToListAsync());
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

            ViewBag.PossibleAttendees = GetPossibleAttendees();
            return View();
        }

        // POST: /Events/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Title,Description,EventDate,Notes")] Event @event, FormCollection form)
        {

            var attendees = form.GetValues("attendees");
            if (ModelState.IsValid)
            {
                db.Events.Add(@event);
                // add attendees
                var members = db.Members.Where(m => attendees.Contains(m.Id.ToString())).ToList();
                foreach (var member in members)
                    @event.Members.Add(member);

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

            return View(@event);
        }

        // POST: /Events/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include="Id,Title,Description,EventDate,Notes")] Event @event, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                db.Entry(@event).State = EntityState.Modified;
                
                // work out which members were added, and which were removed
                var attendees = form.GetValues("attendees");

                // handle null
                if (attendees == null)
                    attendees = new string[0] { }; 

                var dbEvent = db.Events.Where(e => e.Id == @event.Id).Include(e => e.Members);
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

            var groupMembers = db.Groups.Find(SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value)
                    .Members.OrderBy(m => m.SixColour);
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
