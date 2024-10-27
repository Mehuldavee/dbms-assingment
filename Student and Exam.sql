create schema dbms;
create table student
(
student_roll int primary key,
student_name varchar(45) not null,
student_branch varchar(45) not null
);
insert  into student value(1,'Jay','CVomputer Science');
insert into student value(2,'Suhani','Electronic and Com');
insert into student value(3,'kriti','Electronic and Com');


create table exam
(
	student_roll int not null,
    s_code int not null,
    mark int not null,
    p_code int not null,
    foreign key (student_roll) references student(student_roll)
);
describe exam;
alter table exam modify s_code varchar(15) not null;
alter table exam modify p_code varchar(15) not null;
insert into exam value(1,'CS11',50,'CS');
insert into exam value(1,'CS12',60,'CS');
insert into exam value(2,'EC101',66,'EC');
insert into exam value(2,'EC102',70,'EC');
insert into exam value(3,'EC101',45,'EC');
insert into exam value(3,'EC102',50,'EC');
select * from exam;