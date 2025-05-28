-- -------------------------
-- Create `users` table first
-- -------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- -------------------------
-- Create `mood_data` table
-- -------------------------
CREATE TABLE IF NOT EXISTS `mood_data` (
  `mood_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `mood_level` INT NOT NULL,
  `mood_comments` TEXT,
  `mood_triggers` INT DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mood_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `mood_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- -------------------------
-- Create `sleep_data` table
-- -------------------------
CREATE TABLE IF NOT EXISTS `sleep_data` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_age` INT NOT NULL,
  `hours_slept` FLOAT NOT NULL,
  `sleep_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- -------------------------
-- Create `user_goals` table
-- -------------------------
CREATE TABLE IF NOT EXISTS `user_goals` (
  `goal_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT DEFAULT NULL,
  `goal_description` TEXT,
  `is_achieved` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`goal_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_goals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
