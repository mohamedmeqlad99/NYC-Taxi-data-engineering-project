USE nyc_taxi_ldw;


--- taxi zone silver table transformation csv --> parquet
IF OBJECT_ID('silver.taxi_zone') IS NOT NULL
    DROP EXTERNAL TABLE silver.taxi_zone
GO

CREATE EXTERNAL TABLE silver.taxi_zone
    WITH
    (
        DATA_SOURCE = nyc_taxi_src,
        LOCATION = 'silver/taxi_zone',
        FILE_FORMAT = parquet_file_format
    )
AS
SELECT *
  FROM bronze.taxi_zone;

---calendar table

IF OBJECT_ID('silver.calendar') IS NOT NULL
    DROP EXTERNAL TABLE silver.calendar
GO

CREATE EXTERNAL TABLE silver.calendar
    WITH
    (
        DATA_SOURCE = nyc_taxi_src,
        LOCATION = 'silver/calendar',
        FILE_FORMAT = parquet_file_format
    )
AS
SELECT *
  FROM bronze.calendar;

---vendor table
IF OBJECT_ID('silver.vendor') IS NOT NULL
    DROP EXTERNAL TABLE silver.vendor

CREATE EXTERNAL TABLE silver.vendor
    WITH
    (
        DATA_SOURCE = nyc_taxi_src,
        LOCATION = 'silver/vendor',
        FILE_FORMAT = parquet_file_format
    )
AS
SELECT *
  FROM bronze.vendor;
---trip tybe
IF OBJECT_ID('silver.trip_type') IS NOT NULL
    DROP EXTERNAL TABLE silver.trip_type

CREATE EXTERNAL TABLE silver.trip_type
    WITH
    (
        DATA_SOURCE = nyc_taxi_src,
        LOCATION = 'silver/trip_type',
        FILE_FORMAT = parquet_file_format
    )
AS
SELECT *
  FROM bronze.trip_type;


 SELECT * FROM silver.trip_type;
