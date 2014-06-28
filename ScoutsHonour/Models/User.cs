using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public int UserTypeId { get; set; }
        public string SixColour { get; set; }
        public int RankId { get; set; }
        public DateTime? DOB { get; set; }
        public ICollection<Event> Events { get; set; }
        public ICollection<Goal> Goals { get; set; }
    }
}