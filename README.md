# DATABASE_LEHMAN_CSLAB
Database created for a class project. The following commands were used to create & alter the Database to the professor's wishses:





Create TABLE Employee (
	emplid INT primary KEY,
    first_name varchar(255),
    last_name varchar(255),
    sex varchar(255),
    address varchar(255),
    dob varchar(255),
    doh varchar(255),
    h_rate varchar(255),
    week_h int,
    title varchar(255),
    email varchar(255)
);

insert into Employee
values (123453, 'mary', 'jane', 'f', '123_oak_street', '01-02-90', '02-03-22', '20.00', '40', 'coordinator', '1234fegmail.com'),
(123455, 'mandy', 'jane', 'f', '124_oak_street', '01-02-89', '02-03-20', '22.00', '40', 'tutor', '12345fegmail.com'),
(243455, 'moe', 'mason', 'm', '124_cherry_street', '01-02-80', '02-03-19', '28.00', '40', 'coordinator', '12wfeffw3gmail.com'),
(132425, 'mickey', 'jameson', 'm', '124_pine_street', '01-02-85', '02-03-15', '25.00', '40', 'tutor', 'r23rdf33gmail.com'),
(1354632, 'mark', 'knight', 'm', '124_lime_street', '01-02-84', '02-03-21', '23.00', '40', 'coordinator', '1efjakfgmail.com');

select * from Employee;

select * from Employee
where title = 'coordinator';

select h_rate from Employee
where h_rate > 22.00;

select h_rate from Employee
where h_rate < 22.00;

select avg(h_rate) as averageWage from Employee;

Create TABLE Course (
	course_name varchar(255) primary KEY,
    tile varchar(255),
    descr varchar(255),
    cred int,
    hours int,
    course_tutor varchar(255) 
  
);



insert into Course
values ('chemistry', 'physical chemistry', 'physics + chemistry', 4, 16, 1323425),
('biology', 'ecology', 'study of ecosystems', 4, 16, 1323455),
('philosophy', 'intro to western philosophy', 'a class mostly about plato', 3, 12, 1324325),
('mathematics', 'precalculus', 'all the trig you forgot in highschool + limits', 4, 16, 1323425),
('computer science', 'mobile programming', 'intro to android studio or Xcode', 4, 16, 1323425);

select * from Course;

update Course
set hours = 20
where cred = 4;


select * from Course
where cred = 4 ;

Create TABLE Student (
	emplid INT primary KEY,
    first_name varchar(255),
    last_name varchar(255),
    
    address varchar(255),
    phone varchar(255),
    email varchar(255),
    tutor_id varchar(255)
 
);

insert into Student
values (12424235, 'john', 'doe', '343 maple street', '234-432-4326', 'flewgnfrgmail.com', 242534252),
(12352345, 'jonathan', 'hale', '353 edge street', '234-444-4326', 'flr23rfrgmail.com', 235252343),
(13252, 'jenny', 'ramos', '343 liberty street', '234-432-4632', 'dwelkfnfwlgmail.com', 2435253552),
(1345323, 'jack', 'wells', '353 independence street', '234-432-2575', 'ewlfkjgmail.com', 346534252),
(12235252, 'jimmy', 'cash', '343 oak street', '123-432-4326', 'fewefwwnfrgmail.com', 22252324252);

Select * from Student;

Select * from Student
where first_name = 'jenny';


Create TABLE Book (
	bookid varchar(255) primary KEY,
    title varchar(255),
    emplid varchar(255)
   
 
);

insert into Book
values (1342, 'war and peace', 3643353),
(135553, '1984', 33523342),
(135322, 'of mice and men', 3643353),
(23523, 'bible', 352353),
(2423525, 'macbeth',2333333);

select * from Book;

select * from Book
where title = 'macbeth';

Create TABLE Book_Authors (
	bookid varchar(255) primary KEY,
  
    author varchar(255)
   
 
);

insert into Book_Authors
values (254324, 'George orwell'),
(2434, 'Leo tolstoy'),
(252323, 'james Joyce'),
(235343, 'Ray bradbury'),
(353235, 'Cormac Mcarthy');

select * from Book_Authors;

select * from Book_Authors
where author = 'james Joyce';

Create TABLE Visit (
	St_id varchar(255) primary KEY,
    course varchar(255),
    descr varchar(255),
    t_in int,
    t_out int,
    dov varchar(255),
    R_visit varchar(255) 
  
);

insert into Visit
values (3242352, 'precalculus', 'math prior to calculus', 2,4,'12-30-22','get someone to teach me everything b4 test'),
(3323426, 'intro to psychology', 'Freud and other psychologists', 1,3,'12-30-18','midterm review'),
(338572, 'physics', 'classical mechanics', 1,4,'4-30-22','help for homework'),
(3235232, 'sociology', 'social concepts', 3,6,'12-30-17','project review'),
(335555552, 'Creative writing', 'writing techniques', 4,5,'12-30-19','essay review');

select * from Visit;

select * from Visit
where course = 'physics';

select * from Visit
where t_out - t_in > 2;


Create TABLE laptop (
	serial_number int primary KEY,
    L_name varchar(255),
    manufacturer varchar(255),
	Lease_emplid varchar(255)
);

insert into laptop
values (2442443, 'mary','dell',24444232),
(245323, 'mark','lenovo',24352342),
(2344647, 'mike','toshiba',2435235223),
(235232423, 'melissa','apple',24434552),
(24353223, 'ted','acer',2446346);

Select * from laptop;

Select * from laptop
where manufacturer = 'dell';

update laptop
set L_name = 'tod'
where L_name = 'ted';

update laptop
set manufacturer = 'sony'
where L_name = 'mark';


Select * from Employee
CROSS JOIN Student;


