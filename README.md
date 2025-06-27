# 📘 Task 4 – Aggregate Functions and Grouping (Skill-Swap E-learning Platform)

## 🎯 Objective

The goal of this task is to use **aggregate functions** like `SUM()`, `COUNT()`, `AVG()` and learn how to group and summarize data using `GROUP BY` and `HAVING` in SQL.

---

## 🛠 Tools Used

- MySQL Workbench
- Screenshot Tool (Snipping Tool or Snip & Sketch)
- GitHub

---

## 🧱 Tables Used

I used the following tables from my Skill-Swap database:

- `Users`
- `Courses`
- `Payments`
- `Enrollments`

---

## 🧪 Step-by-Step SQL Queries

---

### 🔹 1. Count Total Users
SELECT COUNT(*) AS total_users FROM Users;
📸 Screenshot: screenshots/count_total_users.png
![Screenshot 2025-06-27 111908](https://github.com/user-attachments/assets/ee79aa69-12a3-4f59-a1c9-4f2d3b98cb0f)

🔹 2. Count Only Educators

SELECT COUNT(user_id) AS total_educators
FROM Users
WHERE role = 'educator';
📸 Screenshot: screenshots/count_educators.png
![Screenshot 2025-06-27 111936](https://github.com/user-attachments/assets/b6502974-e3c1-4f65-b077-e98c6095bfd5)

🔹 3. Total Revenue from Payments

SELECT SUM(amount) AS total_revenue FROM Payments;
📸 Screenshot: screenshots/sum_total_revenue.png
![Screenshot 2025-06-27 112745](https://github.com/user-attachments/assets/e3cc9b89-a7b5-4b0b-a00a-e649d74055ac)

🔹 4. Average Course Price

SELECT AVG(price) AS average_price FROM Courses;
📸 Screenshot: screenshots/avg_course_price.png
![Screenshot 2025-06-27 112914](https://github.com/user-attachments/assets/7c311017-85fa-422b-878c-5e345c9aecc7)

🔹 5. Rounded Average Price (2 decimals)

SELECT ROUND(AVG(price), 2) AS rounded_avg_price FROM Courses;
📸 Screenshot: screenshots/rounded_avg_price.png
![Screenshot 2025-06-27 112935](https://github.com/user-attachments/assets/781d0ae7-3379-4aea-a3c9-a5c23cfb4ea7)

🔹 6. Total Courses Created by Each Educator

SELECT educator_id, COUNT(course_id) AS total_courses
FROM Courses
GROUP BY educator_id;
📸 Screenshot: screenshots/group_courses_by_educator.png
![Screenshot 2025-06-27 113000](https://github.com/user-attachments/assets/98238969-baa5-487c-84d0-626bc50aa8bb)

🔹 7. Total Payments Made by Each User

SELECT user_id, SUM(amount) AS total_spent
FROM Payments
GROUP BY user_id;
📸 Screenshot: screenshots/group_payments_by_user.png
![Screenshot 2025-06-27 113019](https://github.com/user-attachments/assets/b263546e-ba52-4ddf-9a7e-7ce806796620)

🔹 8. Users Who Spent More Than ₹1000

SELECT user_id, SUM(amount) AS total_spent
FROM Payments
GROUP BY user_id
HAVING total_spent > 1000;
📸 Screenshot: screenshots/having_users_spent_1000.png
![Screenshot 2025-06-27 113050](https://github.com/user-attachments/assets/8602ed11-16e4-42e7-9d0c-a42c2229d70c)

🔹 9. Group Users by Role and Registration Date

SELECT role, DATE(registered_at) AS join_date, COUNT(*) AS total_users
FROM Users
GROUP BY role, DATE(registered_at);
📸 Screenshot: screenshots/group_by_role_and_date.png
![Screenshot 2025-06-27 113117](https://github.com/user-attachments/assets/e88917cd-f341-4d8c-9fad-cf001daa83b0)

📁 Files in This Repository
File Name	Description
Skill_Swap_Select_Task03_ScreenShort.sql	SQL file with all 9 queries
README.md	This file, explaining the steps
screenshots_aggregate : 	Folder with all screenshots

🧠 What I Learned
Concept	Description
COUNT(*)	Counts total number of rows
SUM()	Adds up numeric values
AVG()	Calculates average
ROUND()	Rounds numbers
GROUP BY	Groups rows based on one or more columns
HAVING	Filters grouped results
DISTINCT	Returns unique values




👨‍💻 Submitted by
Name: Alok Kumar
Email: alokkumarkaranraj@gmail.com
Role: SQL Developer Intern
Project: Skill-Swap E-learning Platform

