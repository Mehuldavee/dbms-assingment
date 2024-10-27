
create table info
(
	first_name varchar(45) not null,
    last_name varchar(45) not null,
    address varchar(45) not null,
    city varchar(20) not null,
    age int not null
);
insert into info value('Mickey','Mouse','123Fantasy Way','Anahelim',73);
insert into info value('Bat','Man','321Cavern Ave','Gotham',54);
insert into info value('Wonder','Woman','987 Truth way','Paradise',39);
insert into info value('Donald','Duck','555 Quack street','mallard',65);
insert into info value('Bug','Bunny','567 Carrot Street','Rascal',58);
insert into info value('Wiley','Coyote','999 Acme way','Canyon',61);
insert into info value('Donald','Duck','234Purrfect Street','Hairball',32);
insert into info value('Tweety','Bird','543','Itotltaw',28);
select * from info;
