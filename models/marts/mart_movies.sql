select  r.movie_id,
        c.movie_title,
        c.studio,
        c.genre,
        r.location,
        r.transaction_month,
        r.revenue,
        r.tickets_sold,
        c.rental_costs
from {{ ref('int_movies_revenue') }} r
full join {{ ref('int_movies_costs') }} c
on r.movie_id = c.movie_id and r.location=c.location_id 
and r.transaction_month = c.transaction_month
