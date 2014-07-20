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
        public bool Presented { get; set; }
        public DateTime? AchievedDate { get; set; }
    }
}