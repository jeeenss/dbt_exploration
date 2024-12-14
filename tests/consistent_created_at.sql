SELECT 
    * 
FROM 
    {{ ref("fct_reviews") }} f 
    INNER JOIN 
    {{ ref("dim_listings_cleansed") }} d
    on f.listing_id = d.listing_id
WHERE 
    f.review_date <= d.created_at
LIMIT 100