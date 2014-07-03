using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Group
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string GroupCode { get; set; }
        public virtual ICollection<ApplicationUser> ApplicationUsers { get; set; }
        public virtual ICollection<Member> Members { get; set; }
    }
}