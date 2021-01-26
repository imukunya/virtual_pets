CREATE DATABASE virtual_pets;

CREATE TABLE persons (id serial PRIMARY KEY, name varchar, email varchar);

CREATE TABLE monsters (id serial PRIMARY KEY, name varchar, personID int);

Remember, whenever we alter the database, we must drop and re-create the test database:

virtual_pets=# DROP DATABASE virtual_pets_test;
DROP DATABASE

virtual_pets=# CREATE DATABASE virtual_pets_test WITH TEMPLATE virtual_pets;
CREATE DATABASE