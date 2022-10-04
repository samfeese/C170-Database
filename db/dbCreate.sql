CREATE TABLE IF NOT EXISTS coffee_shop (shop_id INT, 
                                        shop_name VARCHAR(50), 
                                        city VARCHAR(50), 
                                        state CHAR(2), 
                                        PRIMARY KEY (shop_id)
                                        );

CREATE TABLE IF NOT EXISTS  employee (employee_id INT, 
                                      first_name VARCHAR(30), 
                                      last_name VARCHAR(30), 
                                      hire_date DATE, 
                                      job_title VARCHAR(30), 
                                      shop_id INT, 
                                      FOREIGN KEY (shop_id) REFERENCES coffee_shop(shop_id), 
                                      PRIMARY KEY (employee_id)
                                      );

CREATE TABLE IF NOT EXISTS  supplier (supplier_id INT, 
                                      company_name VARCHAR(50), 
                                      country VARCHAR(30), 
                                      sales_contact_name VARCHAR(60), 
                                      email VARCHAR(50) NOT NULL, 
                                      PRIMARY KEY (supplier_id)
                                      );

CREATE TABLE IF NOT EXISTS  coffee (coffee_id INT, 
                                    shop_id INT, 
                                    supplier_id INT, 
                                    coffee_name VARCHAR(50), 
                                    price_per_pound NUMERIC(5,2), 
                                    FOREIGN KEY (shop_id) REFERENCES coffee_shop(shop_id), 
                                    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
                                    );

-- SET FOREIGN_KEY_CHECKS = 0;
-- DROP TABLE IF EXISTS coffee_shop ;
-- DROP TABLE IF EXISTS employee;
-- DROP TABLE IF EXISTS supplier;
-- DROP TABLE IF EXISTS coffee;