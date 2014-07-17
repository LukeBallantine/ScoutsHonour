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
        
        //[Display(Name = "Attendees")]
        //public virtual ICollection<Member> Members { get; set; }

        private ICollection<Member> _members;
        public virtual ICollection<Member> Members
        {
            get { return _members ?? (_members = new List<Member>()); }
            protected set { _members = value; }
        }

        [Display(Name = "Badges")]
        public virtual ICollection<Goal> Goals { get; set; }
    }
}