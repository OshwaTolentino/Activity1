age <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
age


#1. Vector name age
length(age)
cat("The total data points is:", length(age), "\n")


#2. Reciprocal of the value for age
reciprocal_age <- 1 / age
reciprocal_age
cat("The reciprocal values for age are:", reciprocal_age, "\n")


#3. New Age
new_age <-c(age,0,age)
new_age


#4. Sort values for age
sort(age)
cat("The sort value of age are:", sort(age), "\n")


#5. Minimum and Maximum
min(age)
max(age)
cat("The minimum value for age is:", min(age), "\n")
cat("While the maximum is:", max(age), "\n")


#6. Vector named data
data <-c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
         2.5, 2.3, 2.4, 2.7)

length(data)
cat("The total data points is:", length(data), "\n")


#7. Double every value of data 
data_doubled <- data*2
data_doubled
cat("The double value of every data is:", data_doubled, "\n")


#8.1 Integers from 1:100
integers_8.1 <-1:100
integers_8.1


#8.2 Numbers from 20 to 60
numbers_8.2 <-20:60
numbers_8.2


#8.3 Mean of numbers from 20 to 60
mean_8.3 <-mean(numbers_8.2)
mean_8.3
cat("The mean of numbers from20to 60 is:", mean_8.3, "\n")


#8.4 Sum of numbers from 51 to 91
sum_8.4 <-sum(51:91)
sum_8.4
cat("The sum of number from 51 to 91 is:", sum_8.4, "\n")


#8.5 Integers from 1 to 1,000
integers_8.5 <-1:1000
integers_8.5


# Calculate the total data points
total_data_points <- length(integers_8.1) + length(numbers_8.2) + 1 + 1


#8.a Print the total data points
cat("Total number of data points from 8.1 to 8.4:", total_data_points, "\n")

#8.b Write the R code and its output from 8.1 to 8.4.
CombineData <-c(integers_8.1, numbers_8.2, mean_8.3, sum_8.4)
CombineData


# 8.c For 8.5 find only maximum data points until 10.
max_values_8.5 <- c()

for (start in seq(1, 1000, by = 10)) {
  end <- start + 9
  max_val <- max(integers_8.5[integers_8.5 >= start & integers_8.5 <= end])
  max_values_8.5 <- c(max_values_8.5, max_val)
}
cat("Maximum values in each range of 10 numbers from 8.5:", max_values_8.5, "\n")


#9. *Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))


#10. Sequence backwards of the integers from 1 to 100.
sequence_backwards <- seq(100, 1, by = -1)
sequence_backwards


#11. List all the natural numbers below 25 that are multiples of 3 or 5.
natural_numbers <- 1:24
multiples_3_or_5 <- natural_numbers[natural_numbers %% 3 == 0 | natural_numbers %% 5 == 0]
sum_multiples <- sum(multiples_3_or_5)
cat("Multiples of 3 or 5 below 25:", multiples_3_or_5, "\n")
cat("Sum of these multiples:", sum_multiples, "\n")

#a. How many data points?
length(c(sequence_backwards, sum_multiples))

#b. 
Combined10n11 <- c(sequence_backwards, sum_multiples)
Combined10n11


#12. 
{x <- 0 + x + 5 +}
#The output projects an error message that mentions an unexpected brace '}' in the statement


#13.
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
element_2 <- score[2]
element_3 <- score[3]
element_2
element_3


#14 *Create a vector a = c(1,2,NA,4,NA,6,7).
a <- c(1, 2, NA, 4, NA, 6, 7)
a[is.na(a)] <- 999
print(a, na.print = "-999")
#The output changed all the "NA" from the previous statement to -999


#15. A special type of function calls can appear on the left hand side of the assignment operator as in > class(x) <- "foo".
# Prompt the user for their name
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)
#Initially if you run the code as it is it the first 3 line of code displays the same code provided but the last line results to the version of the R that you are using.