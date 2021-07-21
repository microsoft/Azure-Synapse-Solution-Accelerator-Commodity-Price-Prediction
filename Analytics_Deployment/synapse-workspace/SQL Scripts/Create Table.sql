-- Copyright (c) Microsoft Corporation.
-- Licensed under the MIT License.

CREATE TABLE Anomalies
  (  
	  [Date] date,
	  average_value float NULL,
	  isAnomaly char(5) NULL,
	  isPositiveAnomaly char(5) NULL,
	  isNegativeAnomaly char(5) NULL,
	  [period] int NULL,
	  expectedValue float NULL,
	  upperMargin float NULL,
	  lowerMargin float NULL
  )  
WITH  
  (   
    DISTRIBUTION = REPLICATE,
    CLUSTERED INDEX ([Date])  
  );  
CREATE TABLE Scored
  (  
	  [Date] date,
	  average_value float NULL,
	  predicted_value float NULL
	  
  )  
WITH  
  (   
    DISTRIBUTION = REPLICATE,
    CLUSTERED INDEX ([Date])  
  );

CREATE TABLE Forecast
  (  
	  [Date] date,
	  average_value float NULL,
	  predicted_value float NULL
	  
  )  
WITH  
  (   
    DISTRIBUTION = REPLICATE,
    CLUSTERED INDEX ([Date])  
  );

GO