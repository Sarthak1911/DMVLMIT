# Create the data frame
df <- data.frame(
  Years_Exp = c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7),
  Salary = c(39343.00, 46205.00, 37731.00, 43525.00,
             39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00)
)

df

lm(formula = Salary ~ Years_Exp, data = df)

# y= b0 + b1 X
 # y= 28217 + 9021 X

#Salary = 28217 + 9021 * (Years_exp)

#If 5.2 Yrs exp , what is the predicted salary

S= 28217 + 9021 *5.2
S


  
age <-c (35,34,25,23, 32)
height <- c(6, 5.5, 5,5.3,5.9)
weight <- c(78,71,54,52,62)
           
AHW <- data.frame(
  age ,height, weight
)
            
AHW

lm(formula = weight ~ age + height ,data = AHW)

# w= 8.4135 + 1.9478 A -0.5518 H

#If A =54 , H=  5.6, What is Weight ?
  
W = 8.4135 + 1.9478* 54 -0.5518*5.6
W

            



