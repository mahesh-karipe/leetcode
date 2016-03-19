DELETE p1
FROM Person as p1, Person as p2
WHERE (p1.Email   = p2.Email OR p1.Email IS NULL AND p2.Email IS NULL)
AND p1.Id > p2.Id;
