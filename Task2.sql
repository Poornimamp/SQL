create table Programmer(Pname varchar(20),DOB date,DOJ date,Gender VARCHAR2(1),PROF1 VARCHAR2(10),PROF2 VARCHAR2(10),Salary Number);
create table Software(Pname VARCHAR2(20),Title VARCHAR2(30),DEV_IN VARCHAR2(10),SCost NUMBER,DCost NUMBER,SID NUMBER);
create table Studies(Pname VARCHAR2(20),SPlace VARCHAR2(15),Course VARCHAR2(15),CCost NUMBER(7));
insert into  Programmer values('Anand','21-May-66','21-Apr-92','M','Pascal','Basic',3200);
insert into  Programmer values('Ramesh','02-Jul-64','13-Nov-90','M','Clipper','Cobol',2800);
insert into  Programmer values('Kamala','31-Jul-68','21-Apr-90','F','Cobol','dbase',3000);
insert into  Programmer values('Mary','24-Jul-70','01-Feb-91','F','c++','oracle',4500);
insert into  Programmer values('Nelson','11-Sep-65','11-Oct-89','M','cobol','dbase',2500);
desc programmer;
select * from Programmer;
insert into  software values('Anand','Parachutes','Basic',400,6000,43);
insert into  software values('Anand','Video Titling','Pascal',7500,16000,89);
insert into  software values('Ramesh','Inventory Control','Cobol',3000,3500,0);
insert into  software values('Kamala','Payroll Package','DBase',9000,20000,7);
insert into  software values('Mary','Finacial ACC S/W','Oracle',18000,85000,4);
insert into  software values('Mary','Finacial ACC S/W','C',4500,20000,23);
insert into  software values('Nelson','Missile Tech','C++',5000,7500,25);
desc software;
select * from software;
insert into  Studies values('Anand','Sabari','PGDCA',4500);
insert into  Studies values('Ramesh','CSDI','DCA',7200);
insert into  Studies values('JayaKumar','BITS','MCA',42000);
insert into  Studies values('Kamala','Pragathi','DCP',5000);
insert into  Studies values('Mary','Sabari','PGDCA',4500);
insert into  Studies values('Nelson','Pragathi','DPA',6200);
desc Studies;
select * from studies;
select DISTINCT Pname,Title from Software;
update Software SET Title='Missile Tech' WHERE scost=7500;
alter table Studies ADD SCost Number(10);
update Studies SET SCost=2300 WHERE CCost=4500;
alter table Studies drop COLUMN SCost;
delete from Studies WHERE CCost=NULL;
update Programmer 