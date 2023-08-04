-- Table ms_vehicle
CREATE TABLE ms_vehicle (
  id VARCHAR(100) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(50) NOT NULL,
  identification_number BIGINT NOT NULL,
  machine_number BIGINT NOT NULL,
  release_date TIMESTAMP NOT NULL,
  price DECIMAL NOT NULL,
  price_rent DECIMAL NULL,
  status VARCHAR(10) NOT NULL,
  is_available BOOLEAN NOT NULL,
  number_plate VARCHAR(12),
  stnk VARCHAR(10),
  no_bpkb VARCHAR(10),
  UNIQUE(stnk),
  UNIQUE(no_bpkb),
  UNIQUE(machine_number),
  UNIQUE(identification_number)
);

INSERT INTO ms_vehicle (id, name, type, identification_number, machine_number, release_date, price, price_rent, status, is_available, number_plate, stnk, no_bpkb)
VALUES
('V001', 'Toyota Corolla', 'Sedan', 123456789, 222654321, TIMESTAMP '2020-01-01 00:00:00', 250000000, 5000000, 'Second', true, 'AB123CD', 'STNK123', 'BPKB123'),
('V002', 'Honda Civic', 'Sedan', 9876543222, 123456111, TIMESTAMP '2020-02-01 00:00:00', 270000000, 5500000, 'Second', true, 'EF456GH', 'STNK456', 'BPKB456'),
('V003', 'Chevrolet Camaro', 'Sports Car', 246813579, 135792468, TIMESTAMP '2019-03-01 00:00:00', 500000000, 10000000, 'Second', true, 'IJ789KL', 'STNK789', 'BPKB789'),
('V004', 'Ford Mustang', 'Sports Car', 135792468, 246813579, TIMESTAMP '2021-04-01 00:00:00', 480000000, 9500000, 'Second', true, 'MN012OP', 'STNK012', 'BPKB012'),
('V005', 'BMW X5', 'SUV', 369258147, 258147369, TIMESTAMP '2022-05-01 00:00:00', 600000000, 12000000, 'Second', true, 'QR345ST', 'STNK345', 'BPKB345'),
('V006', 'Mercedes-Benz C-Class', 'Sedan', 147258369, 369258147, TIMESTAMP '2021-06-01 00:00:00', 550000000, 11000000, 'New', true, 'UV678WX', 'STNK678', 'BPKB678'),
('V007', 'Audi Q7', 'SUV', 258369147, 147258369, TIMESTAMP '2022-07-01 00:00:00', 620000000, 12500000, 'New', true, 'YZ901AB', 'STNK901', 'BPKB901'),
('V008', 'Nissan GT-R', 'Sports Car', 321654987, 654987321, TIMESTAMP '2020-08-01 00:00:00', 700000000, 14000000, 'New', true, 'CD234EF', 'STNK234', 'BPKB234'),
('V009', 'Tesla Model S', 'Electric Car', 456789123, 789123456, TIMESTAMP '2023-09-01 00:00:00', 800000000, 16000000, 'New', true, 'GH567IJ', 'STNK567', 'BPKB567'),
('V010', 'Mazda CX-5', 'SUV', 9876544522, 123411189, TIMESTAMP '2022-10-01 00:00:00', 400000000, 8000000, 'New', true, 'KL890MN', 'STNK890', 'BPKB890');
