iris1=iris[,1:4]
model3=kmeans(iris1,3)
print(model3)
print(model3$centers)
print(model3$withinss)
print(model3$tot.withinss)
print(model3$size)
print(model3$betweenss)
wcss=vector()
for(i in 1:10){
  wcss[i]=kmeans(iris1,i)$tot.withinss
}
plot(1:10,wcss,type='o')