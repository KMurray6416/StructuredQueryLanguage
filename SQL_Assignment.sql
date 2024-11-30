# Initiate Tables
##Task 1 SQL Data Insertion
 
CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);


CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time time,
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (name, age)
VALUES 
('Sarah', 29),
('Billie', 46),
('Bobbie', 18),
('Jane', 22);

INSERT INTO workoutsessions( session_date, session_time, activity, member_id)
VALUES
('2024-10-31', '9AM', 'pool aerobics', 4 ),
('2029-9-30', '11:30AM', 'goat yoga', 3 ),
('2016-06-14', '7PM', 'couples yoga', 1 ),
('2024-10-31', '6AM', 'gymnastics', 2 );

DELETE FROM workoutsessions
WHERE member_id = '2';

UPDATE workoutsessions
set session_time = '5PM'
WHERE activity = 'pool aerobics';

DELETE FROM Members
WHERE id = 2;

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;
