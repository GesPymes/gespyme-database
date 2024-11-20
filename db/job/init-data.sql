---------------------------------------
-- Insertar datos de ejemplo en `job_database`.`job_by_calendar`
-- -----------------------------------------------------
INSERT INTO `job_database`.`job_by_calendar` (`jobs_by_calendar_id`, `job_id`, `calendar_id`)
VALUES
    ('a33f74c4-fccd-11ec-9d64-0242ac120002', 'b33f74c4-fccd-11ec-9d64-0242ac120002', 'c33f74c4-fccd-11ec-9d64-0242ac120002'),
    ('d33f74c4-fccd-11ec-9d64-0242ac120003', 'e33f74c4-fccd-11ec-9d64-0242ac120003', 'f33f74c4-fccd-11ec-9d64-0242ac120003'),
    ('g33f74c4-fccd-11ec-9d64-0242ac120003', 'h33f74c4-fccd-11ec-9d64-0242ac120003', 'i33f74c4-fccd-11ec-9d64-0242ac120003');

-- -----------------------------------------------------
-- Insertar datos de ejemplo en `job_database`.`periodic_job`
-- -----------------------------------------------------
INSERT INTO `job_database`.`periodic_job` (`job_id`, `job_by_calendar_id`, `customer_id`, `employee_id`, `periodicity`, `description`)
VALUES
    ('a1e474c4-fccd-11ec-9d64-0242ac120004', 'a33f74c4-fccd-11ec-9d64-0242ac120002', 'f81b8b2e-fccd-11ec-9d64-0242ac120001', 'b7e1bfaa-fccd-11ec-9d64-0242ac120004', 'Monthly', 'Monthly system maintenance'),
    ('b1e474c4-fccd-11ec-9d64-0242ac120005', 'd33f74c4-fccd-11ec-9d64-0242ac120003', 'f81b8b2e-fccd-11ec-9d64-0242ac120001', 'c7e1bfaa-fccd-11ec-9d64-0242ac120005', 'Weekly', 'Weekly server backup'),
    ('c1e474c4-fccd-11ec-9d64-0242ac120006', 'g33f74c4-fccd-11ec-9d64-0242ac120003', 'f81b8b2e-fccd-11ec-9d64-0242ac120002', 'd7e1bfaa-fccd-11ec-9d64-0242ac120006', 'Daily', 'Daily database cleanup');

-- -----------------------------------------------------
-- Insertar datos de ejemplo en `job_database`.`job`
-- -----------------------------------------------------
INSERT INTO `job_database`.`job` (`job_id`, `job_by_calendar_id`, `customer_id`, `employee_id`, `description`)
VALUES
    ('d1e474c4-fccd-11ec-9d64-0242ac120007', 'a33f74c4-fccd-11ec-9d64-0242ac120002', 'f81b8b2e-fccd-11ec-9d64-0242ac120001', 'b7e1bfaa-fccd-11ec-9d64-0242ac120004', 'System upgrade task'),
    ('e1e474c4-fccd-11ec-9d64-0242ac120008', 'd33f74c4-fccd-11ec-9d64-0242ac120003', 'f81b8b2e-fccd-11ec-9d64-0242ac120001', 'c7e1bfaa-fccd-11ec-9d64-0242ac120005', 'Database optimization task'),
    ('f1e474c4-fccd-11ec-9d64-0242ac120009', 'g33f74c4-fccd-11ec-9d64-0242ac120003', 'f81b8b2e-fccd-11ec-9d64-0242ac120002', 'd7e1bfaa-fccd-11ec-9d64-0242ac120006', 'Log file cleaning task');

-- -----------------------------------------------------
-- Insertar datos de ejemplo en `job_database`.`appointment`
-- -----------------------------------------------------
INSERT INTO `job_database`.`appointment` (`appointment_id`, `job_id`, `start_date`, `end_date`, `status`, `next_end_date`)
VALUES
    ('g33f74c4-fccd-11ec-9d64-0242ac120010', 'd1e474c4-fccd-11ec-9d64-0242ac120007', '2024-11-01 09:00:00', '2024-11-01 11:00:00', 'Scheduled', '2024-12-01'),
    ('h33f74c4-fccd-11ec-9d64-0242ac120011', 'e1e474c4-fccd-11ec-9d64-0242ac120008', '2024-11-02 10:00:00', '2024-11-02 12:00:00', 'Completed', '2024-11-09'),
    ('i33f74c4-fccd-11ec-9d64-0242ac120012', 'f1e474c4-fccd-11ec-9d64-0242ac120009', '2024-11-03 08:00:00', '2024-11-03 10:00:00', 'Cancelled', '2024-11-04');

-- -----------------------------------------------------
-- Insertar datos de ejemplo en `job_database`.`users_by_calendar`
-- -----------------------------------------------------
INSERT INTO `job_database`.`users_by_calendar` (`users_by_calendar_id`, `calendar_id`, `user_id`)
VALUES
    ('j33f74c4-fccd-11ec-9d64-0242ac120013', 'a33f74c4-fccd-11ec-9d64-0242ac120002', 'b1e1bfaa-fccd-11ec-9d64-0242ac120007'),
    ('k33f74c4-fccd-11ec-9d64-0242ac120014', 'd33f74c4-fccd-11ec-9d64-0242ac120003', 'b1e1bfaa-fccd-11ec-9d64-0242ac120008'),
    ('l33f74c4-fccd-11ec-9d64-0242ac120015', 'g33f74c4-fccd-11ec-9d64-0242ac120003', 'b1e1bfaa-fccd-11ec-9d64-0242ac120009');

-- -----------------------------------------------------
-- Insertar datos de ejemplo en `job_database`.`calendar`
-- -----------------------------------------------------
INSERT INTO `job_database`.`calendar` (`calendar_id`, `jobs_by_calendar_id`, `user_by_calendar_id`, `calendar_name`)
VALUES
    ('m33f74c4-fccd-11ec-9d64-0242ac120016', 'a33f74c4-fccd-11ec-9d64-0242ac120002', 'j33f74c4-fccd-11ec-9d64-0242ac120013', 'Admin Calendar'),
    ('n33f74c4-fccd-11ec-9d64-0242ac120017', 'd33f74c4-fccd-11ec-9d64-0242ac120003', 'k33f74c4-fccd-11ec-9d64-0242ac120014', 'Employee1 Calendar');
