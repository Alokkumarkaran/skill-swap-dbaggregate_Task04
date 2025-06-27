USE SkillSwapDB;

SELECT COUNT(*) AS total_users FROM Users;

SELECT COUNT(user_id) AS total_educators
FROM Users
WHERE role = 'educator';

SELECT SUM(amount) AS total_revenue FROM Payments;

SELECT AVG(price) AS average_price FROM Courses;

SELECT ROUND(AVG(price), 2) AS rounded_avg_price FROM Courses;

SELECT educator_id, COUNT(course_id) AS total_courses
FROM Courses
GROUP BY educator_id;

SELECT user_id, SUM(amount) AS total_spent
FROM Payments
GROUP BY user_id;

SELECT user_id, SUM(amount) AS total_spent
FROM Payments
GROUP BY user_id
HAVING total_spent > 1000;

SELECT role, DATE(registered_at) AS join_date, COUNT(*) AS total_users
FROM Users
GROUP BY role, DATE(registered_at);

