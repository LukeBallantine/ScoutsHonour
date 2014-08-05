namespace ScoutsHonour.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class LimitcodesinGroupmodelto20chars : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Groups", "GroupCodeParent", c => c.String(maxLength: 20));
            AlterColumn("dbo.Groups", "GroupCodeLeader", c => c.String(maxLength: 20));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Groups", "GroupCodeLeader", c => c.String());
            AlterColumn("dbo.Groups", "GroupCodeParent", c => c.String());
        }
    }
}
