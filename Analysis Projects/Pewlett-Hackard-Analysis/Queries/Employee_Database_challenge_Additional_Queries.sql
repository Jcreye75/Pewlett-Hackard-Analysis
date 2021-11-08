-- Count current Mentee per titles in order to know the speciality
SELECT COUNT(me.title), me.title
INTO mentee_counts
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;
SELECT * FROM mentee_counts;

-- Create additional BD to knopw possible mentors from 1956 to 1964
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibilty_2
FROM employees as e
	INNER JOIN dept_employee as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1956-01-01' AND '1964-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.from_date DESC;

SELECT * FROM mentorship_eligibilty_2; 

SELECT COUNT(me.title), me.title
--INTO mentee_counts
FROM mentorship_eligibilty_2 AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;
