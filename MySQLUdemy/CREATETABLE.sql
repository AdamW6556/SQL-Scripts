CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);


CREATE TABLE customers                                                 
(
    customer_id INT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int
);
