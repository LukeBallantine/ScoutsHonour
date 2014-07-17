using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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

        [StringLength(50)]
        [Display(Name = "Building Name")]
        public string BuildingName { get; set; }

        [StringLength(100)]
        [Display(Name = "Street Address")]
        public string StreetAddress { get; set; }

        [StringLength(50)]
        public string City { get; set; }

        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }

        public virtual Organisation Organisation { get; set; }

        private ICollection<ApplicationUser> _users;
        public virtual ICollection<ApplicationUser> Users
        {
            get { return _users ?? (_users = new List<ApplicationUser>()); }
            protected set { _users = value; }
        }

        public virtual ICollection<Member> Members { get; set; }
    }
}