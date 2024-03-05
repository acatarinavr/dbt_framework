
    
    

select
    id as unique_field,
    count(*) as n_records

from TASTY_BYTES_SAMPLE_DATA.TASTY_BYTES_SAMPLE_DATA.my_second_dbt_model
where id is not null
group by id
having count(*) > 1


