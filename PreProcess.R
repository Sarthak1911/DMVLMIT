df <-read.csv("SalesData.csv")
df
colnames(df)
summary(df)
dim(df)
summary(df$Sales)
summary(df$Ship.Mode)
table(df$Ship.Mode)
table(df$Sales)
# Create a bar plot of Ship Mode Frequency
library("tidyverse")
ggplot(df, aes(x = df$Ship.Mode)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Ship Modes", 
       x = "Ship Modes", y = "Count") 

ggplot(df, aes(x = df$Product.Category)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 
summary(df$Unit.Price)

ggplot(df, aes(x = df$Unit.Price)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 

ggplot(df, aes(x = df$Order.Quantity)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Profit of Sales", 
       x = "Profit Data", y = "Count") 


# Calculate the median of the Unit Price column 
median_value <- median(df$Unit.Price,  
                       na.rm = TRUE) 
median_value
summary(df$Unit.Price)

mean_value <- mean(df$Unit.Price,  
                       na.rm = TRUE) 
mean_value

# filling missing values 
df$Unit.Price <- ifelse(is.na(df$Unit.Price), 
                          mean_value, df$Unit.Price)
summary(df$Unit.Price)

summary(df$Unit.Price)

df$Unit.Price <- ifelse(is.na(df$Unit.Price), 
                        8868686698, df$Unit.Price)

summary(df$Unit.Price)

table(df$Ship.Mode)

dim(df)

df$Ship.Mode <- ifelse(is.na(df$Ship.Mode), 
                        "Regular Air", df$Ship.Mode)
table(df$Ship.Mode)

ggplot(df, aes(x = df$Ship.Mode)) + 
  geom_bar(fill = "red") + 
  labs(title = "Distribution of Ship Modes", 
       x = "Ship Modes", y = "Count") 
