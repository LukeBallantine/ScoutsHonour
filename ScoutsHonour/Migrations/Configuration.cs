namespace ScoutsHonour.Migrations
{
    using ScoutsHonour.Models;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<ScoutsHonour.Models.ScoutsHonourDb>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(ScoutsHonour.Models.ScoutsHonourDb context)
        {
            //  This method will be called after migrating to the latest version.

            context.Organisations.AddOrUpdate(r => r.Title,
                new Organisation
                {
                    Title = "Cubs New Zealand",
                    Groups = new List<Group> {
                        new Group { 
                            Title = "Glendowie Cubs Wednesday Night", 
                            GroupCode = "GLENCUBWED",
                            Users = new List<User> {
                                new User {
                                    FirstName = "Ellis",
                                    LastName = "Ballantine",
                                    Email = "lukesinbox@gmail.com",
                                    SixColour = "White",
                                    UserTypeId = 1
                                },
                                new User {
                                    FirstName = "Cameron",
                                    LastName = "Adams",
                                    Email = "gregadams22@gmail.com",
                                    SixColour = "Yellow",
                                    UserTypeId = 1
                                },
                                new User {
                                    FirstName = "Micah",
                                    LastName = "Fitton-Higgins",
                                    Email = "clivehiggins@gmail.com",
                                    SixColour = "Gray",
                                    UserTypeId = 1
                                },
                                new User {
                                    FirstName = "Fraser",
                                    LastName = "Lynch",
                                    Email = "gerrylynch@mars.co.nz",
                                    SixColour = "White",
                                    UserTypeId = 1
                                }
                            }
                        },
                        new Group { Title = "Glendowie Cubs Tuesday Night", GroupCode = "GLENCUBTUE" }
                    }
                });

            context.Goals.AddOrUpdate(r => r.Title,
                new Goal
                {
                    //ParentGoalId = null,
                    Title = "Bronze Cornerstone",
                    Level = 0,
                    Goals = new List<Goal> {
                        new Goal {
                            //ParentGoalId = 1,
                            Title = "My Community: Part 1", 
                            Level = 1,
                            ChildRequirementCount = 2,
                            Goals = new List<Goal> {
                                new Goal {
                                    //ParentGoalId = 2,
                                    Title = "Visit a marae", 
                                    Level = 3
                                    },
                                new Goal {
                                    //ParentGoalId = 2,
                                    Title = "Attend an Anzac day ceremony", 
                                    Level = 3
                                    }
                            }
                        },
                        new Goal {
                            //ParentGoalId = 1,
                            Title = "My Community: Part 2", 
                            Level = 1,
                            ChildRequirementCount = 2,
                            Goals = new List<Goal> {
                                new Goal {
                                    //ParentGoalId = 5,
                                    Title = "Visit a police station", 
                                    Level = 3
                                    },
                                new Goal {
                                    //ParentGoalId = 5,
                                    Title = "Draw a map",
                                    Description = "Draw a map of the route from your home to your school.",
                                    Level = 3
                                    },
                                new Goal {
                                    //ParentGoalId = 5,
                                    Title = "Paint a mural",
                                    Level = 3
                                }
                            }
                        }
                    }
                });

        }
    }
}
