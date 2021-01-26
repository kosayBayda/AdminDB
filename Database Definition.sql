CREATE DATABASE AdminTest;
Go
CREATE TABLE AdminTest.dbo.departments(
	department_id INT PRiMARY KEY IDENTITY (1, 1),
	title VARCHAR(50) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
);
GO
CREATE TABLE AdminTest.dbo.employees(
	employee_id INT PRIMARY KEY IDENTITY (1,1),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	department_id INT NOT NULL,
	FOREIGN KEY (department_id) REFERENCES dbo.departments (department_id)
);
GO
CREATE TABLE AdminTest.dbo.assetTypes(
	asset_type_id INT PRIMARY KEY IDENTITY (1,1),
	title varchar(50) NOT NULL
);
GO
CREATE TABLE AdminTest.dbo.assets(
	asset_id INT PRIMARY KEY IDENTITY (1,1),
	asset_name VARCHAR(50) NOT NULL,
	asset_type_id INT NOT NULL,
	employee_id INT --NULLABLE
	FOREIGN KEY (asset_type_id) REFERENCES dbo.assetTypes (asset_type_id)
);
GO