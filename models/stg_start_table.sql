select
    id,
    values_teste
from {{ source('teste', 'start_table') }}
