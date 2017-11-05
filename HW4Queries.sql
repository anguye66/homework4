/*1) How many passengers departed Colorado on all airlines? Display the following information in this format:
Complete city name, complete state name (not the 2 character abbreviation), Airport name, Airport code (the 3
character code), the complete airline name, and the number of passengers.*/
SELECT ORIGIN_CITY_NAME, ORIGIN_STATE_NM, ORIGIN AS AIRPORT_CODE, UNIQUE_CARRIER_NAME AS AIRLINE_NAME, PASSENGERS
FROM datacsv_10038
WHERE ORIGIN_STATE_NM='Colorado';

/*2) Same information and format but freight, not passengers*/
SELECT ORIGIN_CITY_NAME, ORIGIN_STATE_NM, ORIGIN AS AIRPORT_CODE, UNIQUE_CARRIER_NAME AS AIRLINE_NAME, FREIGHT
FROM datacsv_10038
WHERE ORIGIN_STATE_NM='Colorado';

/*3) How many passengers arrived in Colorado from outside Colorado? Display the following information in
this format:
Origin city name & state, destination city in colorado, airline name*/
SELECT ORIGIN_CITY_NAME, ORIGIN_STATE_NM, DEST_CITY_NAME,UNIQUE_CARRIER_NAME AS AIRLINE_NAME,
PASSENGERS
FROM datacsv_10038
WHERE ORIGIN_STATE_NM!=DEST_STATE_NM
AND DEST_STATE_NM='Colorado';

/*4) List all the flights into Denver that the distance was between 500 and 1200 miles. Display the following
information:
Origin city and state, airline name*/
SELECT ORIGIN_CITY_NAME, ORIGIN_STATE_NM, UNIQUE_CARRIER_NAME AS AIRLINE_NAME
FROM datacsv_10038
WHERE ORIGIN_CITY_NAME= 'Denver, CO'
AND DISTANCE BETWEEN '500' AND '1200';



