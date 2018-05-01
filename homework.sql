use sakila;

#1a
select first_name, last_name from actor;

#1b
ALTER TABLE actor ADD COLUMN combined VARCHAR(50);
UPDATE actor SET combined = CONCAT(first_name, ' ', last_name);
select * from actor;

#2a
select actor_id, first_name, last_name from actor where first_name = 'joe';

#2b
select first_name, last_name from actor where last_name like '%gen%';

#2c
select first_name, last_name from actor where last_name like '%li%' order by first_name, last_name asc;

#2d
select country_id, country from country where country in ('Afghanistan', 'Bangladesh', 'China');

#3a
ALTER TABLE actor ADD COLUMN middle_name VARCHAR(50) AFTER first_name;

#3b
ALTER TABLE actor MODIFY middle_name BLOB;

#3c
ALTER TABLE actor DROP COLUMN middle_name;

#4a
select last_name, count(last_name) from actor group by last_name order by count(last_name) desc;

#4b
select last_name, count(last_name) from actor group by last_name having count(last_name) > 2;

#4c
update actor set first_name = replace(first_name, 'Groucho', 'Harpo') where first_name = 'Groucho' and last_name = 'Williams';

#4d


#5a
describe address;

#6a
select first_name, last_name, address from staff s join address a on s.address_id = a.address_id;

#6b
select first_name, last_name, amount from staff s join payment p on s.staff_id = p.staff_id;

#6c


#6d


#6e


#7a


#7b


#7c


#7d


#7e


#7f


#7g


#7h


#8a


#8b


#8c







