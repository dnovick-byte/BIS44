#BIS44 Exercise 6: Bringing Data into R

#Part 2. Package installation
##An alternative way to install packages
install.packages("data.table")

##Install only if not in system
if (!require("data.table")) install.packages("data.table")

##Load the packages into the R environment
library("readr")
library("data.table")


#Part 3. Importing a small file
##read.csv()
##Run three lines below at once to measure speed
ptm <- proc.time()  # record start time
df3_1 <- read.csv("Exercise6_csv_example.csv")
proc.time() - ptm   # output elapsed seconds from start time

##read_csv()
ptm <- proc.time()
df3_2 <- read_csv("Exercise6_csv_example.csv", col_names = TRUE)
proc.time() - ptm

##fread()
ptm <- proc.time()
df3_3 <- fread("Exercise6_csv_example.csv", header = "auto", data.table = FALSE)
proc.time() - ptm


#Part 4. Importing a large file
##Copy-paste code for part 3 below and edit as instructed
##read.csv()
##Run three lines below at once to measure speed
ptm <- proc.time()  # record start time
df4_1 <- read.csv("yellow_tripdata_1m.csv")
proc.time() - ptm   # output elapsed seconds from start time

##read_csv()
ptm <- proc.time()
df4_2 <- read_csv("yellow_tripdata_1m.csv", col_names = TRUE)
proc.time() - ptm

##fread()
ptm <- proc.time()
df4_3 <- fread("yellow_tripdata_1m.csv", header = "auto", data.table = FALSE)
proc.time() - ptm


#Part 5. Utilizing Summary Functions
##View()
View(df3_1)
View(df3_2)
View(df3_3)

##str()
View(df4_1)

##summary()
summary(df4_1)
