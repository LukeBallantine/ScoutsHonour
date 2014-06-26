using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class ScoutsHonourDb : DbContext
    {
        public ScoutsHonourDb() : base("name=DefaultConnection")
        { }

        public DbSet<Organisation> Organisations { get; set; }
        public DbSet<Group> Groups { get; set; }
    }
}