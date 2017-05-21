-- Currently registered valves
CREATE TABLE valves (
  id serial PRIMARY KEY,
  registered timestamp without time zone default (now() at time zone 'utc'),
  label varchar (50) NOT NULL
);

-- The state of a valve: open or closed
CREATE TABLE status (
  is_open boolean NOT NULL,
  valve integer REFERENCES valves,
  ts timestamp without time zone default (now() at time zone 'utc')
);

-- The history of flux (rate of flow) through the valve
CREATE TABLE flux (
  quantity real NOT NULL,
  valve integer REFERENCES valves,
  ts timestamp without time zone default (now() at time zone 'utc')
);
