create table ttt
(
	id int primary key identity(1,1),
	ppp nvarchar(20)  
)  

insert into ttt values('Tom')
insert into ttt values('Mike')
insert into ttt values('Tony')

select * from ttt
drop table ttt

delete from ttt where ppp = 'Mike'
--三处某一条记录后，再添加新的纪录主键并不会将删除的值补上，而是继续增长