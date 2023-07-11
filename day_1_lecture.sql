select *
from actor;

-- Specify what columns
select first_name, last_name
from actor;

-- Look for specific actor with where clause filter 
select actor_id, first_name, last_name
from actor
where first_name = 'Sean';

select actor_id, first_name, last_name
from actor 
where first_name like 'Sean';

select actor_id, first_name, last_name
from actor 
where last_name = 'Wahlberg'

select *
from category 

-- Query for every name that starts with S
-- % any amount of any characters
select *
from actor
where first_name like 'S%n';

-- Query for name that starts with 'S' followed by three chars
select first_name, last_name
from actor 
where first_name like 'S___';

select first_name, last_name
from actor 
where first_name like 'K_%th';

select *
from payment;

select payment_id, customer_id, amount, rental_id
from payment
where amount > 2;

select payment_id, customer_id, rental_id
from payment
where amount < 7.99;

select payment_id, customer_id, rental_id, amount
from payment
where amount <= 7.99;

select * 
from payment
where amount > 2
order by amount asc;

select customer_id, amount
from payment 
where amount <> 0;

select *
from payment 
where amount between 2 and 7.99
order by amount desc;

--Aggregators = SUM() AVG() COUNT() MIN() MAX()
select customer_id, sum(amount) as total_purchases
from payment
group by customer_id
order by total_purchases asc;

select AVG(amount)
from payment;

select customer_id, avg(amount) as average_purchase
from payment
group by customer_id;

-- Query how many entries in Payment table
select customer_id , Count(payment_id)
from payment
where customer_id = 599
group by customer_id
order by customer_id asc;

select customer_id, count(customer_id) as payments_made
from payment 
group by customer_id
having count(customer_id) > 20;

select MIN(amount) as smallest_above_799
from payment
where amount > 7.99;

select max(amount)
from payment
where amount < 2.99

select *
from payment 
where amount = 1.99 and customer_id = 599