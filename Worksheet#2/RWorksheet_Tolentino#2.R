#1. Create a vector using : operator
#a. 
sequence <- -5:5
sequence

#b.
x <- 1:7
x
#The value f is 1 2 3 4 5 6 7 

#2.Create a vector using seq() function
seq(1, 3, by=0.2)
#The output of the code is that the number from 1 increased by 0.2 until it stops to 3.

#3. 
#a.The 3rd element is 22.
ages <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
           22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
           24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
           18)
age2 <- ages[3]
age2

#b. The 2nd is 28 and 4th element is 36.
doubleElement <-ages[c(2,4)]
doubleElement

#c.
exclude <- ages[-c(4, 12)]
exclude



#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

x <- c("first"=3, "second"=0, "third"=9)
names(x)
x[c("first", "third")]
#The code will output the "first" and "third" and its corresponding number.


#5. Create a sequence x from -3:2.
x <- -3:2
x[2] <- 0
x
#The 2nd element -2 changed into 0 from (-3 -2 -1  0  1  2) became (-3  0 -1  0  1  2).

#6. 
#a.
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase_quantity <- c(25, 30, 40, 50, 10, 45)

df <- data.frame(Month = month, 
                 Price_per_liter = price_per_liter,
                 Purchase_quantity = purchase_quantity)

df_transposed <- t(df)
df_vertical <- as.data.frame(df_transposed)
df_vertical
  
#b. The average fuel expenditure of Mr. Cruz from Jan to June is 59.2625 
liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase <- c(25, 30, 40, 50, 10, 45)
expenditure_mean <- weighted.mean(liter, purchase)
expenditure_mean

#7. 
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))

#8. 
TopCelebrity <- data.frame (
PowerRanking = 1:25,
CelebrityName = c("Tom Cruise" , "Rolling Stones", "Oprah Winfrey", "U2","Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"),
Pay = c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
)
TopCelebrity

#b
NewRanking <- replace(PowerRanking, 19, 15)
NewRanking
NewPay <- replace(Pay, 19, 90)
NewPay 

Newtopceleb <- data.frame (
PowerRanking = NewRanking, CelebrityName, Pay = NewPay)
Newtopceleb


#c
# Install and load the 'writexl' library for writing Excel files
install.packages("writexl")
library(writexl)
write_xlsx(TopCelebrity, path = "PowerRanking.xlsx")
write.csv(TopCelebrity, file = "PowerRanking.csv", row.names = FALSE)

#d
subset_data <- TopCelebrity[10:20, ]
save(subset_data, file = "Ranks.RData")
print(subset_data)

#e. This script will create an RData file named "Ranks.RData" containing the subset of rows 10 to 20 from the original data frame.


#9
#a.
library(readxl)
ExcelDta <- read_excel("Worksheet#2/hotels-vienna.xlsx")
ExcelDta

#b.
dimensions <- dim(ExcelDta)
dimensions

#c.
selected_columns <- ExcelDta[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
head(selected_columns, n = nrow(selected_columns))

#d.
save(selected_columns, file = "new.RData")

#e.
load("new.RData")
head(selected_columns)
tail(selected_columns)


#10
#a.
vegetables <- c("Carrot", "Broccoli", "Spinach", "Tomato", "Cucumber", "Bell Pepper", "Eggplant", "Zucchini", "Kale", "Asparagus")
vegetables

#b.
vegetables <- c(vegetables, "Cauliflower", "Mushroom")
vegetables

#c.
vegetables <- append(vegetables, c("Sweet Potato", "Cabbage", "Radish", "Artichoke"), after = 5)
num_datapoints <- length(vegetables)
vegetables
cat("Number of datapoints:", num_datapoints, "\n")

#d.
vegetables <- vegetables[-c(5, 10, 15)]
num_vegetables_left <- length(vegetables)
vegetables
cat("Number of vegetables left:", num_vegetables_left, "\n")



