CREATE TABLE locations_copy
(
  location_id     NUMBER      NOT NULL    PRIMARY KEY,
  street_address  VARCHAR2(40),
  postal_code     VARCHAR2(40),
  city            VARCHAR2(40),
  state_province  VARCHAR2(40),
  country_id      CHAR(2) REFERENCES countries_copy(country_id)
);

CREATE TABLE departments_copy
(
  department_id   NUMBER(4,0) NOT NULL    PRIMARY KEY,
  department_name VARCHAR2(30),
  manager_id     NUMBER(6,0),
  location_id    NUMBER(4,0) REFERENCES locations_copy(location_id)
);