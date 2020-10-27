-- CREATE USER & LOGIN TABLE WITH POSTGRESQL

-- Create user table
CREATE TABLE users (
    id serial PRIMARY key,
    name VARCHAR(100),
    email text UNIQUE NOT NULL,
    entries BIGINT DEFAULT 0,
    joined TIMESTAMP NOT NULL
);

-- Create login table
CREATE TABLE login (
    id serial PRIMARY KEY,
    hash varchar(100) NOT NULL,
    email text UNIQUE NOT NULL
);
