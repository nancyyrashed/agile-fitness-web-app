
-- This makes sure that foreign_key constraints are observed and that errors will be thrown for violations
PRAGMA foreign_keys=ON;

BEGIN TRANSACTION;

-- Create your tables with SQL commands here (watch out for slight syntactical differences with SQLite vs MySQL)

 CREATE TABLE IF NOT EXISTS users (
            user_id INTEGER PRIMARY KEY AUTOINCREMENT,
            first_name TEXT NOT NULL,
            last_name TEXT NOT NULL,
            password_ TEXT NOT NULL,
            age INTEGER NOT NULL,
            email TEXT NOT NULL UNIQUE,
            phone_number TEXT NOT NULL,
            plan_option TEXT NOT NULL CHECK(plan_option IN ('Free Plan', 'Premium Plan', 'Student Plan')),
            bio TEXT,
            profile_image TEXT
);

CREATE TABLE IF NOT EXISTS tracking (
    tracking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER UNIQUE,  
    working_out TEXT,
    dieting TEXT,
    physical_measurements TEXT,
    wellness_tracking TEXT,
    FOREIGN KEY(user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS feedback (
    feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    problem TEXT NOT NULL,
    suggestions TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS gyms_submission (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    gym_name TEXT NOT NULL,
    owner_name TEXT NOT NULL, 
    phone_number TEXT NOT NULL,
    location_offering TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS available_gyms (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    gym_name TEXT NOT NULL,                 
    gym_location TEXT NOT NULL,             
    working_hours TEXT NOT NULL,          
    capacity TEXT NOT NULL,     
    gym_image_path TEXT NOT NULL,       
    offering TEXT                         
);

CREATE TABLE IF NOT EXISTS booking (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    gym_id INTEGER,
    booking_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (gym_id) REFERENCES available_gyms(id)
);


-- Insert default data (if necessary here)

INSERT INTO available_gyms (gym_name, gym_location, working_hours, capacity, gym_image_path, offering) 
VALUES ('FitSync Gym', 'New Cairo, Egypt', 'Mo-Fr 8:00 - 18:00', ' Fits 150+', 'Images/gym1_1.jpeg,Images/gym1_2.jpeg,Images/gym1_3.jpeg', 'Diverse Classes, Indoor Heated Pool, State-of-the-art Equipment' );

INSERT INTO available_gyms (gym_name, gym_location, working_hours, capacity, gym_image_path, offering) 
VALUES ('FitSync Gym', 'Heliopolis, Egypt', 'Mo-Fr 8:00 - 18:00', 'Fits 100+', 'Images/gym2_1.jpeg,Images/gym2_2.jpeg,Images/gym2_3.jpeg', 'Yoga Classes, Crossfit Programs, State-of-the-art Equipment');

INSERT INTO available_gyms (gym_name, gym_location, working_hours, capacity, gym_image_path, offering) 
VALUES ('FitSync Gym', 'Sheikh Zayed, Egypt', 'Mo-Fr 8:00 - 18:00', 'Fits 100+', 'Images/gym3_1.jpeg,Images/gym3_2.jpeg,Images/gym3_3.jpeg', 'Sauna, Crossfit Programs, Diverse Classes');

INSERT INTO available_gyms (gym_name, gym_location, working_hours, capacity, gym_image_path, offering) 
VALUES ('LA7', 'New Cairo, Egypt', 'Mo-Fr 8:00 - 18:00', 'Fits 150+', 'Images/gym4_1.jpeg, Images/gym4_2.jpeg, Images/gym4_3.jpeg', 'Personalized Training, Sauna, State-of-the-art Equipment');

INSERT INTO available_gyms (gym_name, gym_location, working_hours, capacity, gym_image_path, offering) 
VALUES ('LA7', 'Sheikh Zayed, Egypt', 'Mo-Fr 8:00 - 18:00', 'Fits 100+', 'Images/gym5_1.jpeg, Images/gym5_2.jpeg, Images/gym5_3.jpeg', 'Personalized Training, State-of-the-art Equipment, Luxurious Amenities');
COMMIT;

