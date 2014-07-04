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