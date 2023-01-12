#BIS44 Exercise 4: R Syntax

#Part 1. Interact with R Scripts with RStudio
## Examples
ex1 <- "character variable"
ex2 <- 44
ex3 <- 5L

typeof(ex1)
typeof(ex2)
typeof(ex3)

#Part 2. Assign and Interact with Variables
##Add Code Below
x <- 10
y<- 5
z<- "Lehigh University"
x
x + y
x * y

#Part 3. Work with Vectors
##Assign Vectors
vec_test1 <- c(1, 2, 3, 4, 5)
vec_test2 <- 6:10
vec_test3 <- c("a", "b", "c", "d", "e")

##Add Code Below
vec_test1
vec_test1 * 3
sqrt(vec_test1)
vec_test1 + vec_test2

#Part 4. Create a Data Frame
##Create Vectors of the Same Length
college <- c("LSU", "Clemson", "Ohio State", "Georgia", "Oregon")
rank <- 1:5
win <- c(15, 14, 13, 12, 12)
loss <- c(0, 1, 1, 2, 2)

## Add Code Below
my_df <- data.frame(college, rank, win, loss)
View(my_df)
str(my_df)

#Part 5. Access Different Parts of A Data Frame
##Access Variables(Columns) using $ Operator
my_df
my_df$college
my_df$win

##Access Variables(Columns) using Indices
my_df[1]
my_df[1:2]
my_df[c(1,3)]

##Access Values in a Specific Cell
my_df
my_df$win[5]
mymy_df[5,3]

