using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

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
            base.OnModelCreating(modelBuilder);
            
            // Sample code to changing mapping table names and fields
            //modelBuilder.Entity<Group>()
            //    .HasMany(x => x.Users)
            //    .WithMany();
                //.Map(x =>
                //{
                //    x.MapLeftKey("GroupId");
                //    x.MapRightKey("UserId");
                //    x.ToTable("GroupUserMapping");
                //});

            modelBuilder.Entity<IdentityUserLogin>().HasKey<string>(l => l.UserId);
            modelBuilder.Entity<IdentityRole>().HasKey<string>(r => r.Id);
            modelBuilder.Entity<IdentityUserRole>().HasKey(r => new { r.RoleId, r.UserId });

        }
    }
}