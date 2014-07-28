-- Use this in SQL Azure (if Update-Database doesn't work)

INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Admin')
INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Leader')
INSERT INTO [dbo].[AspNetRoles] ([Id],[Name]) VALUES (NEWID(),'Parent')
GO

INSERT INTO [dbo].[Organisations] ([Title], [Description]) VALUES ('Cubs NZ', '')
GO

DECLARE @lastId int 
SET @lastId = SCOPE_IDENTITY;

INSERT INTO [dbo].[Groups] ([Title],[GroupCodeParent],[GroupCodeLeader],[Organisation_Id])
     VALUES ('Glendowie Cubs Tuesday', 'glencubtue', 'glencubtuel', @lastId) 
INSERT INTO [dbo].[Groups] ([Title],[GroupCodeParent],[GroupCodeLeader],[Organisation_Id])
     VALUES ('Glendowie Cubs Wednesday', 'glencubwed', 'glencubwedl', @lastId) 