create table Employee
(
employe_id int primary key ,
first_name varchar(45) not null,
last_name varchar(45) not null,
salary varchar(45) not null,
joining_date datetime,
department varchar(45) not null
);

insert into Employee values (1,'John','Abraham',1000000,str_to_date('01-Jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Banking');
insert into Employee values (2,'Michael','Clarke',8000000,str_to_date('01-Jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Insurance');
insert into Employee values (3,'Roy','Thomas',7000000,str_to_date('01-Jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Banking');
insert into Employee values (4,'Tom','Jose',600000,str_to_date('01-Feb -13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Insurance');
insert into Employee values (5,'Jerry','pinto',650000,str_to_date('01-Feb -13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Insurance');
insert into Employee values (6,'Philip','Mathew',750000,str_to_date('01-jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Services');
insert into Employee values (7,'TestNamel','123',650000,str_to_date('01-jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Services');
insert into Employee values (8,'TestName2','Lname',600000,str_to_date('01-jan-13 12:00:00 AM',"%d-%b-%y %h:%i:%s %p" ),'Services');
select * from employee;

create table Incentive
(
	employe_id int not null,
    Incentive_date date not null,
    Incentive_amount int not null,
    foreign key(employe_id) references employee(employe_id)
);
describe table Incentive;
alter table Incentive modify Incentive_date varchar(15) not null;
update Incentive set Incentive_date = date_format(Incentive_date, '%d-%b-%y');
insert into Incentive value (1,'01-feb-13',5000);
insert into Incentive value (2,'01-feb-13',3000);
insert into  Incentive value(3,'01-feb-13',4000);
insert into  Incentive value(1,'01-jan-13',4500);
insert into  Incentive value(2,'01-jan-13',3500);
select* from Incentive;

select max(salary),department from employee group by department order by 1;
select first_name from employee where first_name= 'Tom';
select first_name,joining_date,salary from employee;
select * from employee order by first_name, salary desc;
select * from employee where first_name like '%j%'; 
select department, max(salary) as salary from employee group by department order by salary asc;

select employee.first_name, incentive.Incentive_amount from employee join Incentive on employee.employe_id=Incentive.employe_id where incentive.Incentive_amount>3000;

create table view
(
employe_id int primary key ,
first_name varchar(45),
last_name varchar(45),
salary varchar(45),
joining_date datetime,
department varchar(45)  
);

create trigger afterinsertemployee
after insert on employee 
for each row
	insert into view (employe_id,first_name,last_name,salary,joining_date,department)
	values (new.employe_id, new.first_name, new.last_name, new.salary, new.joining_date, new.department); 
commit;