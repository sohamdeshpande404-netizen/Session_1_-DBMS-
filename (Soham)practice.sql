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

-- Attempt 2 (Failed: missing CHAR data type)
create table enrollment(
    roll_no int,
    course_id int,
    semester int check(semester between 1 and 8),
    grade(2),
    primary key (roll_no, course_id , semester),
    foreign key (roll_no) references student(roll_no),
    foreign key (course_id) references course(course_id)
);

-- Attempt 3 (Failed: ERROR 1824 - Table 'student' does not exist)
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

-- Attempt 3 (Failed: Typo "show table")
show table;

-- Attempt 4 (Success)
show tables;

-- Create Enrollment Table (Success)
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

-- Insert first student record
insert into student values (101, 'ajinkya', 'ajinkya@gmail', '6546564645', 1);

-- Insert second student record (retried after broken multiline quote string error)
insert into student values (102, 'shivtej', 'shivtej@gmail.com', 513248534, 2);

-- Insert values into course table
insert into course values (501, 'DBMS', 1), (502, 'circuits', 2);

-- Insert values into enrollment table
insert into enrollment values (101, 501, 3, 'A');

insert into enrollment values (101, 502, 3, 'B');
