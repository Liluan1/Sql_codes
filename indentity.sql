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
--����ĳһ����¼��������µļ�¼���������Ὣɾ����ֵ���ϣ����Ǽ�������