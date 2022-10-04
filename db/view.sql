CREATE VIEW employee_view AS SELECT employee_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_full_name, hire_date, job_title, shop_id 
    FROM `employee` e
