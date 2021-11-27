create table Persons(ID INT PRIMARY KEY,FirstName Varchar(30) NOT NULL,LastName VARCHAR(20))
desc Persons
insert into Persons(ID,FirstName,LastName)
VALUES(1001,'Raja','Alangar')
insert into Persons(ID,FirstName,LastName)
VALUES(1002,'Sarvesh','waran')
insert into Persons(ID,FirstName,LastName)
VALUES(1003,' Rani ','Muthu');
 insert into Persons(ID,FirstName,LastName)
VALUES(1004,'Debasmitha','MP');
 select * from Persons 
 insert into Persons(ID,FirstName,LastName)
VALUES(1005,'Debasmitha','');
select * from Persons where FirstName='Debasmitha'
update Persons set LastName='Poorni' where ID=1005
update Persons set LastName='Alangar' where ID=1001
update Persons set FirstName='Poorni' where ID=1003
update Persons set LastName='Poorni' where ID=1005
select * from Persons order by ID DESC
select * from Persons order by FirstName
select * from persons order by ID ASC
select FirstName from Persons where NOT Lastname='Manikandan' 