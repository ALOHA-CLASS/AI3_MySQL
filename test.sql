-- Active: 1745889698386@@127.0.0.1@3306@employees
-- 부서별 사원수와 최고 급여 직원 조회

-- 1. 부서별 사원수
SELECT de.dept_no, COUNT(*) 
FROM dept_emp de
WHERE de.from_date <= CURRENT_DATE AND de.to_date >= CURRENT_DATE
GROUP BY de.dept_no
;

-- 2. 부서별 최고 급여
SELECT de.dept_no, MAX(s.salary) AS '최고급여'
FROM dept_emp de
     JOIN salaries S ON de.emp_no = s.emp_no
WHERE de.from_date <= CURRENT_DATE AND de.to_date >= CURRENT_DATE
GROUP BY de.dept_no
;