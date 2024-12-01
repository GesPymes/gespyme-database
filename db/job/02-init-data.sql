
USE job_database;

INSERT INTO `job_database`.`jobs_by_calendar` (`jobs_by_calendar_id`, `job_id`, `calendar_id`)
VALUES
    ('jobs_by_calendar_1', 'job_1', 'calendar_1'),
    ('jobs_by_calendar_2', 'job_2', 'calendar_2'),
    ('jobs_by_calendar_3', 'job_3', 'calendar_2'),
    ('jobs_by_calendar_4', 'job_4', 'calendar_2');

INSERT INTO `job_database`.`periodic_job` (`job_id`, `jobs_by_calendar_id`, `customer_id`, `employee_id`, `periodicity`, `description`)
VALUES
    ('periodic_job_1', 'jobs_by_calendar_4', 'customer_1', 'employee_1', '1', 'Monthly system maintenance');

INSERT INTO `job_database`.`job` (`job_id`, `jobs_by_calendar_id`, `customer_id`, `employee_id`, `description`)
VALUES
    ('job_1', 'jobs_by_calendar_1', 'customer_1', 'b7e1bfaa-fccd-11ec-9d64-0242ac120004', 'System upgrade task'),
    ('job_2', 'jobs_by_calendar_2', 'customer_1', 'employee_1', 'Database optimization task'),
    ('job_3', 'jobs_by_calendar_3', 'f81b8b2e-fccd-11ec-9d64-0242ac120002', 'd7e1bfaa-fccd-11ec-9d64-0242ac120006', 'Log file cleaning task');

INSERT INTO `job_database`.`appointment` (`appointment_id`, `job_id`, `start_date`, `end_date`, `status`, `next_end_date`)
VALUES
    ('appointment_1', 'periodic_job_1', '2024-11-01 09:00:00', '2024-11-01 11:00:00', 'PENDING', '2024-12-01'),
    ('appointment_2', 'job_1', '2024-11-02 10:00:00', '2024-11-02 12:00:00', 'PENDING', '2024-11-09'),
    ('appointment_3', 'job_2', '2024-11-03 08:00:00', '2024-11-03 10:00:00', 'PENDING', '2024-11-04'),
    ('appointment_4', 'job_1', '2024-11-01 09:00:00', '2024-11-01 11:00:00', 'CANCELLED', '2024-12-01');


INSERT INTO `job_database`.`users_by_calendar` (`users_by_calendar_id`, `calendar_id`, `user_id`)
VALUES
    ('user_by_calendar_1', 'calendar_1', 'admin_1'),
    ('user_by_calendar_2', 'calendar_2', 'user_1'),
    ('user_by_calendar_2', 'calendar_2', 'user_2');

INSERT INTO `job_database`.`calendar` (`calendar_id`, `jobs_by_calendar_id`, `users_by_calendar_id`, `calendar_name`)
VALUES
    ('calendar_1', 'jobs_by_calendar_1', 'user_by_calendar_1', 'Admin Calendar'),
    ('calendar_2', 'jobs_by_calendar_2', 'user_by_calendar_2', 'Employee Calendar');
