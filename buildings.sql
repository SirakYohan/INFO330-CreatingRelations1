CREATE TABLE buildings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY (buildingid) REFERENCES buildings(id)
);