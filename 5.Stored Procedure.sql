CREATE PROCEDURE add_data_location (IN in_id_location SMALLINT,
                                    IN in_street_address VARCHAR(100),
                                    IN in_city VARCHAR(50),
                                    IN in_state VARCHAR(2),
                                    IN in_zipcode INT
                                    ) DYNAMIC RESULT sets 1 P1:
BEGIN
  INSERT INTO CAR_RENTAL_SCHEMA.LOCATION VALUES
              (
              in_id_location,
              in_street_address,
              in_city,
              in_state,
              in_zipcode
              );
END p1@

CALL ADD_DATA_LOCATION(9, '7002 E 16th St', 'Houston', 'TX', 77084)@