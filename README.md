# PLP-Database-Module

# Assignment steps

1. Provide the SQL queries for each step of the assignment.
2. Include comments in your SQL code to explain each step.
3. Include a brief explanation or justification for any design decisions you made.



1. Create a new MySQL database named "UniversityDB" using any appropriate MySQL client or command-line tool.
2. Design a table named "Students" with the following attributes:
    StudentID (Integer, Primary Key)
    FirstName (VARCHAR, Maximum length 50)
    LastName (VARCHAR, Maximum length 50)
    Age (Integer)
    Major (VARCHAR, Maximum length 50)
3. Insert at least 5 records into the "Students" table with sample data.
4. Alter the "Students" table to add a new column named "GPA" with a data type appropriate for storing decimal values.
5. Insert GPA values for the existing records in the "Students" table.
6. Rename the table from "Students" to "EnrolledStudents."
7. Create a new table named "Courses" with the following attributes:
    CourseID (Integer, Primary Key)
    CourseName (VARCHAR, Maximum length 100)
    Instructor (VARCHAR, Maximum length 100)
    Credits (Integer)
8. Insert at least 3 records into the "Courses" table with sample data.
9. Drop the "EnrolledStudents" table from the database.
