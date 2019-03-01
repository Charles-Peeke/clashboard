library(dplyr)
library(RMySQL)

#size <- 12
#setwd("/Users/CSCI334/Documents/R_examples/sql_query/")
#fileName <- './passwd.txt'

con <- DBI::dbConnect(RMySQL::MySQL(),
                      host = "localhost",
                      user = "root",
                      #password = readChar(fileName, file.info(fileName)$size),
                      dbname="clinical"
)

#dbListTables(con)
fetchDataByID <- function(con, table_name, filter_condition) {
  fetching_table <- dbReadTable(con,table_name)
  query_result <- filter(fetching_table, NCT_ID == filter_condition)
  return(query_result)
}

result <- fetchDataByID(con, "ClinicalStudy", "NCT00000002")


#table_name =  "ClinicalStudy"
#clinical_table <- dbReadTable(con,table_name)
#nct_result <- filter(clinical_table, NCT_ID == "NCT00000002")
#url_result <- filter(clinical_table, ENROLLMENT > 4)
