USE [db_finance]
GO 
SELECT 'select * from [db_finance].[dbo].' +'['+ name +']'+' union all '
FROM sys.Tables
where type_desc = 'USER_TABLE'
GO

create table Finance_Data
(DATE	date,
LOCATION	varchar(500),
ITEM		varchar(500),
COST		numeric(18,2),
TOTAL	numeric(18,2),
COMMENTS	varchar(500))
GO

insert into Finance_Data
select * from [db_finance].[dbo].['Apr 2019$'] union all 
select * from [db_finance].[dbo].['Apr 2020$'] union all 
select * from [db_finance].[dbo].['Aug 2020$'] union all 
select * from [db_finance].[dbo].['August 2019$'] union all 
select * from [db_finance].[dbo].['Dec 2019$'] union all 
select * from [db_finance].[dbo].['Dec 2020$'] union all 
select * from [db_finance].[dbo].['Feb 2019$'] union all 
select * from [db_finance].[dbo].['Feb 2020$'] union all 
select * from [db_finance].[dbo].['Jan 2019$'] union all 
select * from [db_finance].[dbo].['Jan 2020_$'] union all 
select * from [db_finance].[dbo].['July 2019$'] union all 
select * from [db_finance].[dbo].['July 2020$'] union all 
select * from [db_finance].[dbo].['June 2019$'] union all 
select * from [db_finance].[dbo].['June 2020$'] union all 
select * from [db_finance].[dbo].['Mar 2019$'] union all 
select * from [db_finance].[dbo].['Mar 2020$'] union all 
select * from [db_finance].[dbo].['May 2019$'] union all 
select * from [db_finance].[dbo].['May 2020$'] union all 
select * from [db_finance].[dbo].['Nov 2019$'] union all 
select * from [db_finance].[dbo].['Nov 2020$'] union all 
select * from [db_finance].[dbo].['Oct 2019$'] union all 
select * from [db_finance].[dbo].['Oct 2020$'] union all 
select * from [db_finance].[dbo].['Sept 18 - Dec 18$'] union all 
select * from [db_finance].[dbo].['Sept 2019$'] union all 
select * from [db_finance].[dbo].['Sept 2020$'] 

GO

select * from Finance_Data;

GO


--Dop table

SELECT 'drop table [db_finance].[dbo].' +'['+ name +']'
FROM sys.Tables
where type_desc = 'USER_TABLE'
GO

drop table [db_finance].[dbo].['Apr 2019$']
drop table [db_finance].[dbo].['Apr 2020$']
drop table [db_finance].[dbo].['Aug 2020$']
drop table [db_finance].[dbo].['August 2019$']
drop table [db_finance].[dbo].['Dec 2019$']
drop table [db_finance].[dbo].['Dec 2020$']
drop table [db_finance].[dbo].['Feb 2019$']
drop table [db_finance].[dbo].['Feb 2020$']
drop table [db_finance].[dbo].['Jan 2019$']
drop table [db_finance].[dbo].['Jan 2020_$']
drop table [db_finance].[dbo].['July 2019$']
drop table [db_finance].[dbo].['July 2020$']
drop table [db_finance].[dbo].['June 2019$']
drop table [db_finance].[dbo].['June 2020$']
drop table [db_finance].[dbo].['Mar 2019$']
drop table [db_finance].[dbo].['Mar 2020$']
drop table [db_finance].[dbo].['May 2019$']
drop table [db_finance].[dbo].['May 2020$']
drop table [db_finance].[dbo].['Nov 2019$']
drop table [db_finance].[dbo].['Nov 2020$']
drop table [db_finance].[dbo].['Oct 2019$']
drop table [db_finance].[dbo].['Oct 2020$']
drop table [db_finance].[dbo].['Sept 18 - Dec 18$']
drop table [db_finance].[dbo].['Sept 2019$']
drop table [db_finance].[dbo].['Sept 2020$']


GO

update Finance_Data
set cost = cost * -1

go

--ITEM--ITEM--ITEM--ITEM--ITEM--ITEM

select ITEM from Finance_Data
group by ITEM
order by ITEM;



select * from Finance_Data
where ITEM like '%Pass';

select * from Finance_Data
where ITEM is null


delete from Finance_Data
where ITEM is null

UPDATE Finance_Data
SET item = 'Restaurant'
WHERE item = 'Restauran';


UPDATE Finance_Data
SET item = 'Hair Cut'
WHERE item IN ('Hair-Cut','Haircut');



UPDATE Finance_Data
SET item = 'Chiropractor'
WHERE item = 'Chiro';


UPDATE Finance_Data
SET item = 'Personal'
WHERE item = 'Personal Items';



UPDATE Finance_Data
SET item = 'Pass'
WHERE item like '%Pass';

GO






select LOCATION from Finance_Data
group by LOCATION 
order by LOCATION ;


select * from Finance_Data
where LOCATION  = '?????'

delete from Finance_Data
where LOCATION  = '?????'



select * from  Finance_Data
where date is null;

update  Finance_Data
set date = '2020-08-30'
where date is null;

select * from  Finance_Data
where LOCATION in ('Bake Chef Co')

select * from  Finance_Data
where LOCATION in ('Bake Chef','Bakechef')


update Finance_Data
set LOCATION = 'Bake Chef Co'
where LOCATION in ('Bake Chef','Bakechef')


select * from  Finance_Data
where LOCATION like 'McDonald%'


update Finance_Data
set LOCATION = 'McDonalds'
where LOCATION like 'McDonald%'


update Finance_Data
set LOCATION = 'Tim Hortons'
where LOCATION like 'Tim Horton%'



go

