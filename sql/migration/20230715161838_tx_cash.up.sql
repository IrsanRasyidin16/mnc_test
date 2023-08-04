-- Table tx_cash
CREATE TABLE tx_cash (
  id VARCHAR(100) PRIMARY KEY,
  id_vehicle VARCHAR(50) REFERENCES ms_vehicle (id),
  id_customer VARCHAR(50) REFERENCES ms_customer (id),
  price DECIMAL NOT NULL,
  date_payment TIMESTAMP NOT NULL,
  created_at TIMESTAMP NOT NULL,
  created_by VARCHAR(50) NOT NULL
);