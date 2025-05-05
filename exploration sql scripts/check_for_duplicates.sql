SELECT LocationID, COUNT(LocationID) AS c
FROM OPENROWSET(
    BULK 'taxi_zone.csv',
    DATA_SOURCE = 'nyc_taxi',
    FORMAT = 'CSV',
    FIRSTROW = 2
) WITH (
    LocationID INT,
    Borough NVARCHAR(50),
    Zone NVARCHAR(100),
    service_zone NVARCHAR(50)
) AS [result]
GROUP BY LocationID
HAVING COUNT(LocationID) > 1;
