{{config (
    materialized = 'ephemeral'
)}}

select
    cust_key,
    cust_nm,
    cust_address,
    cust_phone_num,
    nation,
    region_name,
    cust_acct_bal,
    sys_insr_dt
from {{source('NA','DIM_CUSTOMER')}}
union
select
    cust_key,
    cust_nm,
    cust_address,
    cust_phone_num,
    nation,
    region_name,
    cust_acct_bal,
    sys_insr_dt
from {{source('EMEA','DIM_CUSTOMER')}}
union
select
    cust_key,
    cust_nm,
    cust_address,
    cust_phone_num,
    nation,
    region_name,
    cust_acct_bal,
    sys_insr_dt
from {{source('APAC','DIM_CUSTOMER')}}