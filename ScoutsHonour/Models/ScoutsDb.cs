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

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Group>()
                .HasMany(x => x.Users)
                .WithMany()
                .Map(x =>
                {
                    x.MapLeftKey("GroupId");
                    x.MapRightKey("UserId");
                    x.ToTable("GroupUserMapping");
                });

            base.OnModelCreating(modelBuilder);
        }
    }
}