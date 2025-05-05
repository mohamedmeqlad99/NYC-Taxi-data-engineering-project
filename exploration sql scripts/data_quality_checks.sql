SELECT 
MIN(total_amount) as min_total_amount,
MAX(total_amount) as MAX_total_amount,
AVG(total_amount) as AVG_total_amount,
COUNT(1) as total_number_of_records,
COUNT(total_amount) as not_null_total_number_of_records
FROM OPENROWSET(
    BULK 'trip_data_green_parquet/year=2020/month=01/',
    FORMAT = 'PARQUET',
    DATA_SOURCE = 'nyc_taxi'
)
AS [result]
