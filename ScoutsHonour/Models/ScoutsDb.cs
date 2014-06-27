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
        public DbSet<User> Users { get; set; }
        public DbSet<Event> Events { get; set; }
        public DbSet<Goal> Goals { get; set; }
    }
}