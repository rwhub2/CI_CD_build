#!/bin/bash

#PostgreSQL Variables
HOST='127.0.0.1'
DATABASE='postgres'
USER='postgres'
PORT='5432'
password='postgres'

#Database Variables
BASE_FOLDER='/home/rw/DEV/RELATIONAL DB/POSTGRESQL/SQL Scripts/'

SQL_FILES=('Create_Schema+Tables.sql' 'copy data.sql')


#Run create tables

export PGPASSWORD=$password


for file in "${SQL_FILES[@]}"; do
    psql -h $HOST -d $DATABASE -U $USER -f "$BASE_FOLDER/$file"
done