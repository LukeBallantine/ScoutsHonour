using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace ScoutsHonour.Models
{
    public class ScoutsHonourDbContext : IdentityDbContext<ApplicationUser>
    {
        public ScoutsHonourDbContext() : base("name=DefaultConnection", throwIfV1Schema: false)
        { }

        public static ScoutsHonourDbContext Create()
        {
            return new ScoutsHonourDbContext();
        }

        public DbSet<Organisation> Organisations { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Member> Members { get; set; }
        public DbSet<Event> Events { get; set; }
        public DbSet<Goal> Goals { get; set; }

        //public DbSet<ApplicationUser> ApplicationUsers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            //modelBuilder.Entity<Event>()
            //    .HasMany(m => m.Members)
            //    .WithMany();
            //    //.WillCascadeOnDelete(false);

            //modelBuilder.Entity<Member>()
            //    .HasMany(e => e.Events)
            //    .WithMany();
            //    //.WillCascadeOnDelete(false);

            //modelBuilder.Entity<Event>()
            //    .HasMany(e => e.Goals)
            //    .WithRequired()
            //    .WillCascadeOnDelete(false);

            //modelBuilder.Entity<Goal>()
            //    .HasMany(g => g.Events)
            //    .WithRequired()
            //    .WillCascadeOnDelete(false);

            //modelBuilder.Entity<Member>()
            //    .HasRequired(m => m.Group)
            //    .WithRequiredDependent()
            //    .WillCascadeOnDelete(false);

            //modelBuilder.Entity<Group>()
            //    .HasMany(m => m.Members)
            //    .WithRequired()
            //    .WillCascadeOnDelete(false);

            // setup relationships for link table with additional data
            modelBuilder.Entity<MemberGoal>()
                .HasKey(x => new { x.MemberId, x.GoalId });

            modelBuilder.Entity<Member>()
                .HasMany(x => x.MemberGoals)
                .WithRequired()
                .HasForeignKey(x => x.MemberId);

            modelBuilder.Entity<Goal>()
                .HasMany(x => x.MemberGoals)
                .WithRequired()
                .HasForeignKey(x => x.GoalId);  

        }
    }
}