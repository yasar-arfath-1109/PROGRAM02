CREATE TABLE department
(
    DEPARTMENTID INT(5) PRIMARY KEY,
    DepartmentName VARCHAR(20) NOT NULL
);

CREATE TABLE Student
(
    StudentID INT(5) PRIMARY KEY,
    StudentName VARCHAR(20) NOT NULL,
    DOB DATE NULL,
    Gender VARCHAR(10) NOT NULL,
    DEPARTMENTID INT(5),

    CONSTRAINT UQ_StudentName UNIQUE(StudentName),

    CONSTRAINT FK_department
        FOREIGN KEY (DEPARTMENTID)
        REFERENCES department(DEPARTMENTID)
);

DESC Student;
