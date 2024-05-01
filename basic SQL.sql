use world;
show tables;

-- get all the columns from the Country table.
select * from country;

-- select the region column from the Country table.
select Region from country;

-- all the different values from the Region column in the Country table. 
select distinct Region from country;

-- all records where the Countrycode has the value "NLD" from city table
select * from city
where countrycode = "NLD";

-- Select all records where the Percentage have 1.9 value from countrylanguage.
select * from countrylanguage
where percentage = 1.9;

-- all records from the City table, sort the result alphabetically by the country name
select * from city
order by name;

-- all records from the Country table, sort the result reversed alphabetically by the localname.
select * from country
order by localname desc;

-- all records from the City, sort the result alphabetically, first by the country name, then by the district.
select * from city
order by name,district;

-- all records where the Countrycode =USA and the Percentage= 0.7.
select * from countrylanguage
where countrycode = "USA" and percentage =0.7;

-- all records from City where district is kabol or utrecht.
select * from city
where district ="kabol" or district ="utrecht";

-- use the NOT keyword to select all records where City is NOT "herat". 
select * from city
where not name="herat";

-- all records from the Country where the GNPold column is empty. 
select * from country
where GNPold is null;

-- all records from the Country where the GNPold column is not empty. 
select * from country
where GNPold is not null;

-- select  the lowest population .
select min(population) from city;


 -- select  the highest population .
 select max(population) from city;
 
 -- return the number of records that have the percentage value 0.6.
 select count(*) from countrylanguage
 where percentage =0.6;
 
 --  calculate the average Population value.
 select avg(population) from country;
 
 -- calculate the sum of SurfaceArea 
 select sum(SurfaceArea) from country;
 
 -- all records where country name starts with h from city table
 select * from city
 where name like "h%";
 
 -- all records where country name end with g from city table 
 select * from city
 where name like "%g";
 
 -- all records where country name contain a letter from city table 
 select * from city
 where name like "%a%";
 
 -- all records where country name start with a and end with g letter from city table 
 select * from city
 where name like "a%g";
 
 -- all records where country name  does not start with a lette from city table
 select * from city
 where name not like "a%";
 
 -- all records where country name  starts with second letter a  from city table
select * from city
where name like "_a%";

-- all records where country name  starts with letter a,g,h  from city table
select * from city
where name like '[agh]%';

-- all records where country name  starts with letter any one between a to f  from city table
select * from city
where name like "[a-f]%";

-- Use the IN operator to select all the records where Country is either kabul or herat
select * from city
where name in('kabul','herat');

-- Use the IN operator to select all the records where Country is not kabul or herat
select * from city
where name not in('kabul','herat');







 
 
 
 
 
 

 

 
 




  

