
180. Consecutive Numbers

Write a SQL query to find all numbers that appear at least three times consecutively.

+----+-----+
| Id | Num |
+----+-----+
| 1  |  1  |
| 2  |  1  |
| 3  |  1  |
| 4  |  2  |
| 5  |  1  |
| 6  |  2  |
| 7  |  2  |
+----+-----+
For example, given the above Logs table, 1 is the only number that appears consecutively for at least three times.

+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+


# MySQL query statement Accepted

SELECT DISTINCT l2.Num AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l2.Id - l1.Id =1 
AND l3.Id - l2.Id =1
AND l1.Num = l2.Num 
AND l3.Num = l2.Num