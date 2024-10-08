library(DBI)

#connect to database
ag_data <- dbConnect(RPostgres::Postgres(),
                     user = "root",
                     password = "JDC5VDDI1m4l92Bnq11tVrSBZeWqzMOS",
                     host = "dpg-crli4a3tq21c73eftk30-a.oregon-postgres.render.com",
                     port = 5432,
                     dbname = "datathink_internship_project"
)


#view existing tables
dbListTables(ag_data)


#view specific table (added to environment)
production_indices_africa_data <- dbReadTable(ag_data, "production_indices_africa")


#add data to the database
# Read the CSV file into an R data frame
table_name <- read_csv("./path/to/data.csv", locale = locale(encoding = "ISO-8859-1"))

# Write the CSV data to the database
dbWriteTable(con, "table_name", table_name, row.names = FALSE)


#-------------------------------------------------------------
Faostat_Nigeria <- dbReadTable(ag_data, "Faostat_Nigeria")
Foodwaste_Africa_Ngn <- dbReadTable(ag_data, "Foodwaste_Africa_Ngn")
country_area_codes <- dbReadTable(ag_data, "country_area_codes")
item_codes <- dbReadTable(ag_data, "item_codes")
production_indices_nigeria <- dbReadTable(ag_data, "production_indices_nigeria")






