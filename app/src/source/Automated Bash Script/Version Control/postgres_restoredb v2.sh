#!/bin/bash

#Variables
HOST='127.0.0.1'
DATABASE='postgres'
USER='postgres'
BASE_FOLDER='/home/rw/DEV/RELATIONAL DB/POSTGRESQL/SQL Scripts/'
SQL_FILE=('Create_Schema+Tables.sql' 'copy data.sql')

FULL_PATH="$BASE_FOLDER/$SQL_FILE"
NEW_PATH="$BASE_FOLDER/$INTERNET_FILE"

PORT='5432'

password='postgres'

# CUSTOMER_CSV='/home/rw/DEV/SOURE DATA/Adventure Works/customer.csv'
# INTERNET_CSV='/home/rw/DEV/SOURE DATA/Adventure Works/factinternetsales.csv'


#Run create tables

export PGPASSWORD=$password

# psql -h $HOST -d $DATABASE -U $USER -f "$FULL_PATH"

# psql -h $HOST -d $DATABASE -U $USER -f "$NEW_PATH"

for file in "${SQL_FILE[@]}"; do
    psql -h $HOST -d $DATABASE -U $USER -f  "$BASE_FOLDER/$file"
done