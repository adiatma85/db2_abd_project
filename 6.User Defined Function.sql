CREATE FUNCTION RENTAL_BY_PICKUP_AND_DROPOFF(pickup_date DATE, dropoff_date DATE) 
    RETURNS TABLE (
        CUSTOMER_NAME VARCHAR(100), 
        CAR_TYPE VARCHAR(50), 
        FUEL_OPTION VARCHAR(50), 
        PICKUP_LOC VARCHAR(80), 
        DROPOFF_LOC VARCHAR(80)
        ) BEGIN ATOMIC
        RETURN
               SELECT CONCAT(CONCAT(c.first_name, ', '), c.last_name) AS "Customer Name",
       vt.name AS "Car Type",
       fo.name AS "Fuel Option Selected",
       CONCAT(CONCAT(l1.city, ', '), l1.state) AS "Pickup Location",
       CONCAT(CONCAT(l2.city, ', '), l2.state) AS "Drop-off Location"
       FROM
       CAR_RENTAL_SCHEMA.rental r
       JOIN
       CAR_RENTAL_SCHEMA.customer c ON r.customer_id = c.id_customer
       JOIN
       CAR_RENTAL_SCHEMA.vehicle_type vt ON r.vehicle_type_id = vt.id_vehicle_type
       JOIN
       CAR_RENTAL_SCHEMA.fuel_option fo ON r.fuel_option_id = fo.id_fuel_option
       JOIN
       CAR_RENTAL_SCHEMA.location l1 ON r.pickup_location_id = l1.id_location
       JOIN
       CAR_RENTAL_SCHEMA.location l2 ON r.drop_off_location_id = l2.id_location
                WHERE
                    r.start_date = pickup_date
                    AND
                    r.end_date = end_date;
        END@
