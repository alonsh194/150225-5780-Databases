CREATE TABLE adress
(
  adressID INT NOT NULL,
  city_name VARCHAR(20) NOT NULL,
  street_name VARCHAR(20) NOT NULL,
  building_number NUMERIC(3) NOT NULL,
  floor_number NUMERIC(2) NOT NULL,
  apartment_number NUMERIC(4) NOT NULL,
  postal_code NUMERIC(10) NOT NULL,
  PRIMARY KEY (adressID)
);

CREATE TABLE payment
(
  credit_number NUMERIC(16) NOT NULL,
  expiration_date DATE NOT NULL,
  security_code NUMERIC(4) NOT NULL,
  PRIMARY KEY (credit_number)
);

CREATE TABLE user
(
  userName VARCHAR(20) NOT NULL,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  phone_number NUMERIC(10) NOT NULL,
  password VARCHAR(6) NOT NULL,
  mail_adress VARCHAR(30) NOT NULL,
  URL_website VARCHAR(30) NOT NULL,
  role VARCHAR(20) NOT NULL,
  adressID INT NOT NULL,
  credit_number NUMERIC(16),
  PRIMARY KEY (userName),
  FOREIGN KEY (adressID) REFERENCES adress(adressID),
  FOREIGN KEY (credit_number) REFERENCES payment(credit_number)
);

