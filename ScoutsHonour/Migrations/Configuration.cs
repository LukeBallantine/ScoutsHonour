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
                                    SixColour = "White"
                                },
                                new User {
                                    FirstName = "Fraser",
                                    LastName = "Lynch",
                                    Email = "gerrylynch@mars.co.nz",
                                    SixColour = "White"
                                }
                            }
                        },
                        new Group { Title = "Glendowie Cubs Tuesday Night", GroupCode = "GLENCUBTUE" }
                    }
                });

            context.Goals.AddOrUpdate(r => r.Title,
                new Goal
                {
                    Title = "Bronze Cornerstone",
                    Level = 0,
                    Goals = new List<Goal> {
                        new Goal {
                            Title = "My Community: Part 1", 
                            Level = 1,
                            ChildRequirementCount = 2,
                            Goals = new List<Goal> {
                                new Goal {
                                    Title = "Visit a marae", 
                                    Level = 3
                                    },
                                new Goal {
                                    Title = "Attend an Anzac day ceremony", 
                                    Level = 3
                                    }
                            }
                        },
                        new Goal {
                            Title = "My Community: Part 2", 
                            Level = 1,
                            ChildRequirementCount = 2,
                            Goals = new List<Goal> {
                                new Goal {
                                    Title = "Visit a police station", 
                                    Level = 3
                                    },
                                new Goal {
                                    Title = "Draw a map",
                                    Description = "Draw a map of the route from your home to your school.",
                                    Level = 3
                                    },
                                new Goal {
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
