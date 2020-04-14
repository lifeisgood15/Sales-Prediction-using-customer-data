# Load the libraries
library(arules)
library(arulesViz)
library(datasets)

# Load the data set
data(Groceries)
summary(Groceries)

# Create an item frequency plot for the top 20 items
itemFrequencyPlot(Groceries,topN=20,type="absolute")

#Applying Apriori Algo and rules
rules <- apriori(Groceries,parameter = list(supp = 0.001, conf = 0.80))
inspect(rules[1:10])


#Graphical Representation of 20 rules
library(arulesViz)
plot(rules[1:20],method="graph",interactive=TRUE,shading=NA)

#Graphical Representation of all rules
library(arulesViz)
plot(rules,method="graph",interactive=TRUE,shading=NA)



