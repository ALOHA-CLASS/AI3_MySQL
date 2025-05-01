-- 입사 날짜별 사원 수 조회

WITH hire_count AS (
     SELECT hire_date, COUNT(*) AS emp_count
     FROM employees
     GROUP BY hire_date
)
SELECT hire_date, emp_count
FROM hire_count
ORDER BY emp_count DESC;
