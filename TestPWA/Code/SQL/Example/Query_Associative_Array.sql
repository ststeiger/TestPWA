
DECLARE @data national character varying(4000);
SET @data = N'{
         "name":"Raj",
         "email":"raj@gmail.com",
         "age":32
          
}';

SELECT * FROM OPENJSON(@data) AS keyValuePairs 
; 



DECLARE @json nvarchar(max) = N'[
  {
    "attributes": {
        "2003": "Some text",
        "2004": 0,
        "2006": 0,
        "2008": 0,
        "2011": 0,
        "2120": 0
    },
    "path": "/Path1",
    "changeDate": "2019-11-11T13:56:37.987Z",
    "guid": "00000000-0000-0000-0000-000000000000",
    "version": 0,
    "timestamp": "2019-11-11T14:21:14.86427Z"
  },
  {
    "attributes": {
        "2121": 0,
        "2297": 0,
        "2298": 0,
        "2299": 0,
        "2805": 0,
        "8501": 0,
        "12004": 0,
        "13266": 0,
        "13282": 0

    },
    "path": "P:/Path2/SubPath",
    "changeDate": "2019-11-11T13:55:35.943Z",
    "guid": "705b30ab-53b0-42ee-bb98-6d80daae2e18",
    "version": 1,
    "timestamp": "2019-11-11T09:08:54.417Z"
  },
  {
    "attributes": {},
    "path": "PP:/OneMorePath",
    "changeDate": "2019-11-11T14:20:49.5Z",
    "guid": "b9aac8f3-1f2a-4b52-b8d8-af6b654d3f0f",
    "version": 41,
    "timestamp": "2019-11-11T13:26:24.723Z"
  }
]'; 

SELECT 
    tGuidWithAttributes.uuid 
   ,tAttributeKeyValuePair.[key] AS attribute_name 
   ,tAttributeKeyValuePair.[value] AS attribute_value 
FROM OPENJSON(@json, '$') WITH 
( 
    uuid uniqueidentifier '$.guid' 
    -- other columns definitions 
   ,attributes nvarchar(MAX) '$.attributes' AS JSON 
) AS tGuidWithAttributes 

CROSS APPLY OPENJSON(tGuidWithAttributes.attributes) AS tAttributeKeyValuePair 
;