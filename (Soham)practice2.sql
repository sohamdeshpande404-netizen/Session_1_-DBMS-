CREATE DATABASE college_demo;

USE college_demo;

CREATE TABLE department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE course(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);

CREATE TABLE enrollment(
    roll_no INT,
    course_id INT,
    semester INT CHECK (semester BETWEEN 1 AND 8),
    grade CHAR(2),
    roll_no INT,
);
CREATE TABLE enrollment(
    roll_no INT,
    course_id INT,
    semester INT CHECK (semester BETWEEN 1 AND 8),
    grade CHAR(2),
    PRIMARY KEY (roll_no, course_id, semester),
    FOREIGN KEY(roll_no) REFERENCES student(roll_no),
    FOREIGN KEY(course_id) REFERENCES course(course_id)
);

show tables;

desc course
CREATE TABLE enrollment(
    roll_no INT,
    course_id INT,
    semester INT CHECK(semester between 1 and 8),
    grade(2),
    primary key (roll_no, course_id,semester),
    foreign key (roll_no) references student(roll_no),
    foreign key (course_id) references course(course_id)
);

create table enrollment(
    roll_no int,
    course_id int,
    semester int check(semester between 1 and 8),
    grade(2),
    primary key (roll_no, course_id , semester),
    foreign key (roll_no) references student(roll_no),
    foreign key (course_id) references course(course_id)
);

create table enrollment(
    roll_no int,
    course_id int,
    semester int check(semester between 1 and 8),
    grade char(2),
    primary key (roll_no, course_id , semester),
    foreign key (roll_no) references student(roll_no),
    foreign key (course_id) references course(course_id)
);

show tables;
create table student(
    roll_no int primary key,
    name varchar(50) not null,
    email varchar(50) unique,
    aadhar_no varchar(12) unique,
    dept_id int,
    foreign key (dept_id) refrences department(dept_id)
);

-- Attempt 2 (Success)
create table student(
    roll_no int primary key,
    name varchar(50) not null,
    email varchar(50) unique,
    aadhar_no varchar(12) unique,
    dept_id int,
    foreign key (dept_id) references department(dept_id)
);


show table;

show tables;

create table enrollment(
    roll_no int,
    course_id int,
    semester int check(semester between 1 and 8),
    grade char(2),
    primary key (roll_no, course_id, semester),
    foreign key (roll_no) references student(roll_no),
    foreign key (course_id) references course(course_id)
);
insert into department values (1, 'computer science'), (2, 'Electronics');

insert into student values (101, 'ajinkya', 'ajinkya@gmail', '6546564645', 1);


insert into student values (102, 'soham', 'sohamj@gmail.com', 513248534, 2);


insert into course values (501, 'DBMS', 1), (502, 'circuits', 2);


insert into enrollment values (101, 501, 3, 'A');

insert into enrollment values (101, 502, 3, 'B');
