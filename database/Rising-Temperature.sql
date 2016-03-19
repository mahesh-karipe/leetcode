SELECT t2.Id 
FROM Weather t1
LEFT JOIN Weather t2 ON DATE_ADD(t1.Date, INTERVAL 1 DAY) = t2.Date
WHERE t2.Temperature > t1.Temperature
