create table if not exists customer

(
cid char(5) not null primary key,
cname varchar(20),
age int(2),
gen char(1),
bamt int(5),
loc varchar(15),
Ino char(3)
);
insert into customer VALUES

('C0001','Anu',28,'F',32000,'Australia','I02'),
('C0002','Bini',43,'F',90000,'India','I02'),
('C0003','Cion',36,'M',24000,'Canada','I03'),
('C0004','Lura',24,'F',70500,'Canada','I04'),
('C0005','Hillar',51,'M',42000,'Australia','I03'),
('C0006','Zeny',36,'F',60800,'India','I01'),
('C0007','Lohishree',14,'F',50800,'India','I01'),
('C0008','Arnold',16,'M',80300,'India','I03'),
('C0009','Owe',17,'F',90800,'Canada','I01'),
('C0010','Aiah',31,'F',60600,'India','I02'),
('C0011','Reyner',15,'M',60000,'Australia','I03'),
('C0012','Yolanda',39,'F',93000,'Canada','I01'),
('C0013','Miah',12,'F',50200,'India','I02'),
('C0014','Romeo',48,'M',10800,'Australia','I04'),
('C0015','Gerlie',47,'F',30000,'Australia','I04');

create table if not EXISTS Item

(
Ino char(3) not null primary key,
Iname varchar(15),
Cost int(3),
company varchar(10)
);

insert into item VALUES

('I01','Refridgerator',30000,'ABC'),
('I02','Television',45000,'DEF'),
('I03','Scooter',42000,'ABC'),
('I04','Car',125000,'ABC'),
('I05','AC',20000,'DEF');

select * from customer;
select * from Item;

select sum(bamt),loc
from customer
group by loc
order by bamt desc;