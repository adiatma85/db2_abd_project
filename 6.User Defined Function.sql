CREATE FUNCTION RENTAL_BY_PICKUP_AND_DROPOFF(pickup_date DATE, dropoff_date DATE) 
    RETURNS TABLE (
        CUSTOMER_NAME VARCHAR(100), 
        CAR_TYPE VARCHAR(50), 
        FUEL_OPTION VARCHAR(50), 
        PICKUP_LOC VARCHAR(80), 
        DROPOFF_LOC VARCHAR(80)
        ) BEGIN 
            RETURN 
                SELECT 
                    CONCAT_WS(',', c.first_name, c.last_name) AS 'Customer Name',
                    vt.name AS 'Car Type',
                    fo.name AS 'Fuel Option Selected',
                    CONCAT_WS(',', l1.city, l1.state) AS 'Pickup Location',
                    CONCAT_WS(',', l2.city, l2.state) AS 'Drop-off Location'
                FROM
                    rental AS r
                        JOIN
                    customer AS c ON r.customer_id = c.id
                        JOIN
                    vehicle_type AS vt ON r.vehicle_type_id = vt.id
                        JOIN
                    fuel_option AS fo ON r.fuel_option_id = fo.id
                        JOIN
                    location AS l1 ON r.pickup_location_id = l1.id
                        JOIN
                    location AS l2 ON r.drop_off_location_id = l2.id
                WHERE
                    r.start_date = pickup_date
                    AND
                    r.end_date = end_date;
        END