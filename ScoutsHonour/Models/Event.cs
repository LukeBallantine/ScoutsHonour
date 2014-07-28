using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Event
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Title { get; set; }

        [StringLength(500)]
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [Required]
        [Display(Name = "Event Date")]
        [DataType(DataType.Date)]
        public DateTime EventDate { get; set; }

        [DataType(DataType.MultilineText)]
        public string Notes { get; set; }

        // FK
        public int GroupId { get; set; }
        //public virtual Group Group { get; set; }

        //[Display(Name = "Attendees")]
        private ICollection<Member> _members;
        public virtual ICollection<Member> Members
        {
            get { return _members ?? (_members = new List<Member>()); }
            protected set { _members = value; }
        }

        //[Display(Name = "Badges")]
        private ICollection<Goal> _goals;
        public virtual ICollection<Goal> Goals
        {
            get { return _goals ?? (_goals = new List<Goal>()); }
            protected set { _goals = value; }
        }
    }
}