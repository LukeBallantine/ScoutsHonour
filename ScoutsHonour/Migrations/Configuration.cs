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
    using System.IO;
    using System.Linq;
    using System.Threading;
    using System.Web;

    internal sealed class Configuration : DbMigrationsConfiguration<ScoutsHonour.Models.ScoutsHonourDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            //  This method will be called after migrating to the latest version.
            SeedDb(context);
        }

        public void SeedDb(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            AddRoles(context);
            AddCubsOrgAndGroups(context);

            context.SaveChanges();

            // Path to SQL files is different in Azure
            string scriptPath = null;
            if (Directory.Exists(AppDomain.CurrentDomain.BaseDirectory + "/App_Data/SqlScripts/"))
                scriptPath = AppDomain.CurrentDomain.BaseDirectory + "/App_Data/SqlScripts/";
            else
                scriptPath = AppDomain.CurrentDomain.BaseDirectory + "/../App_Data/SqlScripts/";

            context.Database.ExecuteSqlCommand(File.ReadAllText(scriptPath + "SeedGoals.sql"));
            context.SaveChanges();

            context.Database.ExecuteSqlCommand(File.ReadAllText(scriptPath + "SeedMembers.sql"));
            context.SaveChanges();

            base.Seed(context);
        }

        void AddRoles(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            IdentityResult ir;
            var rm = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));

            ir = rm.Create(new IdentityRole(Role.Admin.ToString()));
            ir = rm.Create(new IdentityRole(Role.Leader.ToString()));
            ir = rm.Create(new IdentityRole(Role.Parent.ToString()));
        }


        void AddCubsOrgAndGroups(ScoutsHonour.Models.ScoutsHonourDbContext context)
        {
            context.Organisations.AddOrUpdate(r => r.Title,
                new Organisation
                {
                    Title = "Cubs New Zealand",
                    Groups = new List<Group> {
                                new Group { 
                                    Title = "Cubs Demo Wednesday Night", 
                                    GroupCodeParent = "111111",
                                    GroupCodeLeader = "222222"
                                },
                                new Group {
                                    Title = "Cubs Demo Tuesday Night", 
                                    GroupCodeParent = "333333",
                                    GroupCodeLeader = "444444"
                                }
                            }
                });

        }

    }
}
