USE nyc_taxi_ldw
CREATE EXTERNAL TABLE bronze.taxi_zone
(
        location_id SMALLINT,
        borough VARCHAR(15),
        zone VARCHAR(50),
        service_zone VARCHAR(15)
)
WITH
(
        LOCATION = 'raw/taxi_zone.csv',
        DATA_SOURCE = nyc_taxi_src,
        FILE_FORMAT = csv_file_format
)
