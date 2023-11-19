-- SELECT * FROM customer;
COPY customer FROM '/home/rw/DEV/SOURE DATA/Adventure Works/customer.csv' WITH CSV HEADER;
COPY factinternetsales FROM '/home/rw/DEV/SOURE DATA/Adventure Works/factinternetsales.csv' WITH CSV HEADER;