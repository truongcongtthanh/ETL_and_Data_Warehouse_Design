# ETL_and_Data_Warehouse_Design
# --------------------------------------
## I. Extract and transform airport data
### 1. Drop columns: continent, gps_code, iata_code, local_code
### 2. Handle null value for columns: iso_country, elevation_tf, municipality
### 3. Enriching data for coordinates column to longitude and latitude
### 4. Delete dupplicate
## II. Extract and transform immigration data
### 1. Drop columns: insnum, visapost, occup, entdepu, insnum
### 2. Handle null value for columns: i94addr, depdate, entdepd, matflag, gender, airline, fltno
### 3. Delete dupplicate
## III. Extract and transform demographics data
### 1. Handle null value 
### 2. Delete dupplicate
## IV. Design Data warehouse schema by star schema
## V. Create fact and dimension tables
### 1. Create dim_airport table and data
###2.Create dim_time table and data
### 3. Create dim_state table and data
### 4. Create dim_visa and data
### 5. Create data for fact table
## VI. Load data to database
## VII. Data quality check and generate report
## VIII. Querying the Data Warehouse (Cubes, Rollups, Grouping Sets and Materialized Views)
