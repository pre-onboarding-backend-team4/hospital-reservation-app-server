-- migrate:up
CREATE TABLE time_windows(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    start_time TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- migrate:down

