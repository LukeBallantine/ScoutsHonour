using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Organisation
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Title { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        // TODO: Add settings for Org specific variables (eg. Member.Type = Cub, Group.Name = Pack)

        public virtual ICollection<Group> Groups { get; set; }
    }
}