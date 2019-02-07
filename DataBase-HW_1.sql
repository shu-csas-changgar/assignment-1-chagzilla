/*question 1 */
select * from actor where first_name = 'PENELOPE';

/*question 2 */
select a.first_name, a.last_name, f.actors from actor a inner join film_list f on f.actors like CONCAT('%',a.first_name," ",a.last_name,'%') where f.title ='ZOOLANDER FICTION';

/* question 3 */
select f.title, f.actors from film_list f inner join actor a on f.actors like CONCAT('%',a.first_name,' ',a.last_name,'%') where a.first_name = 'JENNIFER' and a.last_name = 'DAVIS';

/* question 4 */
select * from rental where customer_id = 11 and return_date IS NULL;

/* question 5 */
select * from film_list where category = 'Animation';

/* question 6 */
select distinct amount, film.title, customer.first_name, customer.last_name from payment, customer, inventory, film
where 	
	payment.customer_id = customer.customer_id and
	customer.store_id = inventory.store_id and
	inventory.film_id = film.film_id and 
	film.title = 'Closer Bang'  and
	customer.first_name = 'Paula' and
	customer.last_name = 'Bryant' and 
	customer.customer_id = 95;

/* question 7 */
select s.first_name, s.last_name from staff as s, inventory, rental, customer, film
where 
	s.store_id = inventory.store_id and 
    inventory.inventory_id = rental.inventory_id and 
    rental.customer_id = customer.customer_id and
    customer.first_name = 'Marie' and
    customer.last_name = 'Turner' and
    inventory.film_id = film.film_id and
    film.title = 'Chainsaw Uptown' and
    rental.staff_id = s.staff_id;

