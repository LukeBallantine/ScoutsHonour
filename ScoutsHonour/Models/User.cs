using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }       // Could be parent email
        public int UserTypeId { get; set; }     // Cub, Scout, etc
        public string SixColour { get; set; }
        public string Rank { get; set; }
        public DateTime? DOB { get; set; }
        public DateTime? DateJoined { get; set; }
        public ICollection<ApplicationUser> ApplicationUsers { get; set; }      // AspNetUsers DB table
        public ICollection<Event> Events { get; set; }
        public ICollection<Goal> Goals { get; set; }
    }
}