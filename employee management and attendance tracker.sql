create database employee_management;
use employee_management;

-- Departments Table
CREATE TABLE Departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

-- Roles Table
CREATE TABLE Roles (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    salary NUMERIC(10,2) NOT NULL
);

-- Employees Table
CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT REFERENCES Departments(dept_id),
    role_id INT REFERENCES Roles(role_id),
    date_of_joining DATE
);

-- Attendance Table
CREATE TABLE Attendance (
    att_id SERIAL PRIMARY KEY,
    emp_id INT REFERENCES Employees(emp_id),
    att_date DATE,
    in_time TIME,
    out_time TIME,
    status VARCHAR(20) DEFAULT 'Pending');


INSERT INTO Employees (emp_name, dept_id , role_id, date_of_joining) VALUES
('Keith Savage', 1, 2, '2025-07-08'),
('Matthew Morgan', 3, 1, '2025-07-08'),
('Margaret Christensen', 1, 3, '2025-11-10'),
('Adam Mcfarland', 2, 3, '2025-09-17'),
('Marie Lewis', 3, 1, '2025-02-04'),
('Jennifer Garcia DVM', 1, 2, '2023-04-25'),
('Melissa Potter', 3, 1, '2024-04-04'),
('Angela Thomas', 3, 2, '2024-11-15'),
('Cody Brown', 3, 3, '2022-11-22'),
('Erin Gutierrez', 2, 3, '2024-10-08'),
('Matthew Lloyd', 2, 2, '2023-04-09'),
('David Lamb', 1, 3, '2025-02-26'),
('Dana Moore', 1, 1, '2023-07-25'),
('Amy Long', 1, 2, '2024-06-17'),
('Joseph Johnson', 2, 1, '2025-02-23'),
('Holly Marks', 3, 1, '2024-03-11'),
('Meghan Smith', 1, 1, '2025-02-16'),
('Robert Page', 2, 1, '2024-03-05'),
('Jacqueline Perry', 3, 3, '2025-04-20'),
('Katrina Calderon', 3, 2, '2024-06-26'),
('Scott Martin', 3, 1, '2025-02-09'),
('Jean James', 3, 2, '2024-07-03'),
('Amber Wallace', 3, 2, '2024-02-15'),
('Megan Mccormick', 1, 1, '2024-09-25'),
('Lori Meyers', 1, 1, '2025-02-11'),
('Andrew Guzman', 2, 2, '2024-02-20'),
('Chelsea Hill', 1, 3, '2024-07-31'),
('Lisa Moss', 1, 3, '2022-07-17'),
('Barbara Chung', 2, 1, '2024-07-22'),
('Pamela Dixon', 1, 2, '2025-04-18'),
('Shelly Adams', 2, 1, '2025-01-21'),
('Veronica Pacheco', 1, 1, '2022-08-06'),
('Sylvia Hartman', 2, 2, '2024-01-31'),
('Anthony Woodward', 3, 3, '2023-12-14'),
('Jessica Bradford', 1, 2, '2023-02-24'),
('Albert Rosales', 1, 3, '2023-08-25'),
('Victoria Francis', 1, 3, '2024-10-04'),
('Jon Huang', 1, 3, '2024-04-22'),
('Stephanie Robertson', 3, 2, '2024-03-27'),
('Jeremy Johnson', 1, 1, '2024-06-10'),
('Veronica Smith', 2, 2, '2024-05-19'),
('Jeffrey Butler', 2, 1, '2023-01-25'),
('Tiffany Todd', 1, 1, '2023-05-08'),
('Stephen Simmons', 1, 1, '2025-06-04'),
('Alicia Griffin MD', 2, 1, '2024-03-03'),
('Rebecca Jenkins', 1, 1, '2025-02-21'),
('Blake Potter', 1, 3, '2025-05-16'),
('Stacie Pratt', 1, 3, '2024-07-30'),
('Stephanie Coleman', 2, 3, '2024-01-24'),
('Phillip Lewis', 1, 3, '2022-08-03'),
('Dawn Ortega', 2, 1, '2023-08-17'),
('Laura Collins', 2, 1, '2024-01-05'),
('Patrick Clayton', 2, 2, '2023-06-12'),
('Joseph Perez', 3, 3, '2024-01-16'),
('Amy Chavez', 2, 1, '2025-03-20'),
('Joseph Wells', 3, 2, '2024-01-30'),
('Michael Olson', 3, 1, '2022-10-14'),
('Matthew Martinez', 3, 3, '2024-01-24'),
('Matthew Miller', 1, 1, '2024-10-27'),
('Matthew Miller', 2, 3, '2024-12-02'),
('Phyllis Proctor', 1, 2, '2024-07-19'),
('Terry Lopez', 1, 2, '2024-03-22'),
('Mindy Moore', 3, 3, '2025-03-05'),
('Krista Pierce', 1, 1, '2023-06-24'),
('Michelle Brown', 1, 2, '2024-11-28'),
('Guy Callahan', 1, 1, '2024-07-24'),
('Elizabeth Brooks', 3, 1, '2025-01-31'),
('Diana Foley', 1, 2, '2023-01-25'),
('Tracy Conley', 3, 3, '2023-06-18'),
('Michael Hansen', 2, 3, '2022-11-15'),
('Pamela Ewing', 3, 1, '2024-03-21'),
('Robert Nelson', 3, 2, '2025-05-18'),
('Julian Armstrong', 3, 3, '2023-08-08'),
('Larry Chavez', 2, 3, '2022-09-21'),
('James Young', 1, 1, '2023-08-25'),
('Ashley Johnson', 3, 1, '2024-01-28'),
('Matthew Santos', 2, 1, '2025-07-07'),
('Mary Reese', 2, 2, '2022-12-15'),
('Andrew James', 3, 1, '2023-05-09'),
('Thomas Singleton', 3, 1, '2023-07-29'),
('Ryan Harrison', 1, 1, '2025-05-23'),
('Darren Anderson', 3, 3, '2023-09-16'),
('Emily Compton', 1, 2, '2023-10-29'),
('Johnny Williams', 1, 1, '2024-09-09'),
('Jeffery Alexander', 3, 3, '2023-05-21'),
('Deborah Fleming', 3, 3, '2023-09-10'),
('Tiffany Hansen', 1, 1, '2025-01-09'),
('Tyler Thompson', 3, 2, '2023-09-23'),
('Jacqueline Winters', 1, 1, '2022-12-21'),
('Kimberly Cabrera', 2, 1, '2022-10-28'),
('Nicole Thompson', 2, 3, '2025-01-30'),
('Natalie Brown', 2, 3, '2023-07-26'),
('Ryan Campbell', 3, 3, '2024-05-06'),
('Kenneth Carson', 3, 1, '2023-09-08'),
('Daniel Heath', 2, 3, '2023-05-21'),
('Jason Russell', 2, 3, '2025-06-01'),
('Thomas Cross', 2, 2, '2024-02-15'),
('Carol Jenkins', 1, 3, '2023-07-23'),
('Stephanie Kelly', 1, 3, '2023-09-11'),
('Mr. Theodore Walker', 2, 2, '2023-12-21'),
('Danielle Maynard', 3, 1, '2025-01-27'),
('Kaylee Cisneros MD', 2, 2, '2025-05-08'),
('Jacob Anderson', 3, 3, '2025-05-12'),
('Heidi Washington', 2, 2, '2022-07-29'),
('Thomas Hogan', 2, 2, '2023-03-15'),
('Misty Anderson', 1, 1, '2025-01-17'),
('Amanda Atkins', 3, 2, '2024-01-02'),
('Billy Clark', 2, 2, '2022-11-16'),
('Cesar Wise', 3, 1, '2024-09-08'),
('Anthony Burton', 1, 3, '2023-04-28'),
('Duane Evans', 1, 1, '2025-03-26'),
('Heather Mason', 2, 3, '2022-09-11'),
('Diana Stewart', 1, 1, '2024-08-31'),
('Faith Davis', 3, 1, '2025-01-27'),
('Martin Li', 2, 1, '2022-08-28'),
('Joshua Smith', 2, 3, '2023-01-26'),
('Kristen Murphy', 3, 1, '2024-03-18'),
('Mr. Gary Jones MD', 2, 1, '2025-01-17'),
('Wanda Stafford', 3, 2, '2023-10-29'),
('William Walker', 2, 3, '2024-04-05'),
('Seth Woods', 3, 2, '2023-11-08'),
('Cynthia Garcia', 1, 2, '2022-08-06'),
('Stephen Brown', 1, 2, '2023-08-27'),
('Jessica Cameron', 1, 3, '2024-04-02'),
('Maria Miller MD', 3, 1, '2022-11-06'),
('Donna Turner', 1, 3, '2024-06-15'),
('Mary Ponce', 1, 2, '2023-12-18'),
('Kimberly Gonzalez', 1, 1, '2022-10-15'),
('Joseph Wong', 1, 2, '2023-05-01'),
('Andrew Li', 3, 3, '2023-01-15'),
('Alexandria Daniel', 3, 3, '2023-09-22'),
('Savannah Petty', 1, 1, '2023-01-10'),
('Megan Williams', 2, 2, '2023-07-13'),
('Timothy Odom', 3, 3, '2025-02-09'),
('Madison Nunez', 3, 1, '2023-11-20'),
('Nicholas Tucker', 2, 2, '2022-07-29'),
('Jose Zavala', 3, 1, '2025-03-23'),
('Yvette Wise', 2, 2, '2023-02-08'),
('Kelli Arnold', 3, 3, '2023-11-30'),
('Julie Anderson', 1, 3, '2024-01-15'),
('Robin Patel', 1, 1, '2022-11-14'),
('Kenneth Obrien', 3, 3, '2022-12-24'),
('Michael Hickman', 1, 2, '2023-04-19'),
('Valerie Rush', 2, 3, '2022-12-30'),
('Heather Tyler', 2, 1, '2024-07-05'),
('Joseph Thomas', 3, 1, '2024-10-06'),
('Samantha Poole', 1, 3, '2024-12-02'),
('Omar Haney', 1, 2, '2023-03-21'),
('Joseph Garcia', 1, 3, '2025-01-16'),
('Vickie Henderson', 2, 1, '2024-07-23'),
('Allison Roy', 2, 2, '2022-08-31'),
('Gabriel Brown', 2, 3, '2024-09-29'),
('Michael Walters', 1, 2, '2022-08-02'),
('Richard Lopez', 2, 2, '2022-11-13'),
('Lawrence Manning DDS', 3, 1, '2024-03-31'),
('Pamela Jones', 1, 3, '2023-07-22'),
('Theresa Newman', 1, 1, '2022-08-31'),
('Terri Holder', 3, 2, '2025-05-27'),
('Brandi Meza', 1, 1, '2025-01-08'),
('Cody Stewart', 3, 1, '2024-06-10'),
('Hunter Blair', 3, 3, '2025-06-16'),
('Heidi Cox', 2, 3, '2023-12-30'),
('Jennifer Simmons', 1, 3, '2022-08-24'),
('Victoria Rich', 2, 3, '2023-12-17'),
('Jeffrey Bates', 3, 3, '2024-05-11'),
('Rebecca Oconnor', 3, 3, '2023-04-28'),
('Nicole Roberts', 2, 1, '2022-11-01'),
('Darrell Church', 2, 2, '2022-11-03'),
('Anthony Washington', 2, 1, '2023-08-18'),
('Charlotte Wolfe', 1, 3, '2023-12-12'),
('Corey Ward', 3, 3, '2023-04-27'),
('Joseph Moore', 2, 1, '2023-12-16'),
('Daniel Lee', 3, 3, '2022-08-13'),
('John Serrano', 1, 3, '2024-02-20'),
('Marc Peterson', 2, 1, '2023-09-30'),
('Keith Owen', 1, 3, '2023-11-23'),
('Kevin Graves', 3, 3, '2023-12-03'),
('Bradley Mccoy', 1, 2, '2024-05-17'),
('Christopher Gonzalez', 1, 3, '2023-03-23'),
('Stephanie Stone', 1, 1, '2023-04-20'),
('Jeffrey Roberson', 1, 2, '2025-04-14'),
('Matthew Smith', 3, 1, '2022-09-16'),
('Heather Jones', 1, 2, '2022-08-15'),
('Mary Yates', 3, 2, '2024-07-10'),
('Elizabeth White', 2, 1, '2024-12-21'),
('Jose Schmitt', 1, 3, '2023-06-18'),
('James Walker', 2, 2, '2022-10-25'),
('Ashley Patterson', 1, 3, '2024-12-12'),
('Mr. James Brown', 1, 1, '2023-05-21'),
('Joel Lopez', 1, 1, '2024-11-18'),
('Martin Lee', 2, 2, '2023-02-20'),
('John Villarreal', 3, 1, '2023-01-04'),
('Deborah Cochran', 1, 1, '2025-04-26'),
('Brandon Smith', 1, 3, '2023-01-05'),
('Stephen Mills', 2, 2, '2024-07-05'),
('Beth Powell', 1, 2, '2024-03-16'),
('Tammy Key', 3, 1, '2024-09-29'),
('Ana Johnson', 1, 3, '2025-07-07'),
('Alyssa Lawson', 3, 1, '2024-03-25'),
('Michael Duffy', 3, 2, '2025-03-09');


select * from employees;


INSERT INTO Attendance (emp_id, att_date, in_time, out_time, status) VALUES
(12, '2025-06-01', '09:05:00', '17:45:00', 'Present'),
(8, '2025-06-01', '09:48:00', '18:20:00', 'Late'),
(47, '2025-06-01', '10:25:00', '19:00:00', 'Absent'),
(5, '2025-06-02', '08:45:00', '17:30:00', 'Present'),
(20, '2025-06-02', '09:35:00', '18:10:00', 'Late'),
(39, '2025-06-02', '10:10:00', '18:50:00', 'Absent'),
(15, '2025-06-03', '08:55:00', '17:40:00', 'Present'),
(63, '2025-06-03', '09:55:00', '18:25:00', 'Late'),
(78, '2025-06-03', '10:20:00', '19:05:00', 'Absent'),
(102, '2025-06-04', '08:35:00', '17:25:00', 'Present'),
(19, '2025-06-04', '09:42:00', '18:18:00', 'Late'),
(134, '2025-06-04', '10:15:00', '18:55:00', 'Absent'),
(9, '2025-06-05', '08:59:00', '17:35:00', 'Present'),
(45, '2025-06-05', '09:50:00', '18:30:00', 'Late'),
(166, '2025-06-05', '10:18:00', '19:10:00', 'Absent'),
(3, '2025-06-06', '08:42:00', '17:22:00', 'Present'),
(26, '2025-06-06', '09:33:00', '18:02:00', 'Late'),
(111, '2025-06-06', '10:12:00', '18:59:00', 'Absent'),
(6, '2025-06-07', '09:10:00', '17:50:00', 'Present'),
(33, '2025-06-07', '09:55:00', '18:35:00', 'Late'),
(72, '2025-06-08', '08:58:00', '17:38:00', 'Present'),
(58, '2025-06-08', '09:40:00', '18:12:00', 'Late'),
(193, '2025-06-08', '10:28:00', '19:20:00', 'Absent'),
(84, '2025-06-09', '08:50:00', '17:45:00', 'Present'),
(14, '2025-06-09', '09:48:00', '18:33:00', 'Late'),
(177, '2025-06-09', '10:22:00', '19:00:00', 'Absent'),
(27, '2025-06-10', '09:12:00', '17:49:00', 'Present'),
(96, '2025-06-10', '09:54:00', '18:30:00', 'Late'),
(182, '2025-06-10', '10:30:00', '19:22:00', 'Absent'),
(41, '2025-06-11', '08:46:00', '17:35:00', 'Present'),
(109, '2025-06-11', '09:42:00', '18:25:00', 'Late'),
(155, '2025-06-11', '10:18:00', '19:15:00', 'Absent'),
(17, '2025-06-12', '08:40:00', '17:20:00', 'Present'),
(90, '2025-06-12', '09:58:00', '18:35:00', 'Late'),
(139, '2025-06-12', '10:10:00', '18:59:00', 'Absent'),
(23, '2025-06-13', '09:05:00', '17:55:00', 'Present'),
(67, '2025-06-13', '09:50:00', '18:45:00', 'Late'),
(121, '2025-06-13', '10:26:00', '19:30:00', 'Absent'),
(30, '2025-06-14', '08:37:00', '17:25:00', 'Present'),
(185, '2025-06-14', '09:42:00', '18:28:00', 'Late'),
(12, '2025-06-15', '08:55:00', '17:39:00', 'Present'),
(46, '2025-06-15', '09:41:00', '18:30:00', 'Late'),
(162, '2025-06-15', '10:14:00', '19:10:00', 'Absent'),
(7, '2025-06-16', '09:01:00', '17:42:00', 'Present'),
(55, '2025-06-16', '09:59:00', '18:30:00', 'Late'),
(124, '2025-06-16', '10:27:00', '19:20:00', 'Absent'),
(29, '2025-06-17', '08:47:00', '17:36:00', 'Present'),
(81, '2025-06-17', '09:53:00', '18:34:00', 'Late'),
(175, '2025-06-17', '10:19:00', '19:05:00', 'Absent'),
(18, '2025-06-18', '09:04:00', '17:58:00', 'Present'),
(63, '2025-06-18', '09:38:00', '18:27:00', 'Late'),
(158, '2025-06-18', '10:25:00', '19:15:00', 'Absent'),
(38, '2025-06-19', '08:43:00', '17:28:00', 'Present'),
(97, '2025-06-19', '09:34:00', '18:15:00', 'Late'),
(186, '2025-06-19', '10:20:00', '19:00:00', 'Absent'),
(21, '2025-06-20', '08:56:00', '17:33:00', 'Present'),
(51, '2025-06-20', '09:52:00', '18:40:00', 'Late'),
(190, '2025-06-20', '10:16:00', '19:10:00', 'Absent'),
(10, '2025-06-21', '08:59:00', '17:37:00', 'Present'),
(70, '2025-06-21', '09:47:00', '18:25:00', 'Late'),
(43, '2025-06-22', '08:50:00', '17:30:00', 'Present'),
(95, '2025-06-22', '09:45:00', '18:20:00', 'Late'),
(176, '2025-06-22', '10:12:00', '19:05:00', 'Absent'),
(35, '2025-06-23', '08:38:00', '17:15:00', 'Present'),
(88, '2025-06-23', '09:43:00', '18:22:00', 'Late'),
(123, '2025-06-23', '10:29:00', '19:18:00', 'Absent'),
(13, '2025-06-24', '08:41:00', '17:26:00', 'Present'),
(64, '2025-06-24', '09:50:00', '18:33:00', 'Late'),
(147, '2025-06-24', '10:25:00', '19:20:00', 'Absent'),
(40, '2025-06-25', '08:45:00', '17:29:00', 'Present'),
(92, '2025-06-25', '09:36:00', '18:18:00', 'Late'),
(133, '2025-06-25', '10:08:00', '19:00:00', 'Absent'),
(24, '2025-06-26', '09:00:00', '17:45:00', 'Present'),
(66, '2025-06-26', '09:49:00', '18:38:00', 'Late'),
(174, '2025-06-26', '10:14:00', '19:05:00', 'Absent'),
(5, '2025-06-27', '08:53:00', '17:32:00', 'Present'),
(73, '2025-06-27', '09:55:00', '18:29:00', 'Late'),
(194, '2025-06-27', '10:26:00', '19:19:00', 'Absent'),
(16, '2025-06-28', '08:39:00', '17:20:00', 'Present'),
(60, '2025-06-28', '09:42:00', '18:25:00', 'Late'),
(165, '2025-06-28', '10:20:00', '19:10:00', 'Absent'),
(31, '2025-06-29', '08:57:00', '17:40:00', 'Present'),
(85, '2025-06-29', '09:46:00', '18:34:00', 'Late'),
(150, '2025-06-29', '10:11:00', '19:08:00', 'Absent'),
(11, '2025-06-30', '08:36:00', '17:26:00', 'Present'),
(59, '2025-06-30', '09:37:00', '18:19:00', 'Late'),
(187, '2025-06-30', '10:30:00', '19:15:00', 'Absent'),
(22, '2025-07-01', '08:52:00', '17:35:00', 'Present'),
(76, '2025-07-01', '09:43:00', '18:30:00', 'Late'),
(131, '2025-07-01', '10:16:00', '19:05:00', 'Absent'),
(6, '2025-07-02', '09:01:00', '17:49:00', 'Present'),
(48, '2025-07-02', '09:59:00', '18:40:00', 'Late'),
(198, '2025-07-02', '10:26:00', '19:12:00', 'Absent'),
(19, '2025-07-03', '08:47:00', '17:28:00', 'Present'),
(93, '2025-07-03', '09:55:00', '18:32:00', 'Late'),
(142, '2025-07-03', '10:21:00', '19:10:00', 'Absent'),
(37, '2025-07-04', '08:42:00', '17:24:00', 'Present'),
(80, '2025-07-04', '09:34:00', '18:15:00', 'Late'),
(173, '2025-07-04', '10:11:00', '19:00:00', 'Absent'),
(28, '2025-07-05', '08:50:00', '17:30:00', 'Present'),
(65, '2025-07-05', '09:40:00', '18:18:00', 'Late'),
(170, '2025-07-05', '10:29:00', '19:30:00', 'Absent'),
(34, '2025-07-06', '08:44:00', '17:25:00', 'Present'),
(91, '2025-07-06', '09:37:00', '18:22:00', 'Late'),
(188, '2025-07-06', '10:17:00', '19:10:00', 'Absent'),
(36, '2025-07-07', '08:39:00', '17:23:00', 'Present'),
(86, '2025-07-07', '09:58:00', '18:37:00', 'Late'),
(119, '2025-07-07', '10:14:00', '19:05:00', 'Absent'),
(2, '2025-07-08', '08:53:00', '17:35:00', 'Present'),
(50, '2025-07-08', '09:49:00', '18:28:00', 'Late'),
(160, '2025-07-08', '10:25:00', '19:18:00', 'Absent'),
(25, '2025-07-09', '08:41:00', '17:26:00', 'Present'),
(74, '2025-07-09', '09:38:00', '18:19:00', 'Late'),
(189, '2025-07-09', '10:30:00', '19:20:00', 'Absent'),
(1, '2025-07-10', '08:45:00', '17:29:00', 'Present'),
(62, '2025-07-10', '09:36:00', '18:21:00', 'Late'),
(132, '2025-07-10', '10:15:00', '19:00:00', 'Absent'),
(32, '2025-07-11', '09:00:00', '17:48:00', 'Present'),
(78, '2025-07-11', '09:42:00', '18:33:00', 'Late'),
(145, '2025-07-11', '10:22:00', '19:10:00', 'Absent'),
(4, '2025-07-12', '08:46:00', '17:27:00', 'Present'),
(57, '2025-07-12', '09:55:00', '18:42:00', 'Late'),
(200, '2025-07-12', '10:10:00', '19:00:00', 'Absent'),
(44, '2025-07-13', '08:51:00', '17:30:00', 'Present'),
(98, '2025-07-13', '09:44:00', '18:18:00', 'Late'),
(141, '2025-07-13', '10:16:00', '19:15:00', 'Absent'),
(20, '2025-07-14', '08:39:00', '17:25:00', 'Present'),
(71, '2025-07-14', '09:52:00', '18:35:00', 'Late'),
(183, '2025-07-14', '10:19:00', '19:05:00', 'Absent'),
(33, '2025-07-15', '08:42:00', '17:20:00', 'Present'),
(61, '2025-07-15', '09:35:00', '18:10:00', 'Late'),
(137, '2025-07-15', '10:28:00', '19:22:00', 'Absent'),
(8, '2025-07-16', '09:01:00', '17:55:00', 'Present'),
(68, '2025-07-16', '09:48:00', '18:32:00', 'Late'),
(156, '2025-07-16', '10:13:00', '19:00:00', 'Absent'),
(26, '2025-07-17', '08:49:00', '17:31:00', 'Present'),
(75, '2025-07-17', '09:36:00', '18:20:00', 'Late'),
(130, '2025-07-17', '10:25:00', '19:19:00', 'Absent'),
(39, '2025-07-18', '08:55:00', '17:42:00', 'Present'),
(89, '2025-07-18', '09:50:00', '18:28:00', 'Late'),
(172, '2025-07-18', '10:11:00', '19:04:00', 'Absent'),
(42, '2025-07-19', '08:44:00', '17:30:00', 'Present'),
(83, '2025-07-19', '09:48:00', '18:25:00', 'Late'),
(163, '2025-07-19', '10:18:00', '19:10:00', 'Absent'),
(49, '2025-07-20', '08:39:00', '17:20:00', 'Present'),
(99, '2025-07-20', '09:43:00', '18:22:00', 'Late'),
(125, '2025-07-20', '10:30:00', '19:25:00', 'Absent'),
(30, '2025-07-21', '08:53:00', '17:40:00', 'Present'),
(69, '2025-07-21', '09:46:00', '18:33:00', 'Late'),
(178, '2025-07-21', '10:26:00', '19:18:00', 'Absent'),
(36, '2025-07-22', '08:38:00', '17:28:00', 'Present'),
(100, '2025-07-22', '09:41:00', '18:30:00', 'Late'),
(140, '2025-07-22', '10:22:00', '19:10:00', 'Absent'),
(15, '2025-07-23', '08:49:00', '17:35:00', 'Present'),
(77, '2025-07-23', '09:39:00', '18:18:00', 'Late'),
(167, '2025-07-23', '10:20:00', '19:15:00', 'Absent'),
(10, '2025-07-24', '09:00:00', '17:48:00', 'Present'),
(56, '2025-07-24', '09:54:00', '18:42:00', 'Late'),
(196, '2025-07-24', '10:12:00', '19:00:00', 'Absent'),
(38, '2025-07-25', '08:42:00', '17:20:00', 'Present'),
(82, '2025-07-25', '09:49:00', '18:35:00', 'Late'),
(149, '2025-07-25', '10:15:00', '19:08:00', 'Absent'),
(17, '2025-07-26', '08:37:00', '17:18:00', 'Present'),
(53, '2025-07-26', '09:36:00', '18:25:00', 'Late'),
(185, '2025-07-26', '10:28:00', '19:20:00', 'Absent'),
(7, '2025-07-27', '08:55:00', '17:45:00', 'Present'),
(79, '2025-07-27', '09:58:00', '18:38:00', 'Late'),
(192, '2025-07-27', '10:10:00', '19:00:00', 'Absent'),
(14, '2025-07-28', '08:46:00', '17:31:00', 'Present'),
(52, '2025-07-28', '09:42:00', '18:22:00', 'Late'),
(136, '2025-07-28', '10:24:00', '19:15:00', 'Absent'),
(27, '2025-07-29', '09:01:00', '17:50:00', 'Present'),
(87, '2025-07-29', '09:55:00', '18:35:00', 'Late'),
(157, '2025-07-29', '10:16:00', '19:05:00', 'Absent'),
(23, '2025-07-30', '08:44:00', '17:29:00', 'Present'),
(66, '2025-07-30', '09:50:00', '18:33:00', 'Late'),
(135, '2025-07-30', '10:13:00', '19:00:00', 'Absent'),
(3, '2025-07-31', '08:50:00', '17:32:00', 'Present'),
(91, '2025-07-31', '09:48:00', '18:27:00', 'Late'),
(159, '2025-07-31', '10:29:00', '19:19:00', 'Absent'),
(9, '2025-08-01', '08:41:00', '17:30:00', 'Present'),
(54, '2025-08-01', '09:45:00', '18:25:00', 'Late'),
(179, '2025-08-01', '10:20:00', '19:10:00', 'Absent'),
(16, '2025-08-02', '08:53:00', '17:38:00', 'Present'),
(67, '2025-08-02', '09:46:00', '18:29:00', 'Late'),
(138, '2025-08-02', '10:11:00', '19:00:00', 'Absent'),
(19, '2025-08-03', '08:49:00', '17:36:00', 'Present'),
(84, '2025-08-03', '09:40:00', '18:22:00', 'Late'),
(161, '2025-08-03', '10:28:00', '19:15:00', 'Absent'),
(11, '2025-08-04', '08:37:00', '17:25:00', 'Present'),
(60, '2025-08-04', '09:43:00', '18:35:00', 'Late'),
(146, '2025-08-04', '10:17:00', '19:00:00', 'Absent'),
(5, '2025-08-05', '08:45:00', '17:31:00', 'Present'),
(58, '2025-08-05', '09:52:00', '18:38:00', 'Late'),
(191, '2025-08-05', '10:30:00', '19:25:00', 'Absent'),
(29, '2025-08-06', '09:00:00', '17:42:00', 'Present'),
(72, '2025-08-06', '09:59:00', '18:45:00', 'Late'),
(186, '2025-08-06', '10:14:00', '19:08:00', 'Absent'),
(32, '2025-08-07', '08:55:00', '17:40:00', 'Present'),
(94, '2025-08-07', '09:49:00', '18:30:00', 'Late'),
(168, '2025-08-07', '10:23:00', '19:10:00', 'Absent'),
(2, '2025-08-08', '08:43:00', '17:25:00', 'Present'),
(44, '2025-08-08', '09:42:00', '18:22:00', 'Late'),
(180, '2025-08-08', '10:15:00', '19:05:00', 'Absent'),
(25, '2025-08-09', '08:36:00', '17:20:00', 'Present'),
(70, '2025-08-09', '09:34:00', '18:18:00', 'Late'),
(129, '2025-08-09', '10:12:00', '19:00:00', 'Absent'),
(18, '2025-08-10', '08:50:00', '17:32:00', 'Present'),
(96, '2025-08-10', '09:47:00', '18:30:00', 'Late'),
(152, '2025-08-10', '10:18:00', '19:10:00', 'Absent'),
(35, '2025-08-11', '08:44:00', '17:27:00', 'Present'),
(90, '2025-08-11', '09:40:00', '18:24:00', 'Late'),
(127, '2025-08-11', '10:29:00', '19:22:00', 'Absent'),
(14, '2025-08-12', '08:59:00', '17:42:00', 'Present'),
(51, '2025-08-12', '09:51:00', '18:35:00', 'Late'),
(195, '2025-08-12', '10:10:00', '19:00:00', 'Absent'),
(4, '2025-08-13', '08:39:00', '17:26:00', 'Present'),
(45, '2025-08-13', '09:44:00', '18:33:00', 'Late'),
(144, '2025-08-13', '10:26:00', '19:20:00', 'Absent'),
(6, '2025-08-14', '08:46:00', '17:30:00', 'Present'),
(74, '2025-08-14', '09:50:00', '18:28:00', 'Late'),
(153, '2025-08-14', '10:11:00', '19:05:00', 'Absent'),
(12, '2025-08-15', '08:37:00', '17:19:00', 'Present'),
(65, '2025-08-15', '09:49:00', '18:35:00', 'Late'),
(184, '2025-08-15', '10:14:00', '19:08:00', 'Absent'),
(21, '2025-08-16', '08:41:00', '17:26:00', 'Present'),
(83, '2025-08-16', '09:36:00', '18:20:00', 'Late'),
(143, '2025-08-16', '10:27:00', '19:15:00', 'Absent'),
(10, '2025-08-17', '08:55:00', '17:42:00', 'Present'),
(61, '2025-08-17', '09:40:00', '18:30:00', 'Late'),
(174, '2025-08-17', '10:18:00', '19:10:00', 'Absent'),
(17, '2025-08-18', '08:48:00', '17:33:00', 'Present'),
(55, '2025-08-18', '09:54:00', '18:36:00', 'Late'),
(150, '2025-08-18', '10:25:00', '19:20:00', 'Absent'),
(8, '2025-08-19', '08:43:00', '17:27:00', 'Present'),
(69, '2025-08-19', '09:38:00', '18:15:00', 'Late'),
(173, '2025-08-19', '10:10:00', '19:00:00', 'Absent'),
(27, '2025-08-20', '08:58:00', '17:40:00', 'Present'),
(97, '2025-08-20', '09:41:00', '18:22:00', 'Late'),
(155, '2025-08-20', '10:16:00', '19:10:00', 'Absent'),
(30, '2025-08-21', '08:45:00', '17:30:00', 'Present'),
(86, '2025-08-21', '09:48:00', '18:33:00', 'Late'),
(169, '2025-08-21', '10:21:00', '19:10:00', 'Absent'),
(19, '2025-08-22', '08:41:00', '17:25:00', 'Present'),
(58, '2025-08-22', '09:36:00', '18:20:00', 'Late'),
(177, '2025-08-22', '10:28:00', '19:15:00', 'Absent'),
(22, '2025-08-23', '08:55:00', '17:42:00', 'Present'),
(62, '2025-08-23', '09:42:00', '18:28:00', 'Late'),
(128, '2025-08-23', '10:12:00', '19:00:00', 'Absent'),
(14, '2025-08-24', '08:47:00', '17:33:00', 'Present'),
(66, '2025-08-24', '09:35:00', '18:21:00', 'Late'),
(199, '2025-08-24', '10:19:00', '19:05:00', 'Absent'),
(33, '2025-08-25', '08:59:00', '17:48:00', 'Present'),
(88, '2025-08-25', '09:51:00', '18:34:00', 'Late'),
(154, '2025-08-25', '10:14:00', '19:00:00', 'Absent'),
(13, '2025-08-26', '08:40:00', '17:24:00', 'Present'),
(77, '2025-08-26', '09:49:00', '18:35:00', 'Late'),
(140, '2025-08-26', '10:27:00', '19:18:00', 'Absent'),
(26, '2025-08-27', '08:52:00', '17:32:00', 'Present'),
(73, '2025-08-27', '09:44:00', '18:28:00', 'Late'),
(164, '2025-08-27', '10:20:00', '19:10:00', 'Absent'),
(31, '2025-08-28', '08:39:00', '17:20:00', 'Present'),
(93, '2025-08-28', '09:43:00', '18:25:00', 'Late'),
(134, '2025-08-28', '10:30:00', '19:15:00', 'Absent'),
(20, '2025-08-29', '08:50:00', '17:33:00', 'Present'),
(59, '2025-08-29', '09:47:00', '18:29:00', 'Late'),
(196, '2025-08-29', '10:16:00', '19:00:00', 'Absent'),
(1, '2025-08-30', '08:44:00', '17:25:00', 'Present'),
(47, '2025-08-30', '09:39:00', '18:20:00', 'Late'),
(158, '2025-08-30', '10:29:00', '19:22:00', 'Absent'),
(15, '2025-08-31', '08:36:00', '17:20:00', 'Present'),
(53, '2025-08-31', '09:50:00', '18:38:00', 'Late'),
(171, '2025-08-31', '10:14:00', '19:05:00', 'Absent'),
(23, '2025-09-01', '08:42:00', '17:27:00', 'Present'),
(89, '2025-09-01', '09:41:00', '18:30:00', 'Late'),
(187, '2025-09-01', '10:10:00', '19:00:00', 'Absent'),
(36, '2025-09-02', '08:58:00', '17:44:00', 'Present'),
(79, '2025-09-02', '09:54:00', '18:36:00', 'Late'),
(151, '2025-09-02', '10:25:00', '19:18:00', 'Absent'),
(7, '2025-09-03', '08:47:00', '17:29:00', 'Present'),
(46, '2025-09-03', '09:49:00', '18:30:00', 'Late'),
(175, '2025-09-03', '10:22:00', '19:10:00', 'Absent'),
(24, '2025-09-04', '08:41:00', '17:25:00', 'Present'),
(68, '2025-09-04', '09:45:00', '18:28:00', 'Late'),
(162, '2025-09-04', '10:11:00', '19:00:00', 'Absent'),
(5, '2025-09-05', '08:36:00', '17:19:00', 'Present'),
(71, '2025-09-05', '09:51:00', '18:35:00', 'Late'),
(122, '2025-09-05', '10:14:00', '19:05:00', 'Absent'),
(2, '2025-09-06', '08:55:00', '17:45:00', 'Present'),
(41, '2025-09-06', '09:42:00', '18:33:00', 'Late'),
(135, '2025-09-06', '10:26:00', '19:20:00', 'Absent'),
(28, '2025-09-07', '08:49:00', '17:31:00', 'Present'),
(92, '2025-09-07', '09:40:00', '18:20:00', 'Late'),
(170, '2025-09-07', '10:10:00', '19:00:00', 'Absent'),
(38, '2025-09-08', '08:43:00', '17:30:00', 'Present'),
(67, '2025-09-08', '09:36:00', '18:25:00', 'Late'),
(182, '2025-09-08', '10:29:00', '19:22:00', 'Absent'),
(12, '2025-09-09', '08:57:00', '17:38:00', 'Present'),
(87, '2025-09-09', '09:47:00', '18:30:00', 'Late');


INSERT INTO Departments (dept_name) VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO Roles (role_name, salary) VALUES 
('Manager', 80000), ('Developer', 60000), ('Analyst', 50000);

select * from attendance;

-- List all employees with their department and role
SELECT e.emp_id, e.emp_name, d.dept_name, r.role_name, e.date_of_joining
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
JOIN Roles r ON e.role_id = r.role_id;

-- Check attendance for a specific employee
SELECT * FROM Attendance
WHERE emp_id = 1
ORDER BY att_date DESC;

-- Count present/late/absent
SELECT status, COUNT(*) AS count
FROM Attendance
GROUP BY status;

-- Total Working Days for Each Employee
SELECT e.emp_name, COUNT(a.att_id) AS total_days_present
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.status = 'Present'
GROUP BY e.emp_name
ORDER BY total_days_present DESC;

-- Monthly attendance count per employee
SELECT 
    e.emp_id,
    e.emp_name,
    MONTH(a.att_date) AS month,
    YEAR(a.att_date) AS year,
    COUNT(*) AS total_attendance
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, YEAR(a.att_date), MONTH(a.att_date)
ORDER BY e.emp_id, year, month;


-- Count of LATE arrivals per employee per month
SELECT 
    e.emp_name,
    MONTH(a.att_date) AS month,
    YEAR(a.att_date) AS year,
    COUNT(*) AS late_days
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
WHERE a.status = 'Late'
GROUP BY e.emp_id, YEAR(a.att_date), MONTH(a.att_date)
ORDER BY e.emp_id, year, month;


-- Trigger to set current time if in_time is NULL and default status as 'Present'
DELIMITER //

CREATE TRIGGER before_insert_attendance
BEFORE INSERT ON Attendance
FOR EACH ROW
BEGIN
    -- Set default status if not provided
    IF NEW.status IS NULL THEN
        SET NEW.status = 'Present';
    END IF;

    -- Auto set current date/time if missing
    IF NEW.att_date IS NULL THEN
        SET NEW.att_date = CURRENT_DATE();
    END IF;

    IF NEW.in_time IS NULL THEN
        SET NEW.in_time = CURTIME();
    END IF;

    IF NEW.out_time IS NULL THEN
        SET NEW.out_time = CURTIME() + INTERVAL 8 HOUR;
    END IF;
END;
//

DELIMITER ;


--  Function to Calculate Work Hours for a Given Day
DELIMITER //

CREATE FUNCTION CalculateWorkHours(in_time TIME, out_time TIME)
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
    DECLARE hours DECIMAL(5,2);
    SET hours = TIME_TO_SEC(TIMEDIFF(out_time, in_time)) / 3600;
    RETURN hours;
END;
//

DELIMITER ;
SELECT  CalculateWorkHours('09:42:00', '12:36:00') AS WorkHours;

--  Total Work Hours Per Employee
SELECT 
    e.emp_id,
    e.emp_name,
    SUM(CalculateWorkHours(a.in_time, a.out_time)) AS total_work_hours
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id
ORDER BY total_work_hours DESC;


-- Employees with More Than 20 Working Days in a Month
SELECT 
    e.emp_id,
    e.emp_name,
    MONTH(a.att_date) AS month,
    COUNT(*) AS present_days
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.status = 'Present'
GROUP BY e.emp_id, MONTH(a.att_date)
HAVING present_days > 20
ORDER BY present_days DESC;

-- Find Employees with Frequent Late Arrivals (More than 2 times)
-- Insight: Identify employees with consistent punctuality issues
SELECT 
    e.emp_id,
    e.emp_name,
    COUNT(*) AS late_days
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.status = 'Late'
GROUP BY e.emp_id
HAVING late_days > 2
ORDER BY late_days DESC;

-- Employees Who Have Not Marked Attendance in the Last 7 Days
--  Use Case: HR can track absenteeism or inactivity.
SELECT 
    e.emp_id,
    e.emp_name
FROM Employees e
WHERE e.emp_id NOT IN (
    SELECT emp_id
    FROM Attendance
    WHERE att_date >= CURDATE() - INTERVAL 1 DAY
);

--  Average Working Hours per Role
-- Insight: Analyze workload per job role.
SELECT 
    r.role_name,
    ROUND(AVG(TIME_TO_SEC(TIMEDIFF(a.out_time, a.in_time)) / 3600), 2) AS avg_working_hours
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
JOIN Roles r ON e.role_id = r.role_id
GROUP BY r.role_id;


-- Daily Summary: Total Present / Absent / Late
-- Use Case: Daily HR attendance report
SELECT 
    att_date,
    SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) AS present_count,
    SUM(CASE WHEN status = 'Late' THEN 1 ELSE 0 END) AS late_count,
    SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END) AS absent_count
FROM Attendance
GROUP BY att_date
ORDER BY att_date DESC;

-- Top 5 Most Regular Employees
--  Purpose: Highlight top punctual employees.
SELECT 
    e.emp_id,
    e.emp_name,
    COUNT(*) AS good_days
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.status = 'Present'
GROUP BY e.emp_id
ORDER BY good_days DESC
LIMIT 5;

-- Monthly Attendance Percentage
SELECT 
    e.emp_id,
    e.emp_name,
    MONTH(a.att_date) AS month,
    ROUND((SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS attendance_percentage
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
GROUP BY e.emp_id, MONTH(a.att_date);

-- Current Day status Report
SELECT 
    status,
    COUNT(*) AS count
FROM Attendance
WHERE att_date = CURDATE()
GROUP BY status;


SET GLOBAL event_scheduler = ON;

DELIMITER //

CREATE PROCEDURE MarkDailyAbsentees()
BEGIN
    INSERT INTO Attendance (emp_id, att_date, in_time, out_time, status)
    SELECT 
        e.emp_id,
        CURDATE(),
        NULL,
        NULL,
        'Absent'
    FROM Employees e
    WHERE e.emp_id NOT IN (
        SELECT emp_id
        FROM Attendance
        WHERE att_date = CURDATE()
    );
END;
//

DELIMITER ;

-- Create a Daily Event to Auto-Mark Absentees at 6 PM
CREATE EVENT IF NOT EXISTS mark_absent_event
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_DATE + INTERVAL 18 HOUR  -- Runs daily at 6:00 PM
DO
CALL MarkDailyAbsentees();
-- At 6 PM every day, MySQL checks which employees did not log attendance for today.
-- It automatically inserts a row for each one with status 'Absent'.

