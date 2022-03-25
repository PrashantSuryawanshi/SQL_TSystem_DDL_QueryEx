create database TsystemDB

create table Students
(
StudentID int not null,
Name varchar(50) not null,
Age int,
City varchar(20)
constraint PK_Students primary key(StudentID)--**Primary key Constraint
);
select*from Students;

SELECT *
FROM Students
ORDER BY Name ASC;--**use of ORDER BY

--**Not Null Constrain

alter table Students
alter column age int not null;

--**unique Constrain
alter table Students
add unique(StudentID);

create table Result
(
StudRollNo int,
StudentID int not null,
constraint PK_Student primary key(StudentID),
constraint FK_Student foreign key(StudentID) references Students(StudentID)--foreign key
);
select*from Result

alter table Result
add StudMarks int not null;--**Add Column

--**Check Constraint:
alter table Students
add constraint chk_Age check(Age>=18);

--**Remove constraint 
alter table Students
drop constraint chk_Age;

--**default Constraint:
alter table Students
add constraint df_City default 'Pune' for City;
	
--**index Constraint
CREATE INDEX index1 ON Students;

drop index Students.index_Students;

--***Auto Increment Query:
create table Persons1
(
PersonID int identity(1,1), -- to auto increment 1- initial value , 1 - increment by 1
Name varchar(50) not null,
Age int,
City varchar(20) default 'Pune',
);
select*from Persons1
