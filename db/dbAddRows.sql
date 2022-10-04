INSERT INTO coffee_shop (shop_id, shop_name, city, state)
    VALUES (111, 'sams coffee', 'Denver', 'CO'), (222, 'coffee please', 'Raleigh', 'NC'), (333, 'xTreme Coffee', 'Southern Pines', 'NC');

INSERT INTO employee (employee_id, first_name, last_name, hire_date, job_title, shop_id)
    VALUES (123, 'Sam', 'Feese', '1999-04-05', 'coffee guy', 222), (234, 'Ashley', 'Billings', '2006-05-04', 'Hostess' , 111), (345, 'Greg', 'Smith', '2010-05-04', 'Owner' , 333);

INSERT INTO supplier (supplier_id, company_name, country, sales_contact_name, email)
    VALUES (9999, 'Coughee', 'United States', '', 'coughee@fake.com'), (3456, 'Another Coffee', 'Mexico', 'Steve', 'anothercoffee@fake.com'), (2356, 'H2Oexpress', 'Grenada', 'Carl', 'h2o@fake.com');

INSERT INTO coffee (coffee_id, shop_id, supplier_id, coffee_name, price_per_pound)
    VALUES (1234, 111, 9999, 'COLD BREW', 15.99), (2433, 111, 3456, 'Steves Coffee', 8.99), (78467, 333, 2356, 'Hotter Than McDonalds', 2.95);