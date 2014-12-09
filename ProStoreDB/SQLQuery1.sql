create database ProStoreDatabase;

use ProStoreDatabase;

-- SELECT * FROM information_schema.tables;

create table Company 
(C_Id int identity(101,1) NOT NULL PRIMARY KEY, C_Name varchar(30));

alter table Company add UNIQUE (C_Name)

create table Category 
(C_Id int references Company(C_Id) on delete cascade, 
 Cat_Name varchar(40), Cat_Id int identity(201,1) NOT NULL PRIMARY KEY);

 alter table Category add constraint UQ_Category_ComIdCatName UNIQUE (C_Id, Cat_Name)
--alter table Category drop constraint UQ__Category__B46D3EC3EB710946

create table SubCategory
(Cat_Id int references Category(Cat_Id) on delete cascade,
SubCat_Name varchar(40), SubCat_Id int identity(301,1) NOT NULL PRIMARY KEY);

alter table SubCategory add constraint UQ_SubCategory_CatIdSubcatName UNIQUE (Cat_Id, SubCat_Name)

create table Product
(SubCat_Id int references SubCategory(SubCat_Id) on delete cascade,
 Prod_Name varchar(40), Prod_Cost int, Prod_Image varchar(80),
 Prod_Id int identity(401,1) NOT NULL PRIMARY KEY);

 create table ProStoreUser
 ( UserName varchar(20) NOT NULL PRIMARY KEY, Password varchar(30),
  Security_Ques varchar(40), Security_Ques_Ans varchar(30)); 

  insert into ProStoreUser values('vishesh', '1234', 'Hometown', 'Delhi');

 create table ProStoreAdmin
 ( UserName varchar(20) NOT NULL PRIMARY KEY, Password varchar(30),
  Security_Ques varchar(40), Security_Ques_Ans varchar(30)); 

  insert into ProStoreAdmin values('vishesh', '1234', 'Hometown', 'Delhi');

  create proc usp_showProdTable as
  select Company.C_Name,Product.Prod_Id, Product.Prod_Name, Product.Prod_Cost, Product.Prod_Image from Product join SubCategory
  on Product.SubCat_Id = SubCategory.SubCat_Id join Category
  on SubCategory.Cat_Id = Category.Cat_Id join Company
  on Category.C_Id = Company.C_Id

  --exec sp_help SubCategory
  
  select * from SubCategory
  --select C_Name from Company where C_Id=(select C_Id from Category where Cat_Id=(select Cat_Id from SubCategory where SubCat_Id=301) )
  
  Go
  BACKUP DATABASE ProStoreDatabase
  TO DISK = 'D:\vishu\apps\Sql Server Database\ProStore\ProStoreDB.bak'
  WITH FORMAT, NAME = 'Full Backup of ProStoreDB';
  Go

  ----To restore database backup----
  --RESTORE DATABASE ProStoreDatabase
  --FROM DISK = 'D:\vishu\apps\Sql Server Database\ProStoreDB Backup\ProStoreDB.bak'
