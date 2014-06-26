using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Organisation
    {
        public int OrganisationId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public ICollection<Group> Groups { get; set; }
    }
}