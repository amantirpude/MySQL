create database MySQL_Exercise;

use Mysql_exercise;

create table Movies(
ID int Not Null,
Title char(255),
Director char(255),
Year int,
Length_Minutes int,
Primary key(ID)
);

insert into movies (ID, Title, Director, Year, Length_Minutes)
values (14, 'Monsters University', 'Dan Scanlon', 2013, 110);

select * from movies;

### Exercise 1

select Title from movies;
select Director from movies;
select Title, Director from movies;
select Title, Year from movies;
select * from movies;

### Exercise 2

select * from movies where ID = 6;
select * from movies where year between 2000 and 2010;
select * from movies where year not between 2000 and 2010;
select Title, Year from movies limit 5;

### Exercise 3

Select Title from movies where Title like '%Toy%';
select Title, Director from movies where Director = 'John Lasseter';
select Title, Director from movies where director != 'John Lasseter';
select Title From movies where title like 'WALL-_';


### Exercise 4

select distinct Director from movies order by director asc;
select Title, Year from movies order by year desc limit 4;
select title from movies order by title asc limit 5;
select title from movies order by title asc limit 5 offset 5;

### Exercise 5 Review 1 task

select country, city, population from cities where country = 'canada';
select city, latitude from cities where country = 'United states' order by Latitude desc;
select city, Longitude from cities where longitude <= -87.629798 order by Longitude asc;
select city, population from cities where Country = 'Mexico' order by Population desc limit 2;
select city, population from cities where Country = 'United States' order by Population desc limit 2 offset 2;

### Exercise 6
select Title, Domestic_sales, International_sales from movies
Inner join movie_sales 
on movies.ID = movie_sales.Movie_id;

select Title, Domestic_sales, International_sales from movies
Inner join movie_sales 
on movies.ID = movie_sales.Movie_id
where Domestic_sales<International_sales;

select Title, Rating from movies
inner join movie_sales 
on movies.ID = movie_sales.Movie_id
order by rating desc;

### Exercise 7

set sql_safe_updates = 0;

select Building_name, name from building_capacity
inner join employee_building
on building_capacity.Building_name = employee_building.Building;

select * from building_capacity;
select * from employee_building;

select distinct role, building from employee_building;
