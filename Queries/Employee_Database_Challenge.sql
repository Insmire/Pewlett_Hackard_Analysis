-- The Number of Retiring Employees by Title
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
-- INTO retirement_titles
FROM employees AS e
    INNER JOIN titles as t
        ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with ORDER BY to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(ut.title), ut.title
-- INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
-- INTO mentorship_eligibility
FROM employees as e
    INNER JOIN dept_emp as de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles as t
        ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- check row 3 employee information
SELECT * FROM mentorship_eligibility;

SELECT *
FROM employees as e
WHERE e.emp_no = 10291
AND e.first_name = 'Dipayan'
AND e.last_name = 'Seghrouchni'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

SELECT *
FROM titles as t
WHERE t.emp_no = 10291;

-- avg of retiring employees per title and sum of all employees
-- https://www.w3schools.com/sql/sql_count_avg_sum.asp
SELECT AVG(count) FROM retiring_titles;
SELECT SUM(count) FROM retiring_titles;

-- count of eligible mentors by title
SELECT COUNT(me.title), me.title
INTO mentor_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

-- Order mentors by descending(most recent) hire-date
SELECT me.emp_no,
	me.first_name,
	me.last_name,
	me.from_date,
	me.title
INTO mentor_from_date
FROM mentorship_eligibility as me
ORDER BY from_date DESC;

-- find mentor info
-- order by ascending salary
-- Posgres requires using alias for subqueries
-- Using alias is generally good practice
-- subquery code from https://stackoverflow.com/questions/9795660/postgresql-distinct-on-with-different-order-by
SELECT *
INTO mentor_salary
FROM (SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title,
    s.salary
FROM employees as e
    INNER JOIN dept_emp as de
        ON (e.emp_no = de.emp_no)
    INNER JOIN titles as t
        ON (e.emp_no = t.emp_no)
    INNER JOIN salaries as s
        ON (e.emp_no = s.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no) a
ORDER BY a.salary ASC;
