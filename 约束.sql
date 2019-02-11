create table gg
(
	a int not null,
	c int constraint heihei primary key 
)

create table hh
(
	a int ,
	b nvarchar(50),
	c int constraint haha primary key,
	d int constraint hehe foreign key references gg(c),
	e int default (1)
)

insert into hh values(1,'nan',1,1,2);
insert into gg values(1,1);

drop table hh;
drop table gg;

create table hh
(
	id int primary key,
	name nvarchar(50) unique not null,
	email nvarchar(50) not null unique,
	address nvarchar(50) default('¼ÃÄş')
)
insert hh (id, name, email) values(1,'ÕÅÈı','hb.g@163.com');

select * from hh;

drop table hh;