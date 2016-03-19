SELECT p.Email
FROM Person p
GROUP BY p.Email
HAVING COUNT(*) > 1
