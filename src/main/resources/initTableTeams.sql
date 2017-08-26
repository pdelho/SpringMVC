CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    groupChar VARCHAR(1),
    position int,
    country VARCHAR(2),
    rating int
);