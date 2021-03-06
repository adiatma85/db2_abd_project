-- Table location
CREATE TABLE CAR_RENTAL_SCHEMA.LOCATION(
    ID_LOCATION SMALLINT NOT NULL PRIMARY KEY,
    STREET_ADDRESS VARCHAR(100) NOT NULL,
    CITY VARCHAR (50) NOT NULL,
    STATE VARCHAR(2) NOT NULL,
    ZIPCODE INT NOT NULL
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;

-- Zip Code index Unique
CREATE UNIQUE INDEX ZIPCODE_UNIQUE_INDEX ON CAR_RENTAL_SCHEMA.LOCATION (ZIPCODE);

-- Table Customer
CREATE TABLE CAR_RENTAL_SCHEMA.CUSTOMER(
    ID_CUSTOMER SMALLINT NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(45) NOT NULL,
    LAST_NAME VARCHAR (45) NOT NULL,
    DOB DATE NOT NULL,
    DRIVER_LICENSE_NUMBER VARCHAR(13) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    PHONE VARCHAR(12) NULL
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;

-- Table Vehicle
CREATE TABLE CAR_RENTAL_SCHEMA.VEHICLE (
    ID_VEHICLE INT NOT NULL PRIMARY KEY,
    brand VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    model_year INT NOT NULL,
    mileage INT NOT NULL,
    color VARCHAR(45) NOT NULL,
    vehicle_type_id INT NOT NULL,
    current_location_id INT NOT NULL
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;

-- Table Vehicle Type
CREATE TABLE CAR_RENTAL_SCHEMA.VEHICLE_TYPE (
    ID_VEHICLE_TYPE INT NOT NULL PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    rental_value DECIMAL(13, 2) CHECK (rental_value > 0) NOT NULL    
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;

-- Table Fuel Option
CREATE TABLE CAR_RENTAL_SCHEMA.FUEL_OPTION (
    ID_FUEL_OPTION INT NOT NULL PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    description VARCHAR(255) NULL
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;

-- Table Rental
CREATE TABLE CAR_RENTAL_SCHEMA.RENTAL (
    ID_RENTAL INT NOT NULL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    customer_id INT NOT NULL,
    vehicle_type_id INT NOT NULL,
    fuel_option_id INT NOT NULL,
    pickup_location_id INT NOT NULL,
    drop_off_location_id INT NOT NULL,    
    CONSTRAINT fk_rental_customer FOREIGN KEY (customer_id) REFERENCES CAR_RENTAL_SCHEMA.CUSTOMER (ID_CUSTOMER) ,
    CONSTRAINT fk_rental_fuel_option FOREIGN KEY (fuel_option_id) REFERENCES CAR_RENTAL_SCHEMA.FUEL_OPTION (ID_FUEL_OPTION) ,
    CONSTRAINT fk_rental_pickup_location FOREIGN KEY (pickup_location_id) REFERENCES CAR_RENTAL_SCHEMA.LOCATION (ID_LOCATION) ,
    CONSTRAINT fk_rental_dropoff_location FOREIGN KEY (drop_off_location_id) REFERENCES CAR_RENTAL_SCHEMA.LOCATION (ID_LOCATION) ,
    CONSTRAINT fk_rental_vehicle_type FOREIGN KEY (vehicle_type_id) REFERENCES CAR_RENTAL_SCHEMA.VEHICLE_TYPE (ID_VEHICLE_TYPE) 
) IN REG_HOT1 INDEX IN IDX_HOT1 LONG IN LOB_HOT1;