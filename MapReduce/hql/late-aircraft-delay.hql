SELECT CAST(Year AS INT) AS Year, avg((LateAircraftDelay /ArrDelay)*100) from delay_flights GROUP BY Year SORT BY Year;