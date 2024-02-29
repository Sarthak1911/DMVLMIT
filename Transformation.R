# https://www.educative.io/answers/what-is-the-select-function-in-r
#DATA TRANSFORMATION FUNCTIONS TO KNOW IN R

#1.  arrange(): This orders the observations.

library(tidyverse)

setwd("Desktop/DMV_Lab_Excercize/")
df <-read.csv("SalesData.csv")
colnames(df)
view(df)

df$Sales[1:10]
df$Order.Quantity[1:10]

Sales_df <- df %>% arrange(Sales)
view(Sales_df)

Sales_des <- arrange(df,desc(Sales))
view(Sales_des)

df_multi <- arrange(df,Sales,Order.Quantity)
view(df_multi)

df_multi$Sales[3]=14.400
view(df_multi)

df_multi1 <- arrange(df_multi,Sales,Order.Quantity)
view(df_multi1)

#2. select() : Used to select variables or columns.

df$Ship.Mode

df %>% select(Ship.Mode)
sm <- df %>% select(Ship.Mode)
sm

colnames(df)


df %>% select(Order.Date:Sales)

df %>% select(!Sales)

sm1= select(df,Ship.Mode)

sm1

sm1[1]
sm1[1]

#3. filter(): Used to filter observations by their values.

view(df)

df_low = filter(df,Order.Priority=='Low')
view(df_low)

dim(df)
dim(df_low)

df_low_Regular_Air = filter(df,Order.Priority=='Low',Ship.Mode=='Regular Air')
view(df_low_Regular_Air)

v1=dim(df)
v2=dim(df_low)
v3=dim(df_low_Regular_Air)

typeof(v1)

print(v1[1])
print(v1[2])

print("Number of Observations in Dataframe df are :")
v1[1]

print("Number of Observations in Dataframe df_low are :")
v2[1]

print("Number of Observations in Dataframe df_low_Regular_Air are :")
v3[1]


#4. gather(): This shifts observations from columns to rows.

# gather() is used to gather multiple columns and collapse them into key-value pairs.
# https://www.educative.io/answers/what-is-tidyr-gather-in-r

# demo program to show the working of gather()
# importing tidyr library
library(tidyverse)
# creating a DataFrame
df <- data.frame(players=c('Amber', 'Paisley', 'Roxanne', 'Scarlett'),
                 Year_2012=c(12, 5, 7, 19),
                 Year_2013=c(15, 25, NA, 29),
                 Year_2014=c(34,35,12,45))

view(df)
cat("Before Gather() Called\n")
#viewing data frame
print(df)
cat("\nAfter Gather() Called\n")
# gathering the data from columns 2 and 4
g24=gather(df, key="Year_Count", value="Matches_Played", 2:4)
view(g24)

g34=gather(df, key="Year_Count", value="Matches_Played", 3:4)
view(g34)

g34=gather(df, key="Year_Count", value="Matches_Played", 3)
view(g34)


#5. spread(): This shifts variables from rows to columns.
#https://www.educative.io/answers/what-is-the-tidyr-spread-function-in-r


setwd("Desktop/DMV_Lab_Excercize/")
df <-read.csv("Result.csv")
view(df)
df
spread(df, key="Subject", value="Marks")



#6. group_by() and summarize(): Used to summarize data into groups.

#7. mutate(): Used to create new variables from existing variables.





