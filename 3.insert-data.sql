-- Tabel Location
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (1, '1001 Henderson St', 'Fort Worth', 'TX', 76102);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (2, '300 Reunion Blvd', 'Dallas', 'TX', 75207);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (3, '5911 Blair Rd NW', 'Washington', 'DC', 20011);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (4, '9217 Airport Blvd', 'Los Angeles', 'CA', 90045);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (5, '310 E 64th St', 'New York', 'NY', 10021);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (6, '1011 Pike St', 'Seattle', 'WA', 98101);
INSERT INTO CAR_RENTAL_SCHEMA.location (ID_LOCATION, street_address, city, state, zipcode) VALUES (7, '5150 W 55th St', 'Chicago', 'IL', 60638);

-- Tabel Customer
INSERT INTO CAR_RENTAL_SCHEMA.customer (ID_CUSTOMER, first_name, last_name, dob, driver_license_number, email, phone) VALUES (1, 'Kelby', 'Matterdace', '1974-05-22', 'V435899293', 'kmatterdace0@oracle.com', '181-441-7828');
INSERT INTO CAR_RENTAL_SCHEMA.customer (ID_CUSTOMER, first_name, last_name, dob, driver_license_number, email, phone) VALUES (2, 'Orion', 'De Hooge', '1992-08-07', 'Z140530509', 'odehooge1@quantcast.com', '948-294-5458');
INSERT INTO CAR_RENTAL_SCHEMA.customer (ID_CUSTOMER, first_name, last_name, dob, driver_license_number, email, phone) VALUES (3, 'Sheena', 'Macias', '1981-03-10', 'W045654959', 'smacias3@amazonaws.com', NULL);
INSERT INTO CAR_RENTAL_SCHEMA.customer (ID_CUSTOMER, first_name, last_name, dob, driver_license_number, email, phone) VALUES (4, 'Irving', 'Packe', '1994-12-19', 'O232196823', 'ipacke4@cbc.ca', '157-815-8064');
INSERT INTO CAR_RENTAL_SCHEMA.customer (ID_CUSTOMER, first_name, last_name, dob, driver_license_number, email, phone) VALUES (5, 'Kass', 'Humphris', '1993-12-16', 'G055017319', 'khumphris5@xrea.com', '510-624-4189');

-- Tabel Vehicle
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (1, 'Nissan', 'Versa', 2016, 65956, 'white', 1, 1);
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (2, 'Mitsubishi', 'Mirage', 2017, 55864, 'light blue', 1, 6);
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (3, 'Chevrolet', 'Cruze', 2017, 45796, 'dark gray', 2, 5);
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (4, 'Hyundai', 'Elantra', 2018, 35479, 'black', 2, 1);
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (5, 'Volkswagen', 'Jetta', 2019, 2032, 'light gray', 3, 3);
INSERT INTO CAR_RENTAL_SCHEMA.vehicle (ID_VEHICLE, brand, model, model_year, mileage, color, vehicle_type_id, current_location_id) VALUES (6, 'Toyota', 'RAV4', 2018, 12566, 'white', 4, 7);