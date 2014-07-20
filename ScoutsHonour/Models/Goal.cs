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
        //public int Level { get; set; }

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

        // Foriegn keys
        public virtual int? GoalId { get; set; }
        public virtual Organisation Organisation { get; set; }
        public virtual int OrganisationId { get; set; }

        public virtual ICollection<Goal> Goals { get; set; }

        public virtual ICollection<MemberGoal> MemberGoals { get; set; }

        public virtual ICollection<Event> Events { get; set; }  // do we need this?
    }

    public class GoalDetailViewModel
    {
        
    }


}