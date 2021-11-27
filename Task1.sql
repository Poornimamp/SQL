create table Trainer_info(Trainer_ID CHARACTER(20),Salutation CHARACTER(7),Trainer_name character(30),Trainer_location CHARACTER(30),Trainer_track CHARACTER(15),Trainer_Qualification CHARACTER(100),
Trainer_experiance INTEGER,Trainer_Email character(100),Trainer_password character(20),primary key(Trainer_ID));

create table Batch_Info(Batch_ID CHARACTER(20) PRIMARY KEY,Batch_owner CHARACTER(30),Batch_BU_name CHARACTER(30));
create table Module_Info(Module_ID CHARACTER(20) PRIMARY KEY,Module_Name CHARACTER(40),Module_Duration INTEGER);
create table Associate_info(Associate_ID CHARACTER(20)PRIMARY KEY,Salutation CHARACTER(7),Associate_name character(30),Associate_location CHARACTER(30),Associate_track CHARACTER(15),Associate_Qualification CHARACTER(200),
Associate_Email character(100),Associate_password character(20));
create table Questions(Question_ID character(20) PRIMARY KEY,Module_ID CHARACTER(20),Question_text CHARACTER(900),FOREIGN KEY(Module_ID)REFERENCES Module_Info(Module_ID));
create table Associate_status(Associate_ID CHARACTER(20),Module_ID CHARACTER(20),Start_Date CHARACTER(20),End_date CHARACTER(20),AFeedbackGiven CHARACTER(20),TFeedbackGiven CHARACTER(20),FOREIGN KEY(Associate_ID)REFERENCES Associate_info(Associate_ID),FOREIGN KEY(Module_ID) REFERENCES Module_Info(Module_ID));
create table Trainer_Feedback(Trainer_ID CHARACTER(20),Question_ID CHARACTER(20),Batch_ID CHARACTER(20),Module_ID CHARACTER(20),Trainer_Rating INTEGER,FOREIGN KEY(Trainer_ID)REFERENCES Trainer_Info(Trainer_ID),FOREIGN KEY(Question_ID)REFERENCES Questions(Question_ID),FOREIGN KEY(Batch_ID)REFERENCES Batch_Info(Batch_ID),FOREIGN KEY(Module_ID)REFERENCES Module_Info(Module_ID));
create table Associate_Feedback(Associate_ID CHARACTER(20),Question_ID CHARACTER(20),Module_ID CHARACTER(20),Associate_Rating INTEGER,FOREIGN KEY(Associate_ID)REFERENCES Associate_Info(Associate_ID),FOREIGN KEY(Question_ID)REFERENCES Questions(Question_ID),FOREIGN KEY(Module_ID)REFERENCES Module_Info(Module_ID));
create table Login_Details(User_ID CHARACTER(20),User_password CHARACTER(20));
alter table Associate_status ADD Batch_ID CHARACTER(20);
alter table Associate_status ADD FOREIGN KEY(Batch_ID)REFERENCES Batch_Info(Batch_ID);
alter table Associate_status ADD Trainer_ID CHARACTER(20);
alter table Associate_status ADD FOREIGN KEY(Trainer_ID)REFERENCES Trainer_info(Trainer_ID);
alter table Associate_status MODIFY  Start_Date  DATE;
alter table Associate_status MODIFY  End_date  DATE;
insert into trainer_info(Trainer_ID,Salutation,Trainer_name,Trainer_location,Trainer_track ,Trainer_Qualification ,
Trainer_experiance,Trainer_Email ,Trainer_password)VALUES ('F001','Mr.','Pankaj','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','facl@123');
insert into trainer_info(Trainer_ID,Salutation,Trainer_name,Trainer_location,Trainer_track ,Trainer_Qualification ,
Trainer_experiance,Trainer_Email ,Trainer_password)VALUES('F002','Mr.','Sanjay','Bangalore','DotNet','Bachelor of Technology',12,'sanjay.RadhaKrishnan@alliance.com','fac2@123');
insert into trainer_info(Trainer_ID,Salutation,Trainer_name,Trainer_location,Trainer_track ,Trainer_Qualification ,
Trainer_experiance,Trainer_Email ,Trainer_password)VALUES('F003','Mr.','Vijay','Chennai','Mainframe','Bachelor of Technology',10,'vijay.Mathur@alliance.com','fac3@123');
insert into trainer_info(Trainer_ID,Salutation,Trainer_name,Trainer_location,Trainer_track ,Trainer_Qualification ,
Trainer_experiance,Trainer_Email ,Trainer_password)VALUES('F004','Mrs.','Nandhini','Kolkata','Java','Master of Computer Application',9,'Nandhini.Nair@alliance.com','fac4@123');
delete from trainer_info;
select * from trainer_info;
desc trainer_info;
insert into batch_info VALUES('B001','Mrs.Swathi','MSP');
insert into batch_info VALUES('B002','Mrs.Arurna','HealthCare');
insert into batch_info VALUES('B003','Mr.Rajesh','Life Sciences');
insert into batch_info VALUES('B004','Mr.Ravi','MSP');
select * from batch_info;m
desc batch_info;
insert into module_info VALUES('EM001','Instructor',0);
insert into module_info VALUES('EM002','Course Material',0);
insert into module_info VALUES('EM003','Learning Effectiveness',0);
//insert into module_info VALUES('J2EE','Advanced Java EE 1.6',80);
//insert into module_info VALUES('DOTNT4','.NET Framework 4.0',50);
delete from module_info;
select * from module_info;
desc module_info;
insert into associate_info VALUES('A001','Miss.','Gayathri','Gurugaon','Java','Bachelor of Technology','Gayathri@hp.com','tnel@123.');
insert into associate_info VALUES('A002','Mrs.','Radhika','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika@Congizant.com','tne2@123.');
insert into associate_info VALUES('A003','Mr.','Kishore','Chennai','Java','Bachelor of Engg. in Computers','Kishore@ibm.com','tne3@123.');
insert into associate_info VALUES('A004','Mr.','Anand','Mumbai','Dotnet','Master of computer Application','Anand@finolex.com','tne4@123.');
select * from associate_info;
desc associate_info;
insert into Questions VALUES('Q001','EM001','Instructor Knowledgeable and able to handle all your queries');
insert into Questions VALUES('Q002','EM002','The course Materials Presentation,handson,et.,referred during the training are relevant and useful');
select * from Questions;
desc associate_status;
select * from Associate_status;
/**/
create table Associate_status(Associate_ID CHARACTER(20),Module_ID CHARACTER(20),Start_Date CHARACTER(20),End_date CHARACTER(20),AFeedbackGiven CHARACTER(20),TFeedbackGiven CHARACTER(20),FOREIGN KEY(Associate_ID)REFERENCES Associate_info(Associate_ID),FOREIGN KEY(Module_ID) REFERENCES Module_Info(Module_ID));
insert into Associate_status(Associate_ID ,Module_ID ,Start_Date,End_date,Batch_ID,Trainer_ID) VALUES('A001','EM001','21-12-2015','20-12-2025','B001','F001');
insert into Associate_status(Associate_ID ,Module_ID ,Start_Date,End_date,Batch_ID,Trainer_ID) VALUES('A002','EM002','15-12-2000','25-12-2000','B002','F002');
insert into Associate_status(Associate_ID ,Module_ID ,Start_Date,End_date,Batch_ID,Trainer_ID) VALUES('A003','EM001','21-12-2015','20-12-2025','B002','F002');
update trainer_info set Trainer_password='nn4@123' where Trainer_ID='F004';
desc Login_Details;
drop table Login_Details;
delete from associate_status where associate_id='A002';
