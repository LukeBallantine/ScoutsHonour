namespace ScoutsHonour.Models
{
    using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

    public class AboutModel : DbContext
    {
        // Your context has been configured to use a 'AboutModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'ScoutsHonour.Models.AboutModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'AboutModel' 
        // connection string in the application configuration file.
        public AboutModel()
            : base("name=AboutModel")
        {
        }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }

    public class User
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string UserType { get; set; }
        public string SixColour { get; set; }
        public DateTime DOB { get; set; }
        public int GroupId { get; set; }
    }

    //public class Group
    //{
    //    public int GroupId { get; set; }
    //    public string Title { get; set; }
    //    public string GroupCode { get; set; }
    //    public int OrganisationId { get; set; }
    //    public List<User> Users;
    //}

    //public class Organisation
    //{
    //    public int OrganisationId { get; set; }
    //    public string Title { get; set; }
    //    public string Description { get; set; }
    //    public List<Group> Groups;
    //}

    public class Goal
    {
        public int GoalId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int Level { get; set; }
        public int? ChildRequirementCount { get; set; }
        public List<Goal> Goals;
    }

    public class Event
    {
        public int EventId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime EventDate { get; set; }
        public List<User> Users;
        public List<Goal> Goals;
    }

    public class EventGoalItem
    {
        public int EventGoalItemID { get; set; }
        public int EventId { get; set; }
        public int GoalItemId { get; set; }
    }



}