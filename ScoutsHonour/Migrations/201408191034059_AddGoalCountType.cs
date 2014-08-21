namespace ScoutsHonour.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddGoalCountType : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Goals", "CountType", c => c.Int());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Goals", "CountType");
        }
    }
}
