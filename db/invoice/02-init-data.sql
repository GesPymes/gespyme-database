USE invoice_database;
INSERT INTO `invoice_database`.`invoice_data` (`invoice_data_id`, `appointment_id`, `subtotal_amount`, `tax_rate`, `total_amount`, `customer_id`)
VALUES
    ('invoice_data_1', 'appointment_1', 1000, 18, 1180, 'customer_1'),
    ('invoice_data_2', 'appointment_2', 2000, 18, 2360, 'customer_1'),
    ('invoice_data_3', 'appointment_4', 2000, 18, 2360, 'customer_1'),
    ('invoice_data_4', 'appointment_3', 500, 18, 590, 'customer_1');


INSERT INTO `invoice_database`.`invoice_order` (`invoice_order_id`, `invoice_data_id`, `status`, `appointment_id`)
VALUES
    ('invoice_order_1', 'invoice_data_1', 'CREATED', 'appointment_1'),
    ('invoice_order_2', 'invoice_data_2', 'DELETED', 'appointment_2'),
    ('invoice_order_3', 'invoice_data_1', 'SIGNED', 'appointment_1'),
    ('invoice_order_4', 'invoice_data_2', 'APPROVED', 'appointment_3'),
    ('invoice_order_5', 'invoice_data_2', 'SENT', 'appointment_4');
