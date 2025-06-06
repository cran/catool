## ----setup, include=FALSE-----------------------------------------------------
library(catool)
library(dplyr)

## ----echo=TRUE, results="hide", eval = FALSE----------------------------------
# schedule <- data.frame(
#   INSTRUCTOR = c("Lalau-Hitchcock, Diksha", "Lalau-Hitchcock, Diksha", "Brown, Cecily"),
#   ENRLD = c(12, 7, 4),
#   HRS = c(3, 3, 3),
#   stringsAsFactors = FALSE
# )

## ----echo=TRUE, results="hide", warning=FALSE, eval = FALSE-------------------
# # Filter by subject pattern
# filter_schedule(schedule, subject_pattern = "MATH|CSCI")
# 
# # Filter by instructor
# filter_schedule(schedule, instructor_pattern = "Armbruster|al-Abdul")
# 
# # Filter by department
# filter_schedule(schedule, department_pattern = "Business Administration")
# 
# # Filter by college
# filter_schedule(schedule, college_pattern = "arts")
# 
# # Filter by program
# filter_schedule(schedule, program_pattern = "computation")

## ----echo=TRUE, results="hide", eval = FALSE----------------------------------
# # Filter by instructor name (case-insensitive)
# inst_schedule <- get_instructor_schedule("Lalau-Hitchcock", schedule)
# 
# # Calculate overload compensation using default policy
# ol_comp(inst_schedule)
# 
# # You can also apply custom policy parameters
# ol_comp(inst_schedule, L = 4, U = 8, reg_load = 9, rate_per_cr = 5000 / 3)
# 
# # Compare institutional vs instructor interest
# ol_comp(inst_schedule, favor_institution = TRUE)  # Less pay
# ol_comp(inst_schedule, favor_institution = FALSE) # More pay

## ----echo=TRUE, results="hide", eval = FALSE----------------------------------
# get_unique_instructors(schedule)

## ----echo=TRUE, results="hide", eval = FALSE----------------------------------
# # Get summary for a specific instructor by index
# ol_comp_byindex(1, schedule_df = schedule)
# 
# # With custom policy
# ol_comp_byindex(1, schedule_df = schedule, L = 4, U = 9, reg_load = 12, rate_per_cr = 2500 / 3)

## ----echo=TRUE, eval = FALSE--------------------------------------------------
# ol_comp_summary(schedule)

## ----echo=TRUE, eval = FALSE--------------------------------------------------
# ol_comp_summary(schedule, L = 4, U = 9, reg_load = 12, rate_per_cr = 2500 / 3)

## ----echo=TRUE, eval = FALSE--------------------------------------------------
# # Favoring institution (less total pay)
# ol_comp_summary(schedule, favor_institution = TRUE)
# 
# # Favoring instructor (more total pay)
# ol_comp_summary(schedule, favor_institution = FALSE)

