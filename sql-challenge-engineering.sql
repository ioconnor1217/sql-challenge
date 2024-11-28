DROP TABLE	DeptManager;
DROP TABLE	DeptEmployee;
DROP TABLE  Departments;
DROP TABLE	Salaries;
DROP TABLE	Employees;
DROP TABLE	Titles;

CREATE TABLE Departments (
    DeptNo char(4)   NOT NULL PRIMARY KEY,
    DeptName varchar(50)   NOT NULL
);

CREATE TABLE Titles (
    TitleID char(5)   NOT NULL PRIMARY KEY,
    Title varchar(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeNo int   NOT NULL PRIMARY KEY,
    EmployeeTitleID char(5)   NOT NULL,
    EmployeeBirthDate date   NOT NULL,
    EmployeeFirstName varchar(50)   NOT NULL,
    EmployeeLastName varchar(50)   NOT NULL,
    EmployeeSex char(1)   NOT NULL,
    EmployeeHireDate date   NOT NULL,
	CONSTRAINT fk_Titles FOREIGN KEY(EmployeeTitleID)
	REFERENCES Titles (TitleID)
);

CREATE TABLE DeptManager (
    DeptNo char(4)   NOT NULL,
	EmployeeNo int   NOT NULL,
	CONSTRAINT fk_Departments FOREIGN KEY(DeptNo)
	REFERENCES Departments (DeptNo),
	CONSTRAINT fk_Employees FOREIGN KEY(EmployeeNo)
	REFERENCES Employees (EmployeeNo)
);

CREATE TABLE DeptEmployee (
    EmployeeNo int   NOT NULL,
    DeptNo char(4)  NOT NULL,
	CONSTRAINT fk_Employees FOREIGN KEY(EmployeeNo)
	REFERENCES Employees (EmployeeNo),
	CONSTRAINT fk_Departments FOREIGN KEY(DeptNo)
	REFERENCES Departments (DeptNo)
);

CREATE TABLE Salaries (
    EmployeeNo int   NOT NULL,
    Salary int   NOT NULL,
	CONSTRAINT fk_Employees FOREIGN KEY(EmployeeNo)
	REFERENCES Employees (EmployeeNo)
);