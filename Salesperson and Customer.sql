
create table salseperson
(
sno int primary key,
sname int not null,
city varchar(45) not null,
comm float not null
);
alter table salseperson modify sname varchar(45) not null;
create table customer
(
cnm int not null,
cname varchar(45) not null,
city varchar(45) not null,
rating int not null,
sno int not null
);
describe customer;
describe salseperson;

insert into salseperson value(1001,'peel','London',.12);
insert into salseperson value(1002,'serres','san Jose',.13);
insert into salseperson value(1004,'Motika','London',.11);
insert into salseperson value(1007,'Rafkin','Barcelona',.15);
insert into salseperson value(1003,'Axelroad','New York',.1);
select * from salseperson;
insert into customer value(201,'Hoffman','London',100,1001);
insert into customer value(202,'Giovanne','Roe',200,1003);
insert into customer value(203,'Liu','San Jose',300,1002);
insert into customer value(204,'Grass','Barcelona',300,1002);
insert into customer value(206,'Clemens','London',300,1007);
insert into customer value(207,'Pereira','Roe',100,1004);
select * from customer;
select sname,city from salseperson where city = 'london' and comm > 0.12;
select * from salseperson where city in('london','barcelona');
select * from salseperson where comm in(0.10,0.12);
select * from customer where city = 'roe' and rating >=100;
commit;
