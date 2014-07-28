using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Group
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Title { get; set; }

        [Display(Name = "Parent Registration Code")]
        public string GroupCodeParent { get; set; }

        [Display(Name = "Leader Registration Code")]
        public string GroupCodeLeader { get; set; }

        [StringLength(100)]
        [Display(Name = "Building Name")]
        public string BuildingName { get; set; }

        [StringLength(150)]
        [Display(Name = "Street Address")]
        public string StreetAddress { get; set; }

        [StringLength(50)]
        public string City { get; set; }

        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }

        // FKs
        public int OrganisationId { get; set; } 
        public virtual Organisation Organisation { get; set; }

        private ICollection<ApplicationUser> _users;
        public virtual ICollection<ApplicationUser> Users
        {
            get { return _users ?? (_users = new List<ApplicationUser>()); }
            set { _users = value; }
        }

        private ICollection<Member> _members;
        [ForeignKey("GroupId")]
        public virtual ICollection<Member> Members
        {
            get { return _members ?? (_members = new List<Member>()); }
            set { _members = value; }
        }

        //public virtual ICollection<Event> Events { get; set; }

    }
}