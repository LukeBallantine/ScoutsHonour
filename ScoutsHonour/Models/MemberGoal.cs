using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class MemberGoal
    {
        public int MemberId { get; set; }
        public int GoalId { get; set; }
        public bool? Presented { get; set; }
        public DateTime? AchievedDate { get; set; }
    }

    public class MemberGoalsDetailViewModel
    {
        public int UserId { get; set; }
        public string FullName { get; set; }

        [Display(Name = "Bronze")]
        public BadgeViewModel BronzeBadge { get; set; }

        [Display(Name = "Silver")]
        public BadgeViewModel SilverBadge { get; set; }

        [Display(Name = "Gold")]
        public BadgeViewModel GoldBadge { get; set; }

        public int PersonalBadges { get; set; }
        //public ICollection<BadgeViewModel> PersonalBadges { get; set; }
    }


    public class MemberGoalsSummaryViewModel
    {
        public int MemberId { get; set; }
        public string FullName { get; set; }

        [Display(Name="Bronze")]
        public BadgeViewModel BronzeBadge { get; set; }
        
        [Display(Name = "Silver")]
        public BadgeViewModel SilverBadge { get; set; }

        [Display(Name = "Gold")]
        public BadgeViewModel GoldBadge { get; set; }

        private ICollection<BadgePartViewModel> _cornerstoneBadges;
        [Display(Name = "Cornerstones")]
        public virtual ICollection<BadgePartViewModel> CornerstoneBadges
        {
            get { return _cornerstoneBadges ?? (_cornerstoneBadges = new List<BadgePartViewModel>()); }
            set { _cornerstoneBadges = value; }
        }

        public int PersonalBadges { get; set; }
        //public ICollection<BadgeViewModel> PersonalBadges { get; set; }
    }

    public class BadgeViewModel
    {
        public int? GoalId { get; set; }
        public int Achieved { get; set; }
        public int Target { get; set; }
        public bool Complete { get; set; }
        public bool Awarded { get; set; }

        private ICollection<BadgeSectionViewModel> _badgeSections;
        public virtual ICollection<BadgeSectionViewModel> BadgeSections
        {
            get { return _badgeSections ?? (_badgeSections = new List<BadgeSectionViewModel>()); }
            protected set { _badgeSections = value; }
        }
    }

    public class BadgeSectionViewModel 
    {
        public int? GoalId { get; set; }
        public int Achieved { get; set; }
        public int Target { get; set; }
        public bool Complete { get; set; }
    }

    public class BadgePartViewModel
    {
        public int GoalId { get; set; }
        public DateTime? CompleteDate { get; set; }
    }

}