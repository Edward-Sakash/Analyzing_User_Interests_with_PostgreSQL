### Exercise: Analyzing User Interests with PostgreSQL

*Background:* You are a database analyst for a social media platform. The platform has a user_profiles table where each user profile contains a list of interests stored as an array. The company wants to understand the most popular interests among its users.

*Table Structure:*
sql
CREATE TABLE user_profiles (
    user_id SERIAL PRIMARY KEY,
    name TEXT,
    interests TEXT[]
);
*Sample Data:*
sql
INSERT INTO user_profiles (name, interests)
VALUES 
('Alice', ARRAY['reading', 'hiking', 'photography']),
('Bob', ARRAY['cycling', 'photography']),
('Charlie', ARRAY['reading', 'cooking']),
('Dave', ARRAY['hiking', 'cooking', 'cycling']);

*Task:* Write a SQL query to list all distinct interests in the database and count how many users have each interest. The result should be ordered by the number of users in descending order.