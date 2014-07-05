namespace ScoutsHonour.Migrations
{
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using ScoutsHonour.Enums;
    using ScoutsHonour.Models;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<ScoutsHonour.Models.ScoutsHonourDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            AddRoles(context); 
            AddCubsOrgAndGroups(context);
            AddCubGoals(context);

        }

        void AddRoles(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            IdentityResult ir;
            var rm = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));

            ir = rm.Create(new IdentityRole(Role.Admin.ToString()));
            ir = rm.Create(new IdentityRole(Role.Leader.ToString()));
            ir = rm.Create(new IdentityRole(Role.Parent.ToString()));

            //var um = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            //var user = new ApplicationUser()
            //{
            //    UserName = "lukesinbox@contoso.com",
            //};
            //ir = um.Create(user, "P_assw0rd1");
            //if (ir.Succeeded == false)
            //    return ir.Succeeded;
            //ir = um.AddToRole(user.Id, "canEdit");
            //return ir.Succeeded;
        }


        void AddCubsOrgAndGroups(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            context.Organisations.AddOrUpdate(r => r.Title,
                new Organisation
                {
                    Title = "Cubs New Zealand",
                    Groups = new List<Group> {
                                new Group { 
                                    Title = "Glendowie Cubs Wednesday Night", 
                                    GroupCodeParent = "GLENCUBWED",
                                    GroupCodeLeader = "GLENCUBWEDL",
                                    Members = new List<Member> {
                                        new Member {
                                            FirstName = "Ellis",
                                            LastName = "Ballantine",
                                            Email = "lukesinbox@gmail.com",
                                            SixColour = "White",
                                            UserTypeId = 1
                                        },
                                        new Member {
                                            FirstName = "Cameron",
                                            LastName = "Adams",
                                            Email = "gregadams22@gmail.com",
                                            SixColour = "Yellow",
                                            UserTypeId = 1
                                        },
                                        new Member {
                                            FirstName = "Micah",
                                            LastName = "Fitton-Higgins",
                                            Email = "clivehiggins@gmail.com",
                                            SixColour = "Gray",
                                            UserTypeId = 1
                                        },
                                        new Member {
                                            FirstName = "Fraser",
                                            LastName = "Lynch",
                                            Email = "gerrylynch@mars.co.nz",
                                            SixColour = "White",
                                            UserTypeId = 1
                                        }
                                    }
                                },
                                new Group {
                                    Title = "Glendowie Cubs Tuesday Night", 
                                    GroupCodeParent = "GLENCUBTUE",
                                    GroupCodeLeader = "GLENCUBTUEL"
                                }
                            }
                });

        }

        void AddCubGoals(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
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
