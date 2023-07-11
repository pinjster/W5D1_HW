-- Question 1. How many actors are there with the last name ‘Wahlberg’?
select count(last_name) as last_name_as_wahlberg
from actor 
where last_name = 'Wahlberg'; 
--Question 2. How many payments were made between $3.99 and $5.99?
select count(amount) as payments_between_399_and_599
from payment
where amount between 3.99 and 5.99;
--Question 3. What film does the store have the most of? (search in inventory)
select max(film_id) as film_id_most_owned
from inventory;
--Question 4. How many customers have the last name ‘William’?
select count(last_name) as customers_with_last_name_william
from customer 
where last_name = 'William'; 
--Question 5. What store employee (get the id) sold the most rentals?
select max(staff_id) as employee_id_sold_most
from rental;
--Question 6. How many different district names are there?
select count(distinct district) as total_different_district_names
from address;
--Question 7. What film has the most actors in it? (use film_actor table and get film_id)
select max(distinct film_id) as film_id_with_most_actors
from film_actor;
--Question 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name) as total_customers_last_name_end_in_es
from customer
where last_name like '%es';
--Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select count(amount)
from payment
group by customer_id between 380 and 430
having count(amount) > 250;
--Question 10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select count(distinct rating) as total_ratings, max(rating) as most_common_rating
from film;
