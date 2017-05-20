CREATE TABLE valves (
       id serial PRIMARY KEY,
       registered timestamp without time zone default (now() at time zone 'utc'),
       name varchar (50) NOT NULL
);
