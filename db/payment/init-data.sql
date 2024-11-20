-- -----------------------------------------------------
-- Insertar datos de ejemplo en `payment_database`.`payment`
-- -----------------------------------------------------
INSERT INTO `payment_database`.`payment` (`payment_id`, `appointment_id`, `status`)
VALUES
    ('c33f74c4-fccd-11ec-9d64-0242ac120002', 'f33f74c4-fccd-11ec-9d64-0242ac120002', 'Paid'),
    ('d33f74c4-fccd-11ec-9d64-0242ac120002', 'g33f74c4-fccd-11ec-9d64-0242ac120002', 'Pending'),
    ('e33f74c4-fccd-11ec-9d64-0242ac120002', 'h33f74c4-fccd-11ec-9d64-0242ac120002', 'Failed');
