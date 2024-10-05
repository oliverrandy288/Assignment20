-- Creating the Members table
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

-- Creating the WorkoutSessions table
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Inserting records into the Members table
INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 34),
(3, 'Emily Johnson', 22);

-- Inserting records into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-10-05', 'Morning', 'Yoga'),
(2, 1, '2024-10-06', 'Morning', 'Pilates'),
(3, 2, '2024-10-05', 'Evening', 'Weightlifting'),
(4, 3, '2024-10-05', 'Afternoon', 'Cardio');

-- Updating the workout session time for Jane Doe
UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 1 AND session_time = 'Morning';

-- Deleting John Smith's record from the Members table
DELETE FROM Members
WHERE name = 'John Smith';
