-- This can be run in SQL Azure (only if Update-Database doesn't work)

INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Admin')
INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Leader')
INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Parent')
GO

INSERT INTO [dbo].[Organisations] ([Title], [Description]) VALUES ('Cubs NZ', '')
GO

DECLARE @lastId int 
SET @lastId = SCOPE_IDENTITY();

INSERT INTO [dbo].[Groups] ([Title],[GroupCodeParent],[GroupCodeLeader],[Organisation_Id])
     VALUES ('Demo Cubs Tuesday', '111111', '222222', @lastId) 
INSERT INTO [dbo].[Groups] ([Title],[GroupCodeParent],[GroupCodeLeader],[Organisation_Id])
     VALUES ('Demo Cubs Wednesday', '333333', '444444', @lastId) 
