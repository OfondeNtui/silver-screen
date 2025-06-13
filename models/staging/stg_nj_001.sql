select  movie_id,
        timestamp as "DATE",   
        ticket_amount,
        transaction_total as revenue,
        'NJ_001' as location
from {{ source("silver-screen", "nj_001") }}