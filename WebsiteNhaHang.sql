create database WebsiteNhaHang
go

use WebsiteNhaHang
go

create table Food
(
	food_id int primary key identity(1,1),
	food_name nvarchar(200),
	food_price float,
	food_type int,
	food_sale int,
	food_avatar nvarchar(200),
	food_description ntext
)
go


create table Member
(
	member_id int primary key identity(1,1),
	member_fullname nvarchar(200),
	member_phone varchar(16),
	member_mail varchar(100),
	member_username varchar(20),
	member_password varchar(20),
	member_status int,
	member_type int
)
insert into Member values('trong','113','phamtrong131997@gmail.com','trong','1',0,1)
go


create table OrderTable
(
	ordertable_id int primary key identity(1,1),
	ordertable_iduser int constraint FK_OrderTable_Member foreign key references Member(member_id),
	ordertable_timeset datetime,	
	ordertable_idtable int constraint FK_OrderTable_table foreign key references qlTable(table_id),
	ordertable_status bit,
)
insert into OrderTable values(1,'2018-5-6',1,1)
insert into OrderTable values(1,'2018-5-9',1,1)
insert into OrderTable values(1,'2018-2-6',1,0)


insert into Member()

select * from Member
drop table OrderTable
insert into OrderTable values('2018/1/5',1)
go
create table OrderFood
(
	orderfood_id int primary key identity(1,1),
	orderfood_foodid int constraint FK_OrderFood_Food foreign key references Food(food_id),
	orderfood_timeorder datetime,
	orderfood_quantity int,
	orderfood_totalmoney float,
	orderfood_iduser int constraint FK_OrderFood_Member foreign key references Member(member_id),
	orderfood_ordertable bit,
	orderfood_status int

)
go
create table qlTable
(
	table_id int primary key identity(1,1),
	table_name varchar(10),
	table_status bit,
	table_description ntext
)