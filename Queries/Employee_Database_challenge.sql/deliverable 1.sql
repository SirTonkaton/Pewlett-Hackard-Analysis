-- Challenge
-- NUmber of titles retiring
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO ret_titles
FROM employees AS ce
	INNER JOIN titles AS ti
		ON (ce.emp_no = ti.emp_no)
	WHERE (ce.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY ce.emp_no

select * from ret_titles
ORDER BY ret_titles.emp_no;
