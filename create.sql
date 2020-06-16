use library;
create table tb_books
(
bookId int primary key not null,
bookName varchar(20) not null,
bookFeild varchar(20) not null 
);
create table tb_employees
(
employeeId int primary key not null,
employeeName varchar(50) not null,
phonenumber int not null,
salary int not null,
foreign key (jobId) references tb_jobs(jobId)
);
create table tb_pantry
(
pantryId int primary key not null,
foreign key (employeeId) references tb_employees(employeeId)
);
create table tb_jobs
(
jobId int primary key not null,
jobName varchar(50) not null 
);
create  table tb_borrowedbooks
(
foreign key (bookId) references tb_books(bookId),
foreign key (pantryId) references tb_pantry(pantryId),
foreign key (employeeId) references tb_employees(employeeId),
foreign key (studentId) references tb_students(studentId)
);
create table tb_students
(
studentId int primary key not null,
studentName varchar(50) not null,
phonenumber bigint not null,
address varchar(50) not null
);