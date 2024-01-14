use cars;
----- read data -------
select * from car_dekho;
----- total cars: to get count of total records------
select count(*) from car_dekho;
----- the manager asked the employee how many cars will be available in 2023-----
select count(*) from car_dekho where year = '2023';
----- the manager asked the empoyee how many cars available in 2020,2021,2022-----
select count(*) from car_dekho where year = '2020';#74
select count(*) from car_dekho where year = '2021';#7
select count(*) from car_dekho where year = '2022';#7
--- GROUP BY ----
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
--- client asked me to print total of all cars by year.i dont see all details---
select year,count(*) from car_dekho group by year ;
--- client asked the car dealer how many diesel cars will be there in 2020 ---
select count(*) from car_dekho where fuel = 'diesel' and year = '2020';
---- client asked the car dealer how many petrol cars will be there in 2020 --
select count(*) from car_dekho where fuel = 'petrol' and year = '2020';
--- manager told the employee to give a print of all fuel cars (petrol,diesel,cng) that
 --- come by all years;
 select * from car_dekho;
select year,count(*)  from car_dekho where fuel = "petrol" group by year ;
select year,count(*)  from car_dekho where fuel = "diesel" group by year ;
select year,count(*)  from car_dekho where fuel = "CNG" group by year ;
---- manager asked to find out the year which had more than 100 cars---
select year,count(*) from car_dekho group by year having count(*) > 100  ;
------ manager asked the employee to get complete count of all cars between 2015 and 2023---
select count(*) from car_dekho where year between 2015 and 2023 ;


