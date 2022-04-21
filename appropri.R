data2=read.transactions("E:\\DATA SETS\\Market_Basket_Optimisation.csv",sep=",",rm.duplicates=TRUE)
#print(data2)
#summary(data2)
itemFrequencyPlot(data2,topN=7)
#training
rules=apriori(data=data2,parameter=list(support=0.03,confidence=0.4))
inspect(rules,by=lift)[1:8]
