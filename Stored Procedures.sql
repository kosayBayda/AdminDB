USE [AdminTest];
GO
CREATE PROCEDURE getDepartments
AS
Begin
SELECT 
	*
	From
		dbo.departments 
END;
Go
CREATE PROCEDURE insertDepartment
@title varchar(50)
AS
Begin
INSERT INTO 
	dbo.departments 
		(title)
		values 
		(@title);
END;
Go

CREATE PROCEDURE getEmployees
AS
Begin
SELECT 
	e.employee_id,
	e.department_id,
	e.first_name,
	e.last_name,
	e.created_at,
	d.title
	From
		dbo.employees e
	INNER JOIN
		dbo.departments d
	on
		e.department_id = d.department_id
	order by
		e.created_at
END;
GO
CREATE PROCEDURE getAssetTypes
AS
Begin
SELECT 
	*
	From
		dbo.assetTypes 
END;
Go
CREATE PROCEDURE getAssets
AS
Begin
SELECT 
		a.asset_id,
		a.asset_name,
		t.title
	From
		dbo.assets a
	INNER JOIN
		dbo.assetTypes t
	on
		a.asset_type_id = t.asset_type_id
	order by
		a.asset_id
END;
GO
CREATE PROCEDURE getEmployeesAssets
AS
Begin
Select 
	e.employee_id,
	e.first_name,
	e.last_name,
	a.asset_id,
	a.asset_name,
	aty.title
From
	dbo.employees e
	INNER JOIN dbo.assets a ON a.employee_id = e.employee_id
	INNER JOIN dbo.assetTypes aty ON a.asset_type_id = aty.asset_type_id
Order By
	e.first_name ,e.last_name
END;
GO
CREATE PROCEDURE updateDepartment
@id int,
@title varchar(50)
AS
Begin
Update  
	dbo.departments 
	set title=@title
		where 
	department_id=@id
END;
Go
CREATE PROCEDURE getDepartmentById
@id int
AS
Begin
select  
	*
from
	departments
		where 
	department_id=@id
END;
Go
CREATE PROCEDURE deleteDepartmentById
@id int
AS
Begin
DELETE  
from
	departments
		where 
	department_id=@id
END;
Go
CREATE PROCEDURE InsertEmployee
@firstName varchar(50),
@lastName varchar(50),
@departmentId int
AS
Begin
Insert Into
	employees
	(first_name,last_name,department_id)
	Values
	(@firstName,@lastName,@departmentId);	
END;
Go