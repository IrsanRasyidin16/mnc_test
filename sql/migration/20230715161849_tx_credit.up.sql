-- Table tx_credit
CREATE TABLE tx_credit (
  id VARCHAR(100) PRIMARY KEY,
  id_vehicle VARCHAR(50) REFERENCES ms_vehicle (id),
  id_customer VARCHAR(50) REFERENCES ms_customer (id),
  price DECIMAL NOT NULL,
  interest DECIMAL NOT NULL,
  date_in TIMESTAMP NULL,
  date_out TIMESTAMP NOT NULL,
  credit_duration NUMERIC NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  updated_at TIMESTAMP NULL,
  updated_by VARCHAR(50) NULL
);