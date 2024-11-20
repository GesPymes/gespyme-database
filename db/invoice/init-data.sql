-- Inserts para la tabla `invoice_data`
INSERT INTO `invoice_database`.`invoice_data` (`invoice_data_id`, `appointment_id`, `subtotal_amount`, `tax_rate`, `total_amount`, `customer_id`)
VALUES
    ('d4eefd92-8c9f-4d39-bc4f-8f2b6769fd60', '1c9f8a74-a8b3-4c6e-985f-2d6b45c89934', 1000, 18, 1180, 'CUST001'),
    ('a7c2f98b-5c18-44f2-98c5-76c38e0b5b9b', '2c9a0a65-bb35-4d7f-9a17-7e8c4e8fbad2', 2000, 18, 2360),
    ('c9e4a6d8-25b3-497d-a8bc-94b8e7f5e3d4', '3f4b3d89-c1df-4627-b7e2-63b8ea5a4517', 500, 18, 590),
    ('f0b7b672-14e8-48ad-b5c7-80c7ad0b88d3', '4b6f5c89-c18f-4726-b6d1-71e7d9f4a9a8', 750, 18, 885),
    ('e3b1a6e4-568d-43b5-90b6-67c49c1b4c53', '5a9c2d7a-b5c8-47e6-8d92-96e6c8f9a4c7', 1200, 10, 1320);

-- Inserts para la tabla `invoice_order`
INSERT INTO `invoice_database`.`invoice_order` (`invoice_order_id`, `invoice_data_id`, `status`, `appointment_id`)
VALUES
    ('1b3e8d9c-cb67-45f5-b6e7-7a3c4e9b59c8', 'd4eefd92-8c9f-4d39-bc4f-8f2b6769fd60', 'PAID', '6c9a8e5d-5b67-4f7d-82a3-94c7b89f8e2d'),
    ('2d8f5a9c-b67d-47e8-92b3-7f6e9a3c8b7d', 'a7c2f98b-5c18-44f2-98c5-76c38e0b5b9b', 'PENDING', '7a8e5f3d-b46f-4e7d-93a8-96b5e7c9a4d2', 'ORDER-002'),
    ('3e9c5a7f-d68e-48c6-8d91-84c7b5e7a9d3', 'c9e4a6d8-25b3-497d-a8bc-94b8e7f5e3d4', 'CANCELLED', '8f7a5e3c-b79a-4f6d-83a9-96e8c7b4d5a3', 'ORDER-003'),
    ('4b5e8a7c-c69d-41f7-97a5-74e8b9c3f7a6', 'f0b7b672-14e8-48ad-b5c7-80c7ad0b88d3', 'PAID', '9e5a8c7b-4f7a-4e9d-93c8-96f8b7e5a3d4', 'ORDER-004'),
    ('5f7c8e9a-d69e-42b6-94f7-71b6c5e8a9d3', 'e3b1a6e4-568d-43b5-90b6-67c49c1b4c53', 'PENDING', 'a7b9e5c8-3f9d-4e6b-92a3-85c8e9f7a6b3', 'ORDER-005');
