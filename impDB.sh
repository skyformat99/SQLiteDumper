#!/bin/bash

# List of tables in the SQLite DB
TABLE_LIST="example"


# Function to dump a table into a .csv file
DumpTable () {

# Table to export
ThisTable=$1


sqlite3 -header -csv /work/sqlite/testsol_20150526153854.db "select * from $1;" > ./out/$ThisTable.out.csv

}

# Loop through the list of tables, exporting as we go
for table in $(echo $TABLE_LIST)
do
   DumpTable $table
done
