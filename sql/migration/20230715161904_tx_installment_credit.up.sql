-- Table tx_installment_credit
CREATE TABLE tx_installment_credit (
  id VARCHAR(100) PRIMARY KEY,
  id_vehicle VARCHAR(50) REFERENCES ms_vehicle (id),
  id_credit VARCHAR(50) REFERENCES tx_credit (id),
  price DECIMAL NOT NULL,
  total_payment_now DECIMAL NOT NULL,
  date_payment TIMESTAMP NOT NULL,
  date_finish TIMESTAMP NOT NULL,
  due_date INT NOT NULL,
  current_credit NUMERIC NOT NULL,
  status BOOLEAN NOT NULL,
  suspend BOOLEAN NOT NULL
);