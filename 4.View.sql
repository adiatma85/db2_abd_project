CREATE VIEW CAR_RENTAL_SCHEMA.VIEW_LOCATION
AS 
SELECT * FROM CAR_RENTAL_SCHEMA.location;

INSERT INTO CAR_RENTAL_SCHEMA.VIEW_LOCATION (ID_LOCATION, street_address, city, state, zipcode) VALUES (8, '7001 E 16th St', 'Dallas', 'TX', 75001);