namespace ScoutsHonour.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddEventOrganiser : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Events", "OrganisedBy", c => c.String(maxLength: 50));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Events", "OrganisedBy");
        }
    }
}
