using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ScoutsHonour.Models
{
    public class Member
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "Phone")]
        public string Phone { get; set; }

        [StringLength(50)]
        [Display(Name = "Alternate Phone")]
        public string Phone2 { get; set; }

        [StringLength(50)]
        [Display(Name = "Parent Email")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }       // Could be parent email

        [Display(Name = "Type")]
        public MemberType Type { get; set; }     // Cub, Scout, etc

        [StringLength(20)]
        [Display(Name = "Six Colour")]
        public string SixColour { get; set; }

        [StringLength(20)]
        public string Rank { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Date of Birth")]
        public DateTime? DOB { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Date Joined")]
        public DateTime? DateJoined { get; set; }

        public MemberStatus Status { get; set; }

        [DataType(DataType.MultilineText)]
        [Display(Name = "Notes")]
        public string PublicNotes { get; set; }

        [DataType(DataType.MultilineText)]
        [Display(Name = "Notes (Leaders only)")]
        public string PrivateNotes { get; set; }

        //FK
        public int? GroupId { get; set; }
        public virtual Group Group { get; set; }

        public virtual ICollection<ApplicationUser> ApplicationUsers { get; set; }      // AspNetUsers DB table

        private ICollection<Event> _events;
        public virtual ICollection<Event> Events
        {
            get { return _events ?? (_events = new List<Event>()); }
            set { _events = value; }
        }

        public virtual ICollection<MemberGoal> MemberGoals { get; set; }
    }

    public class EditMemberViewModel
    {
        public Member Member { get; set; }
        public virtual ICollection<SelectListItem> LinkedGroups { get; set; }
    }
}