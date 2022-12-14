-- migrate:up
CREATE TABLE hospital_time_windows(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hospital_id INT NOT NULL,
    time_window_id INT NOT NULL,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(id),
    FOREIGN KEY (time_window_id) REFERENCES time_windows(id)
);

-- migrate:down

