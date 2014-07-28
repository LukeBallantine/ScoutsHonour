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
using ScoutsHonour.Enums;
using ScoutsHonour.Helpers;
using System.Data.SqlClient;
using ScoutsHonour.Attributes;

namespace ScoutsHonour.Controllers
{
    public class GoalsController : Controller
    {
        private ScoutsHonourDbContext db = new ScoutsHonourDbContext();

        // GET: Goals
        public async Task<ActionResult> Index()
        {
            var goals = db.Goals.Include(g => g.Organisation);     
            return View(await goals.ToListAsync());
        }

        // GET: Goals/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goal goal = await db.Goals.FindAsync(id);
            if (goal == null)
            {
                return HttpNotFound();
            }
            return View(goal);
        }

        // GET: Goals/Create
        public ActionResult Create()
        {
            ViewBag.OrganisationId = new SelectList(db.Organisations, "Id", "Title");
            return View();
        }

        // POST: Goals/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "Id,Title,Description,GoalType,ChildRequirementCount,Level1ChildRequirementCount,Level2ChildRequirementCount,Level3ChildRequirementCount,RequirementLevel,GoalId,OrganisationId")] Goal goal)
        {
            if (ModelState.IsValid)
            {
                db.Goals.Add(goal);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.OrganisationId = new SelectList(db.Organisations, "Id", "Title", goal.OrganisationId);
            return View(goal);
        }

        // GET: Goals/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goal goal = await db.Goals.FindAsync(id);
            if (goal == null)
            {
                return HttpNotFound();
            }
            ViewBag.OrganisationId = new SelectList(db.Organisations, "Id", "Title", goal.OrganisationId);
            return View(goal);
        }

        // POST: Goals/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "Id,Title,Description,GoalType,ChildRequirementCount,Level1ChildRequirementCount,Level2ChildRequirementCount,Level3ChildRequirementCount,RequirementLevel,GoalId,OrganisationId")] Goal goal)
        {
            if (ModelState.IsValid)
            {
                db.Entry(goal).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.OrganisationId = new SelectList(db.Organisations, "Id", "Title", goal.OrganisationId);
            return View(goal);
        }

        // GET: Goals/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Goal goal = await db.Goals.FindAsync(id);
            if (goal == null)
            {
                return HttpNotFound();
            }
            return View(goal);
        }

        // POST: Goals/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Goal goal = await db.Goals.FindAsync(id);
            db.Goals.Remove(goal);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [RequiresGroupIdInSession]
        public ActionResult Cornerstone()
        {
            //TODO: Remove hardcoded OrgId (Cubs NZ)
            var goals = db.Goals.Where(g => g.GoalType == GoalType.CubCornerstone && g.OrganisationId == 1).ToList();

            var memberGoals = GetMemberGoalsDetail(goals);
            return View(memberGoals);
        }

        [RequiresGroupIdInSession]
        public ActionResult MemberCornerstone([Bind(Include = "Id")] int Id)
        {
            //TODO: Remove hardcoded OrgId (Cubs NZ)
            var goals = db.Goals.Where(g => g.GoalType == GoalType.CubCornerstone && g.OrganisationId == 1).ToList();
            ViewBag.Goals = goals.Select(g => new GoalViewModel
            {
                Id = g.Id,
                Title = g.Title,
                Description = g.Description,
                TopLevel = (g.GoalId == null),
                RequirementLevel = g.RequirementLevel ?? RequirementLevel.Any
            });

            var memberGoal = GetMemberGoalsDetail(goals).Where(mg => mg.MemberId == Id).FirstOrDefault();
            return View(memberGoal);
        }

        //private List<MemberGoalsSummaryViewModel> GetMemberGoalsSummary()
        //{

        //    //TODO: Remove hardcoded OrgId (Cubs NZ)
        //    var goals = db.Goals.Where(g => g.GoalType == GoalType.CubCornerstone && g.OrganisationId == 1).ToList();

        //    // If I was smarter, I'd write this in LINQ
        //    string query = "SELECT DISTINCT M.Id 'MemberId', GE.Goal_Id 'GoalId', NULL 'Presented', NULL 'AchievedDate' " +
        //                    "FROM Members M " +
        //                        "INNER JOIN MemberEvents ME ON M.Id = ME.Member_Id " +
        //                        "INNER JOIN [Events] E ON ME.Event_Id = E.Id " +
        //                        "INNER JOIN GoalEvents GE ON E.Id = GE.Event_Id " +
        //                    "WHERE M.GroupId = @GroupId " +
        //                    "ORDER BY M.Id";
        //    IEnumerable<MemberGoal> allMemberGoals = db.Database.SqlQuery<MemberGoal>(query, new SqlParameter("GroupId", SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value)).ToList();

        //    int groupId = SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value;
        //    var members = db.Members.Where(m => m.GroupId == groupId).ToList();

        //    IEnumerable<int> subGoals;
        //    var memberGoalsList = new List<MemberGoalsSummaryViewModel>();
        //    foreach (var member in members)
        //    {
        //        var bronzeBadge = new BadgeViewModel();
        //        var silverBadge = new BadgeViewModel();
        //        var goldBadge = new BadgeViewModel();

        //        IEnumerable<MemberGoal> memberGoals = allMemberGoals.Where(g => g.MemberId == member.Id).ToList();
        //        foreach (var goal in goals)
        //        {

        //            if (goal.Level1ChildRequirementCount > 0)
        //            {
        //                subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Bronze))
        //                                .Select(g => g.Id);
        //                bronzeBadge.BadgeSections.Add(new BadgeSectionViewModel
        //                {
        //                    GoalId = goal.Id,
        //                    Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
        //                    Target = goal.Level1ChildRequirementCount.Value,
        //                    Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level1ChildRequirementCount)
        //                });
        //            }
        //            if (goal.Level2ChildRequirementCount > 0)
        //            {
        //                subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Silver))
        //                                .Select(g => g.Id);
        //                silverBadge.BadgeSections.Add(new BadgeSectionViewModel
        //                {
        //                    GoalId = goal.Id,
        //                    Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
        //                    Target = goal.Level2ChildRequirementCount.Value,
        //                    Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level2ChildRequirementCount)
        //                });
        //            }
        //            if (goal.Level3ChildRequirementCount > 0)
        //            {
        //                subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Gold))
        //                                .Select(g => g.Id);
        //                goldBadge.BadgeSections.Add(new BadgeSectionViewModel
        //                {
        //                    GoalId = goal.Id,
        //                    Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
        //                    Target = goal.Level3ChildRequirementCount.Value,
        //                    Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level3ChildRequirementCount)
        //                });
        //            }

        //        }

        //        bronzeBadge.Achieved = bronzeBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
        //        bronzeBadge.Target = bronzeBadge.BadgeSections.Select(bs => bs.Target).Sum();
        //        bronzeBadge.Complete = (bronzeBadge.Achieved >= bronzeBadge.Target);

        //        silverBadge.Achieved = silverBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
        //        silverBadge.Target = silverBadge.BadgeSections.Select(bs => bs.Target).Sum();
        //        silverBadge.Complete = (silverBadge.Achieved >= silverBadge.Target);

        //        goldBadge.Achieved = goldBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
        //        goldBadge.Target = goldBadge.BadgeSections.Select(bs => bs.Target).Sum();
        //        goldBadge.Complete = (goldBadge.Achieved >= goldBadge.Target);

        //        memberGoalsList.Add(new MemberGoalsSummaryViewModel
        //        {
        //            UserId = member.Id,
        //            FullName = member.FirstName + " " + member.LastName,
        //            BronzeBadge = bronzeBadge,
        //            SilverBadge = silverBadge,
        //            GoldBadge = goldBadge
        //        });

        //    }
        //    return memberGoalsList;
        //}

        private List<MemberGoalsSummaryViewModel> GetMemberGoalsDetail(List<Goal> goals)
        {

            // If I was smarter, I'd write this in LINQ
            string query = "SELECT DISTINCT M.Id 'MemberId', GE.Goal_Id 'GoalId', NULL 'Presented', NULL 'AchievedDate' " +
                            "FROM Members M " +
                                "INNER JOIN MemberEvents ME ON M.Id = ME.Member_Id " +
                                "INNER JOIN [Events] E ON ME.Event_Id = E.Id " +
                                "INNER JOIN GoalEvents GE ON E.Id = GE.Event_Id " +
                            "WHERE M.GroupId = @GroupId " +
                            "ORDER BY M.Id";
            IEnumerable<MemberGoal> allMemberGoals = db.Database.SqlQuery<MemberGoal>(query, new SqlParameter("GroupId", SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value)).ToList();

            int groupId = SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).Value;
            var members = db.Members.Where(m => m.GroupId == groupId).ToList();

            IEnumerable<int> subGoals;
            MemberGoal memberGoalTemp;
            DateTime? goalCompleteDate;
            var memberGoalsList = new List<MemberGoalsSummaryViewModel>();
            foreach (var member in members)
            {
                var bronzeBadge = new BadgeViewModel();
                var silverBadge = new BadgeViewModel();
                var goldBadge = new BadgeViewModel();
                var cornerstoneParts = new List<BadgePartViewModel>();

                IEnumerable<MemberGoal> memberGoals = allMemberGoals.Where(g => g.MemberId == member.Id).ToList();
                foreach (var goal in goals)
                {
                    // this is a leaf (end node of the tree)
                    //if (goal.GoalId != null)
                    //{
                        goalCompleteDate = null;
                        memberGoalTemp = memberGoals.Where(g => g.GoalId == goal.Id).FirstOrDefault();
                        if (memberGoalTemp != null)
                            goalCompleteDate = memberGoalTemp.AchievedDate ?? DateTime.Now;
                        cornerstoneParts.Add(new BadgePartViewModel { GoalId = goal.Id, CompleteDate = goalCompleteDate });
                    //}

                    // summarise progress on bronze cornerstone
                    if (goal.Level1ChildRequirementCount > 0)
                    {
                        subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Bronze))
                                        .Select(g => g.Id);
                        bronzeBadge.BadgeSections.Add(new BadgeSectionViewModel
                        {
                            GoalId = goal.Id,
                            Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
                            Target = goal.Level1ChildRequirementCount.Value,
                            Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level1ChildRequirementCount)
                        });
                    }

                    // summarise progress on silver cornerstone
                    if (goal.Level2ChildRequirementCount > 0)
                    {
                        subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Silver))
                                        .Select(g => g.Id);
                        silverBadge.BadgeSections.Add(new BadgeSectionViewModel
                        {
                            GoalId = goal.Id,
                            Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
                            Target = goal.Level2ChildRequirementCount.Value,
                            Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level2ChildRequirementCount)
                        });
                    }

                    // summarise progress on gold cornerstone
                    if (goal.Level3ChildRequirementCount > 0)
                    {
                        subGoals = goals.Where(g => g.GoalId == goal.Id && (!g.RequirementLevel.HasValue || g.RequirementLevel == RequirementLevel.Gold))
                                        .Select(g => g.Id);
                        goldBadge.BadgeSections.Add(new BadgeSectionViewModel
                        {
                            GoalId = goal.Id,
                            Achieved = memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count(),
                            Target = goal.Level3ChildRequirementCount.Value,
                            Complete = (memberGoals.Where(mg => subGoals.Contains(mg.GoalId)).Count() >= goal.Level3ChildRequirementCount)
                        });
                    }

                }

                bronzeBadge.Achieved = bronzeBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
                bronzeBadge.Target = bronzeBadge.BadgeSections.Select(bs => bs.Target).Sum();
                bronzeBadge.Complete = (bronzeBadge.Achieved >= bronzeBadge.Target);

                silverBadge.Achieved = silverBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
                silverBadge.Target = silverBadge.BadgeSections.Select(bs => bs.Target).Sum();
                silverBadge.Complete = (silverBadge.Achieved >= silverBadge.Target);

                goldBadge.Achieved = goldBadge.BadgeSections.Select(bs => bs.Achieved).Sum();
                goldBadge.Target = goldBadge.BadgeSections.Select(bs => bs.Target).Sum();
                goldBadge.Complete = (goldBadge.Achieved >= goldBadge.Target);

                memberGoalsList.Add(new MemberGoalsSummaryViewModel
                {
                    MemberId = member.Id,
                    FullName = member.FirstName + " " + member.LastName,
                    BronzeBadge = bronzeBadge,
                    SilverBadge = silverBadge,
                    GoldBadge = goldBadge,
                    CornerstoneBadges = cornerstoneParts
                });

            }
            return memberGoalsList;
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
