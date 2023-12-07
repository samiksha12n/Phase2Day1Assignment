CREATE DATABASE [OurExcercisesDb ]  
ON PRIMARY
(NAME = 'OurExcercise_Db', FILENAME = 'D:\Day1Assignment\OurExcercise_db.mdf' ,size=24MB, filegrowth=8MB)
LOG ON
(NAME='OurExcercise_Db',FILENAME = 'D:\Day1Assignment\OurExcercise_db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS
use OurExcerciseDB
create table Product
(PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice float check (PPrice>=50 and PPrice <=1000000),
PCompany nvarchar(50),
PQty int default 1 check (PQty>=1))

insert into Product values('Sam','25000','Samsung','15')
insert into Product values('Ravi','76000','Apple','45')
insert into Product values('Avi','35000','Redmi','78')
insert into Product values('Sayali','67000','HTC','85')
insert into Product values('Deepesh','89000','Apple','95')
select * from Product