-- migrate:up
CREATE TABLE reservations(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type int,
    reservation_number VARCHAR(300) NOT NULL UNIQUE,
    patient_id INT NOT NULL,
    hospital_id INT NOT NULL,
    time_window_id INT NOT NULL,
    status INT NOT NULL default 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE reservation (hospital_id, time_window_id),
    FOREIGN KEY (patient_id) REFERENCES patients(id),
    FOREIGN KEY (hospital_id) REFERENCES hospitals(id),
    FOREIGN KEY (time_window_id) REFERENCES time_windows(id)
);

-- migrate:down

