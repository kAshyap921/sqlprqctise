create table employee(
employee_id serial primary key,
name varchar(50)not null,
positiion varchar(50),
department varchar(50),
hire_date DATE,
salary numeric(10,2)
);


select * from employee


INSERT INTO employee( name,position,department,hire_date, salary )
values
('Ramaya','top','blessing','2000-09-09',125555.00),
('Radha','topp','namo','2000-07-08',121100.00),
('Rasheswari','tenure','blessed','2005-05-15',147505.00),
('rameshwari','tech','bleessed','2007-11-05',187000.00);

ALTER TABLE employee
Rename positiion to position

truncate table employee

alter table employee
drop column position

delete from employee
where employee_id =103;

DROP TABLE employee

update employee
set position =  'ALL_field'
where position = 'top';

update employee
set department='nature_blessing'
where department ='blessing' 

update employee
set position='ALL_field'
where position='null';

select *from employee order by employee_id ASC;

delete from employee where employee_id=6;

--SELECT * FROM employee
--set position ='box'
--WHERE position IS NULL;


ALTER TABLE employee
ADD position varchar(50);





--operators in  sql
-1--arthmetic operator

Q--retrive the first-name,salary,and 
--calculate a 10%bonus on the salary.
select name,salary,
       (salary*0.10)as bonus
	   from employee;
q/* calculate the annual salary and salary increment by 5% show 
the monthly new salary as well*/

	   select name,salary,
	   (salary*12)as annual_salary,
	   (salary*0.5)as increment_salary,
	   (salary+salary*0.05)as new_salary,
	   (salary*1.05) as new_salary2 
	   from employee;

2/*comparison operater*/

--matches age is equal to 30
select * from employee
where age = 30;

select * from employee
where age != 30;

--salary greater than 500000

select first_name,salary from employee
where salary >1500000;

3 /*logical operater

and,or,not

And=all condition must be true

OR=at least one condition must be true

Not= negate the condition*/

--between like operator


select * from eployee
where age>40 AND salary >=150000;

---retrive the employee belong either marketing  it ,department

select ,  first_NAME,SALARY from employee
where SALARY BETWEEN 100000 AND 1500000 ;

select ,  first_NAME,from employee
where email LIKE '@gmail.com';

--retrive  employee belog to either 'marketing 'finance  
--use in operater

select ,  first_NAME,department,from employee
where department in ( 'finance',' marketing');

--list employee sorted where email id is null
select first_name,last_name,salary
from employee
where email IS null;

--list employee sorted by salary in descending order,


select first_name,last_name,salary
from employee
salary order by salary desc 
LIMIT 5;--MEANS SHOW TOP 5 LINE;


--retrives a list of unique departments

select count (DISTINCT department) AS DEP_UNIQUE_COUNT
from employee;
