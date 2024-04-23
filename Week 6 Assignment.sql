-- Step 1: Create the "UniversityDB" database
-- The "Major" column is a VARCHAR type with a maximum length of 50 characters, assuming flexibility in major names.
-- The "GPA" column was added as a DECIMAL type with precision and scale appropriate for GPA values.
-- Credits for courses are stored as integers assuming whole credit values.
-- VARCHAR lengths were chosen based on typical lengths for names and text descriptions.

CREATE DATABASE UniversityDB;

-- Step 2: Use the created database
USE UniversityDB;

-- Step 3: Create the "Students" table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

-- Step 4: Insert at least 5 records into the "Students" table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major)
VALUES 
    (1, 'John', 'Doe', 22, 'Computer Basics'),
    (2, 'Jane', 'Doe', 20, 'Mathematics'),
    (3, 'Mike', 'Johnson', 23, 'Physics'),
    (4, 'Emma', 'Williams', 21, 'Chemistry'),
    (5, 'Lucas', 'Brown', 25, 'Biology');

-- Step 5: Alter the "Students" table to add the "GPA" column
ALTER TABLE Students
ADD COLUMN GPA DECIMAL(3, 2);

-- Step 6: Insert GPA values for the existing records in the "Students" table
UPDATE Students
SET GPA = 3.8 WHERE StudentID = 1;
UPDATE Students
SET GPA = 3.6 WHERE StudentID = 2;
UPDATE Students
SET GPA = 3.9 WHERE StudentID = 3;
UPDATE Students
SET GPA = 3.7 WHERE StudentID = 4;
UPDATE Students
SET GPA = 3.5 WHERE StudentID = 5;

-- Step 7: Rename the "Students" table to "EnrolledStudents"
ALTER TABLE Students
RENAME TO EnrolledStudents;

-- Step 8: Create the "Courses" table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

-- Step 9: Insert sample data into the "Courses" table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits)
VALUES
    (1, 'Introduction to Computer Science', 'Dr. Smith', 3),
    (2, 'Calculus I', 'Prof. Johnson', 4),
    (3, 'Biology 101', 'Dr. Williams', 3);

-- Step 10: Drop the "EnrolledStudents" table
DROP TABLE IF EXISTS EnrolledStudents;
