CREATE TABLE IF NOT EXISTS dim_airport (
    ident VARCHAR(10) NOT NULL,
    type VARCHAR(50),
    name VARCHAR(250),
    elevation_ft FLOAT(10),
    iso_country VARCHAR(10),
    iso_region VARCHAR(10),
    municipality VARCHAR(250),
    longitude FLOAT(10),
    latitude FLOAT(10),
    PRIMARY KEY (ident)
);

CREATE TABLE IF NOT EXISTS dim_time (
    arrdate VARCHAR(10) NOT NULL,
    arrival_date VARCHAR(50),
    day VARCHAR(50),
    month FLOAT(10),
    year VARCHAR(10),
    week VARCHAR(10),
    weekday VARCHAR(50),
    PRIMARY KEY (arrdate)
);

CREATE TABLE IF NOT EXISTS dim_state (
    state_code VARCHAR(10) NOT NULL,
    state VARCHAR(50),
    median_age FLOAT(10),
    male_population FLOAT(10),
    female_population FLOAT(10),
    total_population FLOAT(10),
    number_of_veterans FLOAT(10),
    foreign_born FLOAT(10),
    average_household_size FLOAT(10),
    race VARCHAR(50),
    count INT,
    PRIMARY KEY (state_code)
);

CREATE TABLE IF NOT EXISTS dim_visa (
    visa_id int NOT NULL,
    i94visa FLOAT(10),
    visatype VARCHAR(10),
    PRIMARY KEY (visa_id)
);

-- CREATE TABLE IF NOT EXISTS dim_status (
--     status_id int NOT NULL AUTO_INCREMENT ,
--     arrival_flag VARCHAR(10),
--     departure_flag VARCHAR(10),
--     match_flag VARCHAR(10),
--     PRIMARY KEY (status_id)
-- );

CREATE TABLE IF NOT EXISTS fact_immigration (
    cicid FLOAT(10) NOT NULL,
    ident VARCHAR(10),
    visa_id INT,
    arrdate VARCHAR(10),
    state_code VARCHAR(10),
    depdate FLOAT(10),
    i94res FLOAT(10),
    i94mode FLOAT(10),
    i94cit FLOAT(10),
    airline VARCHAR(10),
    fltno VARCHAR(10),
    PRIMARY KEY (cicid),
    FOREIGN KEY (ident) REFERENCES dim_airport(ident),
    -- FOREIGN KEY (status_id) REFERENCES Persons(status_id),
    FOREIGN KEY (visa_id) REFERENCES dim_visa(visa_id),
    FOREIGN KEY (arrdate) REFERENCES dim_time(arrdate),
    FOREIGN KEY (state_code) REFERENCES dim_state(state_code)
);