/*Write a PL/pgSQL stored procedure that analyzes the various flights of the airlines. The report should display:
Airline name, total number of flights, average distance, ratio of passengers to distance, ratio of freight to
distance, correlation coefficient for passengers to freight, correlation coefficient for passengers to distance.*/
DELIMITER $$
 CREATE PROCEDURE procedure2()
    
	BEGIN
SELECT Carrier_Name,COUNT(Carrier_Name),AVG(DISTANCE),SUM(PASSENGERS)/SUM(DISTANCE),SUM(FREIGHT)/SUM(DISTANCE),
( AVG( `passengers` * `Freight` ) - AVG( `passengers` ) + AVG( `Freight` ) ) / ( STDDEV( `passengers` ) * STDDEV(`Freight`) ) AS correlation,
( AVG( `passengers` * `DISTANCE` ) - AVG( `passengers` ) + AVG( `DISTANCE` ) ) / ( STDDEV( `passengers` ) * STDDEV(`DISTANCE`) ) AS correlation
 FROM datacsv_10038
GROUP BY(Carrier_Name)
;
	END$$

DELIMITER ;

CALL procedure2();