create table employees (
emp_id int not null,
first_name varchar (20),
last_name varchar (20) not null,
salary int not null,
primary key (emp_id)
);
insert into employees (
emp_id, first_name, last_name, salary) values
(101, 'Steven', 'Connor', 10000);
insert into employees (
emp_id, first_name, last_name, salary) values
(102, 'Stacy', 'Goerge', 11000);
insert into employees (
emp_id, first_name, last_name, salary) values
(103, 'Stuart', 'Markle', 12000);
insert into employees (emp_id, first_name, last_name, salary) values
(104, 'Steven', 'King', 15000);
insert into employees (emp_id, first_name, last_name, salary) values
(105, 'Charlie', 'King', 17000);
insert into employees (emp_id, first_name, last_name, salary) values
(106, 'Stacy', 'Julliane', 20000);
update employees set last_name='Cohen' where emp_id=101;
delete from employees where emp_id=101;
alter table employees add column dept varchar(20);
update employees set dept='finance' where emp_id=102;
create table product1 (
category_id int,
product_id varchar(20)
);
insert into product1 (category_id, product_id) values (1, 'nokia');
insert into product1 (category_id, product_id) values (2, 'samsung');
insert into product1 (category_id, product_id) values (3, 'hp');
insert into product1 (category_id, product_id) values (4, 'nikon');
create table product2 (
category_id int,
product_id varchar (20));
insert into product2 (category_id, product_id) values (1, 'lenovo');
insert into product2 (category_id, product_id) values (2, 'hp');
insert into product2 (category_id, product_id) values (3, 'moto');
insert into product2 (category_id, product_id) values (4, 'nikon');
insert into product2 (category_id, product_id) values (5, 'mi');
create table department (
dept_id int,
dept varchar(20),
dept_loc varchar (20)
);
insert into department values (1,'sales', 'chicago');
insert into department values (2,'hr', 'new jersey');
insert into department values (3,'operations', 'chicago');
insert into department values (4,'tech', 'san fransisco');
insert into department values (5,'finance', 'new york');
drop table department;
create table department (
dept_id int,
dept varchar(20),
dept_loc varchar (20)
);
insert into department values (101,'sales', 'chicago');
insert into department values (102,'finance', 'new jersey');
insert into department values (103,'tech', 'chicago');
insert into department values (104,'market','san fransisco');
insert into department values (105,'research', 'new york');
/* INNER JOIN */
select e.first_name, e.salary, d.dept, d.dept_loc
from employees e 
inner join department d
on e.dept=d.dept;
/* LEFT JOIN*/
select  d.dept, d.dept_loc, e.first_name, e.salary
from department d 
left outer join employees e
on d.dept=e.dept;
/* RIGHT JOIN */
select e.first_name, e.salary, d.dept, d.dept_loc
from employees e
right join department d
on e.dept=d.dept;
/* FULL OUTER JOIN */
select  d.dept, d.dept_loc, e.first_name, e.salary
from department d 
left outer join employees e
on d.dept=e.dept
UNION
select e.first_name, e.salary, d.dept, d.dept_loc
from employees e
right join department d
on e.dept=d.dept;
/* CROSS JOIN */
select * from employees cross join department; 