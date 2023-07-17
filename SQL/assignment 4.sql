--Do an analysis to show which actors are bringing in the most revenue (top 10 ranked)
		
select concat(a.first_name,' ',a.last_name) as actor_name ,sum(p.amount) as revenue from payment p
join rental r on r.rental_id=p.rental_id
join inventory i on i.inventory_id=r.inventory_id
join film_actor fa on fa.film_id=i.film_id
join actor a on a.actor_id=fa.actor_id
 group by concat(a.first_name,' ',a.last_name);
