SELECT TOP 100 *
FROM OPENROWSET(
    BULK 'https://synapsesc09340290.dfs.core.windows.net/raw/raw/taxi_zone.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) WITH (
    LocationID SMALLINT,
    Borough VARCHAR(15),
    Zone VARCHAR(50),
    service_zone VARCHAR(15)
) AS [result];
