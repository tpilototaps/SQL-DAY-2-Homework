SELECT*
FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone_number
)
VALUES(
    'Tapiwa',
    'Piloto',
    '123 Alpharetta St.',
    '888-888-8888'
);
INSERT INTO 

SELECT *
FROM payment;

INSERT INTO payment(
    customer_id,
    amount,
    payment_date
)
VALUES(
    2,
    15,
    '2022-11-23'
);

SELECT *
FROM ticket;

INSERT INTO ticket(
    payment_id,
    quantity
)
VALUES(
    1,
    2
);

SELECT *
FROM concession;

INSERT INTO concession(
    payment_id,
    refreshment
)
VALUES(
    1,
    'popcorn'
);

SELECT *
FROM movie;

INSERT INTO movie(
    ticket_id,
    run_time,
    rating,
    title,
    starring
)
VALUES(
    1,
    120,
    'R',
    'Top Gun',
    'Tom Cruise'
);
