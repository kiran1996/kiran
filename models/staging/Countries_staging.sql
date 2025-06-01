with source_data as (

    SELECT 
    NAME, 
    CAPITAL,
    REGION,
    POPULATION,
    AREA,
    case when area = 0 then null else cast(population / area as number(26,5)) end as population_density
    FROM {{ source('COUNTRIES_LANDING', 'COUNTRIES') }}
)

select * from source_data