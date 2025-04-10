INSERT INTO "Task" ("booking_id", "task_date", "stay_duration", "end_date", "task_type", "status", "employee_id") VALUES
-- Заселение
(50, '2024-12-05', 2, '2024-12-07', 'Заселение', 'В процессе', 3),
(51, '2024-12-06', 4, '2024-12-08', 'Заселение', 'В процессе', 15),
(52, '2024-12-07', 2, '2024-12-09', 'Заселение', 'В процессе', 24),
(53, '2024-12-08', 3, '2024-12-10', 'Заселение', 'В процессе', 43),
(54, '2024-12-09', 2, '2024-12-11', 'Заселение', 'В процессе', 15),
(55, '2024-12-10', 4, '2024-12-12', 'Заселение', 'В процессе', 3),
(56, '2024-12-11', 3, '2024-12-13', 'Заселение', 'В процессе', 15),
(57, '2024-12-12', 3, '2024-12-14', 'Заселение', 'В процессе', 24),
(58, '2024-12-13', 4, '2024-12-15', 'Заселение', 'В процессе', 43),

-- Заселение (выполнено)
(59, '2024-12-14', 2, '2024-12-16', 'Заселение', 'Выполнено', 15),
(60, '2024-12-15', 3, '2024-12-17', 'Заселение', 'Выполнено', 3),
(61, '2024-12-16', 2, '2024-12-18', 'Заселение', 'Выполнено', 15),
(62, '2024-12-17', 3, '2024-12-19', 'Заселение', 'Выполнено', 24),
(63, '2024-12-18', 4, '2024-12-20', 'Заселение', 'Выполнено', 43),
(64, '2024-12-19', 2, '2024-12-21', 'Заселение', 'Выполнено', 3),
(65, '2024-12-20', 3, '2024-12-22', 'Заселение', 'Выполнено', 15),
(66, '2024-12-21', 2, '2024-12-23', 'Заселение', 'Выполнено', 24),
(67, '2024-12-22', 4, '2024-12-24', 'Заселение', 'Выполнено', 43),

-- Выселение
(69, '2024-12-23', 3, '2024-12-26', 'Выселение', 'В процессе', 15),
(71, '2024-12-25', 4, '2024-12-28', 'Выселение', 'В процессе', 3),
(73, '2024-12-26', 3, '2024-12-29', 'Выселение', 'В процессе', 15),
(74, '2024-12-27', 2, '2024-12-29', 'Выселение', 'В процессе', 24),
(76, '2024-12-28', 4, '2024-12-31', 'Выселение', 'В процессе', 43),
(77, '2024-12-29', 2, '2024-12-31', 'Выселение', 'В процессе', 15),
(78, '2024-12-30', 3, '2024-01-02', 'Выселение', 'В процессе', 3),
(79, '2024-12-31', 4, '2024-01-03', 'Выселение', 'В процессе', 15),
(80, '2024-01-01', 3, '2024-01-04', 'Выселение', 'В процессе', 24),
(81, '2024-01-02', 4, '2024-01-05', 'Выселение', 'В процессе', 43),
(83, '2024-01-03', 2, '2024-01-05', 'Выселение', 'В процессе', 15),
(84, '2024-01-04', 3, '2024-01-07', 'Выселение', 'В процессе', 3),
(85, '2024-01-05', 2, '2024-01-07', 'Выселение', 'В процессе', 15),

-- Уборка (в процессе)
(86, '2024-12-24', 2, '2024-12-26', 'Уборка', 'В процессе', 4),
(87, '2024-12-25', 3, '2024-12-27', 'Уборка', 'В процессе', 12),
(89, '2024-12-26', 2, '2024-12-28', 'Уборка', 'В процессе', 25),
(90, '2024-12-27', 3, '2024-12-29', 'Уборка', 'В процессе', 33),
(91, '2024-12-28', 4, '2024-12-30', 'Уборка', 'В процессе', 44),
(92, '2024-12-29', 2, '2024-12-31', 'Уборка', 'В процессе', 4),
(93, '2024-12-30', 3, '2024-01-02', 'Уборка', 'В процессе', 33),

-- Уборка (выполнено)
(95, '2024-12-31', 3, '2024-01-02', 'Уборка', 'Выполнено', 44),
(96, '2024-01-01', 2, '2024-01-03', 'Уборка', 'Выполнено', 25),

-- Ремонт (в процессе)
(70, '2024-12-23', 2, '2024-12-25', 'Ремонт', 'В процессе', 11),
(72, '2024-12-25', 3, '2024-12-28', 'Ремонт', 'В процессе', 21),
(75, '2024-12-27', 3, '2024-12-30', 'Ремонт', 'В процессе', 32),
(82, '2024-12-30', 4, '2024-01-02', 'Ремонт', 'В процессе', 40),

-- Ремонт (выполнено)
(71, '2024-12-24', 2, '2024-12-26', 'Ремонт', 'Выполнено', 11),
(73, '2024-12-26', 3, '2024-12-29', 'Ремонт', 'Выполнено', 21),

-- Уборка (в процессе)
(88, '2024-12-24', 2, '2024-12-26', 'Уборка', 'В процессе', 4),
(94, '2024-12-26', 3, '2024-12-28', 'Уборка', 'В процессе', 33),

-- Уборка (выполнено)
(97, '2024-12-30', 2, '2024-12-31', 'Уборка', 'Выполнено', 44);
