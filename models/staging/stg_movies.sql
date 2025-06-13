{{ config(materialized='view') }}

SELECT 
    movie_id,
    movie_title, 
    COALESCE (genre, 'unknown') as genre,
    studio
FROM {{ source('silver-screen', 'movie_catalogue') }}