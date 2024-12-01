USE user_database;

INSERT INTO `app_user` (`user_id`, `password`, `email`,  `role`, `user_name`)
VALUES ('admin_1', 'admin-gespyme-2024-99Pabcde', 'admi.gespyme@gmail.com',  'ADMIN', 'name');

INSERT INTO `app_user` (`user_id`, `password`, `email`, `role`, `user_name`)
VALUES ('user_1', 'system_pas', NULL, 'System', 'SYSTEM');

INSERT INTO `app_user` (`user_id`, `password`, `email`, `role`, `user_name`)
VALUES ('user_2', 'employee-gespyme-2024-99Qabcde', 'gespyme.employee@gmail.com', 'USER','Regular User');
