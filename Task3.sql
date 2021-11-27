create table Login(User_name VARCHAR2(20),User_password VARCHAR2(10) UNIQUE);
alter table Login ADD  PRIMARY KEY(User_name);
desc Login;
create table Admin(User_name VARCHAR2(20),Location_ID  VARCHAR2(20)PRIMARY KEY,Parking_Attendent_ID VARCHAR2(10),FOREIGN KEY(User_name) REFERENCES Login(User_name));
alter table Admin  ADD  PRIMARY KEY(Parking_Attendent_ID);
DROP table Admin;
create table Parking_Attendent(Parking_Attendent_ID VARCHAR2(10) PRIMARY KEY,User_name VARCHAR2(20),Ticket_Number NUMBER(10),Free_slot NUMBER(10),FOREIGN KEY(User_name) REFERENCES Login(User_name));
create table Customer_Details(Ticket_Number NUMBER(10) PRIMARY KEY,Vehicle_Number VARCHAR2(15),License_Number VARCHAR2(12),Vehicle_Type VARCHAR2(30),Issued_Date DATE,Payed_At TIMESTAMP,Payed_Amount NUMBER(10));
create table Location(Location_id    NUMBER(4) PRIMARY KEY,Location_Place VARCHAR2(20),State VARCHAR2(20),zipcode NUMBER(10),Location_Status VARCHAR2(