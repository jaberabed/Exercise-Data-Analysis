--Create a visual in the notebook that shows how much revenue is coming from different countries to the DVD store (you will want matplotlib).

select country, store_id, sum(p.amount)  from payment P
inner join customer C on P.customer_id = C.customer_id
inner join address A on A.address_id = C.address_id
inner join city CI on CI.city_id = A.city_id
inner join country CO on CO.country_id = CI.country_id
group by country,c.store_id
		having sum(p.amount)>500
		order by country asc;
