#BIS44 Exercise 5: Conditional Statements and Loops

#Part 1. Work with Relational/Logical Operators
##Relational
3 < 100
3 > 100
3 == 100
3 != 100
3 >= 3

##AND
TRUE & TRUE
FALSE & TRUE
FALSE & FALSE

##OR
TRUE | TRUE
FALSE | TRUE
FALSE | FALSE

##NOT
!TRUE
!FALSE

##Combine Relational/Logical
a <- 10
# a is less than 5 (false) AND less than 15 (true)
a < 5 & a < 15
# a is less than 5 (false) OR less than 15 (true)
a < 5 | a < 15

#Part 2. if and if-else Conditional Statements
##if when true
x <- 10
if(x == 10){
  print("x is equal to 10!")
}

##if when false
y <- 11
if(y < 10){
  print("y is less than 10!")
}

##if-else
if(y < 10){
  print("y is less than 10!")
}else{
  print("y is greater than or equal to 10!")
}

#Part 3. Chained if Statements
##Replace the TRUEs and fill in the brackets 
z<- 10
if(z > 6){
  print("high")
}else if(z < 4){
  print("low")
}else{
  print("mid")
}

#Part 4. For Loop
##Using character strings as counter
chars <- c("alpha", "beta", "gamma", "delta", "epsilon")
for(letter in chars){
  print(letter)
}

##Using numbers as counter
nums <- c(10, 20, 30, 40)
for(i in nums){
  print(i + 100)
}

#Part 5. Loop with Conditional Statement
##For loop with i as counter
for (i in 1:10){
  #Copy-paste the entire part 3's chained if sequence below
  if(i > 6){
    print("high")
  }else if(i < 4){
    print("low")
  }else{
    print("mid")
  }
}

