/*
Step:
1. Join Student and Friend
2. Join Package to get Student and their Friends Salary
3. Compare. Find Student with lesser Salary than its Friends Salary

*/

SELECT stu.Name from Students as stu
JOIN Packages as pac
on stu.ID = pac.ID
JOIN Friends as fr
on stu.ID = fr.ID
JOIN Packages as pac_fr
on fr.Friend_id = pac_fr.ID
where pac.Salary < pac_fr.Salary
