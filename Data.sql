use [AdminTest]
Insert Into departments (title) Values ('HR'), ('Mgmt'),('IT')
Go
Insert Into employees (first_name,last_name,department_id) 
	VALUES
		('kosay','Bayda',3)	,	
		('Baraa','Bayda',2),
		('Reda','Bayda',1)
GO
INSERT INTO assetTypes (title)
	VALUES
		('Laptop'),('Mobile')
GO
INSERT INTO assets (asset_name,asset_type_id)
	VALUES
		('A1',1),
		('FF',1),
		('S2',2),
		('S3',2)
GO
UPDATE assets Set employee_id=1 where asset_id=1
GO
UPDATE assets Set employee_id=2 where asset_id=2
GO
UPDATE assets Set employee_id=2 where asset_id=3
GO