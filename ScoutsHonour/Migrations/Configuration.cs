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

            context.Organisations.AddOrUpdate(r => r.Title,
                new Organisation
                {
                    Title = "Cubs New Zealand",
                    Groups = new List<Group> {
                        new Group { Title = "Glendowie Cubs Wednesday Night", GroupCode = "GLENCUBWED" },
                        new Group { Title = "Glendowie Cubs Tuesday Night", GroupCode = "GLENCUBTUE" }
                    }
                });

            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
