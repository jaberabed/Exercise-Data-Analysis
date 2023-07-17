--Create a time-series plot showing daily total revenue for three different countries with three countries in one plot (you will want matplotlib for this)
select TO_CHAR(payment_date, 'YYYY-MM-DD') as date,country,amount as  total_revenue from payment P
inner join customer C on P.customer_id = C.customer_id
inner join address A on A.address_id = C.address_id
inner join city CI on CI.city_id = A.city_id
inner join country CO on CO.country_id = CI.country_id;
