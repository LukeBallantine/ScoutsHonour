using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Goal
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Title { get; set; }

        [StringLength(250)]
        public string Description { get; set; }

        [Display(Name = "Goal Type")]
        public GoalType GoalType { get; set; }

        [Display(Name = "Required Sub-Goals")]
        public int? ChildRequirementCount { get; set; }

        [Display(Name = "Required Bronze Sub-Goals")]
        public int? Level1ChildRequirementCount { get; set; }

        [Display(Name = "Required Silver Sub-Goals")]
        public int? Level2ChildRequirementCount { get; set; }

        [Display(Name = "Required Gold Sub-Goals")]
        public int? Level3ChildRequirementCount { get; set; }

        [Display(Name = "Requirement Level")]
        public RequirementLevel? RequirementLevel { get; set; }

        //TODO: Add fields to allow double counting of goals (for New Experience)
        // setup Personal Challenge as a simple goal (require it to be manually set)

        // Foriegn keys
        public int? GoalId { get; set; }
        public virtual ICollection<Goal> Goals { get; set; }

        public int OrganisationId { get; set; }
        public virtual Organisation Organisation { get; set; }

        public virtual ICollection<MemberGoal> MemberGoals { get; set; } // do we need this?

        public virtual ICollection<Event> Events { get; set; }  // do we need this?
    }

    public class GoalViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool TopLevel { get; set; }
        public RequirementLevel RequirementLevel { get; set; }
    }

}