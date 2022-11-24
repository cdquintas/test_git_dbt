with t_start as (

    select * from {{ ref('stg_start_table') }}

),


t_join as (

    select * from {{ ref('stg_join_table') }}

),


final as (

    select
        t_start.id as id, 
	t_start.values_teste as values_teste,
	t_join.descr as descr

    from t_start

    left join t_join on t_start.id = t_join.id

)


select * from final

