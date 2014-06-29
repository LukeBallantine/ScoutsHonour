﻿using System;
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
        public ScoutsHonourDbContext() : base("name=DefaultConnection")
        { }

        public static ScoutsHonourDbContext Create()
        {
            return new ScoutsHonourDbContext();
        }

        public DbSet<Organisation> Organisations { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Event> Events { get; set; }
        public DbSet<Goal> Goals { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            
            modelBuilder.Entity<ApplicationUser>()
                .HasMany(x => x.Users)
                .WithMany()
                .Map(x =>
                {
                    x.ToTable("AspNetUserUsers");
                    x.MapLeftKey("AspNetUser_Id");
                    x.MapRightKey("User_Id");
                });

            modelBuilder.Entity<Group>()
                .HasMany(x => x.ApplicationUsers)
                .WithMany()
                .Map(x =>
                {
                    x.ToTable("GroupAspNetUsers");
                    x.MapRightKey("Group_Id"); 
                    x.MapLeftKey("AspNetUser_Id");
                });

            #region Unused Remapping

            //modelBuilder.Entity<IdentityUser>().ToTable("Users");//.Property(p => p.Id).HasColumnName("UserId"); ;
            //modelBuilder.Entity<ApplicationUser>().ToTable("Users");//.Property(p => p.Id).HasColumnName("UserId");
            //modelBuilder.Entity<IdentityUserRole>().ToTable("UserRoles");
            //modelBuilder.Entity<IdentityUserLogin>().ToTable("UserLogins");
            //modelBuilder.Entity<IdentityUserClaim>().ToTable("UserClaims");
            //modelBuilder.Entity<IdentityRole>().ToTable("Roles");

            //modelBuilder.Entity<IdentityUserLogin>().HasKey<string>(l => l.UserId);
            //modelBuilder.Entity<IdentityRole>().HasKey<string>(r => r.Id);
            //modelBuilder.Entity<IdentityUserRole>().HasKey(r => new { r.RoleId, r.UserId });

            #endregion

        }
    }
}