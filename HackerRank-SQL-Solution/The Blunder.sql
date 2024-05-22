-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

SELECT CEIL(ABS(AVG(CAST(REPLACE(salary, '0', '') AS DECIMAL(10, 2))) - AVG(CAST(salary AS DECIMAL(10, 2))))) AS ErrorAmount
FROM EMPLOYEES;