-- Table tx_rent
CREATE TABLE tx_rent (
  id VARCHAR(100) PRIMARY KEY,
  id_vehicle VARCHAR(50) REFERENCES ms_vehicle (id),
  id_customer VARCHAR(50) REFERENCES ms_customer (id),
  price DECIMAL NOT NULL,
  date_in TIMESTAMP NULL,
  date_out TIMESTAMP NOT NULL,
  duration NUMERIC NOT NULL,
  status VARCHAR(50) NOT NULL,
  created_by VARCHAR(50) NOT NULL,  
  updated_by VARCHAR(50) NULL
);