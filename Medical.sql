create table Product(Product_ID INT,Product_name VARCHAR(32),Description VARCHAR(50));
desc product;
insert into Product(Product_ID,Product_name,Description) VALUES (101,'Syringe','A syringe is a simple reciprocating pump');
alter table Product MODIFY Description NVARCHAR2(300);

insert into Product(Product_ID,Product_name,Description) VALUES (102,'Thermometer','Thermometers utilize a range of physical effects to measure temperature. Temperature sensors are used in a wide variety of scientific and engineering ...');
insert into Product(Product_ID,Product_name,Description) VALUES (103,'Medical Glove','Offering Medical Grade Gloves For Customized Desire.Competitive intco nitrile gloves price. FDA 510K / CE certification Supplier of Nitrile gloves');
select * from Product;
insert into Product(Product_ID,Product_name,Description) VALUES (106,'Inhaler','Rescue or relief inhalers quickly bring back normal breathing ');
insert into Product(Product_ID,Product_name,Description) VALUES (104,'Infusion Pump',' An external infusion pump is a medical device used to deliver fluids into a patient s body in a controlled manner');
update Product SET product_id=Null;
alter table Product MODIFY product_id varchar(20);
UPDATE Product Set Product_ID='Item101' where product_name='Syringe';
UPDATE Product Set Product_ID='Item102' where product_name='Thermometer';
UPDATE Product Set Product_ID='Item103' where product_name='Medical Glove';
UPDATE Product Set Product_ID='Item106' where product_name='Inhaler';
UPDATE Product Set Product_ID='Item104' where product_name='Infusion Pump';
select * from Product order by product_id ASC;
alter table Product drop column Description;
alter table Product ADD Product_Country VARCHAR(10)DEFAULT 'USA';

select * from Product where Product_name Like 'In%';
update Product set product_country='USA' where product_ID='Item101';
alter TABLE Product ADD Country_Code NUMBER(10) Default '+91';
alter TABLE Product DROP COLUMN Country_code;
alter TABLE Product DROP COLUMN Product_Country;
update Product SET product_country='India' where Product_name='Inhaler';
alter table Product RENAME TO Medical_Product;
SELECT * FROM medical_product;
select Product_ID  AS ID from medical_product;
create table  Hospital  AS select * from medical_product;

desc Hospital;
insert into Hospital values('Item101','Syringe','USA');
insert into Hospital values('Item102','Thermometer','USA');
select * from Hospital;
alter table medical_product ADD PRIMARY KEY(Product_ID);
alter table Hospital ADD PRIMARY KEY(Product_ID);
delete from Hospital where product_id='Item101';
delete from Hospital where product_id='Item102';
insert into Hospital values('Item101','Syringe','USA');
insert into Hospital values('Item102','Thermometer','USA');
SELECT * FROM Hospital order by Product_ID ASC;
alter table Hospital ADD PRIMARY KEY(Product_ID);
alter table medical_product ADD FOREIGN KEY(Product_ID) REFERENCES Hospital(Product_ID);
desc Hospital;

desc medical_product;