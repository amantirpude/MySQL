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

### Exercise 8


select name, role from employee_building where Building is null;
select	building_name , role from building_capacity
left join employee_building on building_capacity.Building_name = employee_building.Building where Role is null;


### Exercise 9

select Title, (Domestic_sales+International_Sales) as Combined_Sales from movies
inner join movie_sales on movies.ID = movie_sales.Movie_id;

select Title, Rating*10 as Percent_Rating from Movies
inner join movie_sales on movies.ID = movie_sales.Movie_id order by percent_rating desc;

select Title, Year as even_Years from movies where year % 2 =0;

### Exercise 10


select *, max(years_employed) as Max_Employment from employee_building group by name order by Years_employed desc limit 1;

select role, avg(years_employed) as Avg_Employment from employee_building group by role;

select building, sum(years_employed) as Sum_Employment from employee_building group by Building;

### Exercise 11

select count(role) as total_artist from employee_building where role = 'artist';
select role, count(name) as total_Employee from employee_building group by role;
select role, sum(years_employed) as total_years_employed from employee_building where role = 'Engineer';


### Exercise 12
select Director, count(Title) as Count from movies group by Director;
select Director, (Domestic_sales + International_sales) as Total_sales from movies 
inner join movie_sales on movies.ID = movie_sales.Movie_id
group by Director order by total_sales desc;

### Exercise 13

insert into movies(ID, Title, Director, Year, length_minutes)
values(15, 'Toy Story 4', 'Josh Cooley', 2019, 110);
select * from movie_sales;

Insert into movie_sales(Movie_Id, Rating, Domestic_sales, International_sales)
values(15, 8.7, 340000000, 270000000);

### Exercise 14

update movies
set Director = 'Lee Unkrich' where ID = 2;
select * from movies;
update movies set Director = 'John Lasseter' where ID = 2;
update movies set year = 1998 where ID = 3;
update movies set year = 1999 where ID = 3;
update movies set Title = 'Toy Story 8' , Director = 'John Lasseter' where ID = 11;
update movies set Title = 'Toy Story 3' , Director = 'Lee Unkrich' where ID = 11;


### Exercise 15

delete from movies where Year<2005;
delete from movies where Director = 'Andrew Stanton';

### Exercise 17

Alter Table movies add column Aspect_Ratio float default 2.30;
Alter table movies add column Language char(255) default 'English';