select
    id,
    descr
from {{ source('teste', 'join_table') }}
