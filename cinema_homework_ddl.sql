SELECT *
FROM customer;

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(15)
);
CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    amount INTEGER,
    payment_date TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    payment_id INTEGER,
    refreshment VARCHAR(30),
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id)
);
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    payment_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (payment_id) REFERENCES payment(payment_id)
);
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    run_time  INTEGER,
    rating VARCHAR(5),
    title VARCHAR(10),
    starring VARCHAR(50),
);

ALTER TABLE movie
ADD FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id);

ALTER TABLE customer
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE customer
ALTER COLUMN last_name SET NOT NULL;