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

fetchDataByID <- function(con, table_name, id_number) {
  fetching_table <- tbl(con,table_name)
  query_id_result <- filter(fetching_table, NCT_ID == id_number)
  return(query_id_result)
}

fetchDataEnrollment <- function(con, table_name, enrollment_number) {
  fetching_table <- tbl(con,table_name)
  enrollment_result <- filter(fetching_table, ENROLLMENT >= enrollment_number)
  return(enrollment_result)
}

id_result <- fetchDataByID(con, "ClinicalStudy", "NCT00000002")
select_id_result <- id_result %>% select(NCT_ID, ENROLLMENT)

enrol_result <- fetchDataEnrollment(con, "ClinicalStudy", 4)


main_clinical_table <-  tbl(con,"ClinicalStudy")
trial_sponsors_table <-  tbl(con,"TrialSponsors")

main_join<-merge(x=main_clinical_table,y=trial_sponsors_table,by="NCT_ID")


# id_result, select_id_result, enrol_result, main_join


