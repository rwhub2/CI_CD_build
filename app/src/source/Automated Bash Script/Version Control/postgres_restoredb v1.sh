#!/bin/bash

#Variables
HOST='127.0.0.1'
DATABASE='postgres'
USER='postgres'
BASE_FOLDER='/home/rw/DEV/RELATIONAL DB/POSTGRESQL/SQL Scripts/'
SQL_FILE='Create_Schema+Tables.sql'

FULL_PATH="$BASE_FOLDER/$SQL_FILE"

PORT='5432'

password='postgres'

CUSTOMER_CSV='/home/rw/DEV/SOURE DATA/Adventure Works/customer.csv'
INTERNET_CSV='/home/rw/DEV/SOURE DATA/Adventure Works/customer.csv'


#Run create tables

export PGPASSWORD=$password

psql -h $HOST -d $DATABASE -U $USER -f "$FULL_PATH"


psql -h $HOST -p $PORT -U $USER -d $DATABASE <<EOF
\COPY customer FROM '$CUSTOMER_CSV' WITH CSV HEADER;
EOF

psql -h $HOST -p $PORT -U $USER -d $DATABASE <<EOF
\COPY factinternetsales FROM '$INTERNET_CSV' WITH CSV HEADER;
EOF

