 var(file2$vehicleCount,file2$avgMeasuredTime)
[1] 8.343606
> cov(file2$vehicleCount,file2$avgMeasuredTime)
[1] 8.343606
> cor(file2$vehicleCount,file2$avgMeasuredTime)
[1] 0.085072
> View(file2)
> cor(file2$avgSpeed,file2$vehicleCount)
[1] -0.154231
> cor(file2$avgMeasuredTime,file2$avgSpeed)
[1] -0.9016658
> plot(file2$avgMeasuredTime,file2$vehicleCount,type="b")
> plot(file2$avgMeasuredTime,file2$vehicleCount,type="h")
plot((file2$vehicleCount/(file2$avgSpeed*file2$avgMeasuredTime))~rdate,type="h")
> plot(file2$vehicleCount~rdate,type="h")
> mean(file2$vehicleCount)
[1] 1.969212
> min(file2$vehicleCount)
[1] 0
> max(file2$vehicleCount)
[1] 31
> vehicleCountCluster <- kmeans(file2[,8], c(0,1.969212,31), nstart = 20)
vehicleCountCluster$cluster <- as.factor(vehicleCountCluster$cluster)
> 
> ggplot(file2, aes(file2.vehicleCount, file2.avgMeasuredTime, color = vehicleCountCluster$cluster)) + geom_point()
Error: could not find function "ggplot"
> library(ggplot2)
Warning message:
package ‘ggplot2’ was built under R version 3.3.2 
> ggplot(file2, aes(file2.vehicleCount, file2.avgMeasuredTime, color = vehicleCountCluster$cluster)) + geom_point()
Error in eval(expr, envir, enclos) : 
  object 'file2.vehicleCount' not found
> ggplot(file2, aes(file2$vehicleCount, file2$avgMeasuredTime, color = vehicleCountCluster$cluster)) + geom_point()
> ggplot(file2, aes(file2$avgMeasuredTime, file2$vehicleCount, color = vehicleCountCluster$cluster)) + geom_point()
> ggplot(file2, aes(file2$time, file2$vehicleCount, color = vehicleCountCluster$cluster)) + geom_point()
> ggplot(file2, aes(file2$date, file2$vehicleCount, color = vehicleCountCluster$cluster)) + geom_point()
>  avgMeasuredTimeCluster$cluster <- as.factor(avgMeasuredTimeCluster$cluster)
> 
> ggplot(file2, aes(file2$date, file2$vehicleCount, color = avgMeasuredTimeCluster$cluster)) + geom_point()
> ggplot(file2, aes(file2$time, file2$vehicleCount, color = avgMeasuredTimeCluster$cluster)) + geom_point()
VehicleCount1clusters <- hclust(dist(data[, 8]))
> 
> plot(VehicleCount1clusters)

myvars<- c("avgMeasuredTime","avgSpeed","vehicleCount")

> data2<-file2[myvars]
 results = lm(vehicleCount ~ avgSpeed + avgMeasuredTime, data=data2) 
> results

Call:
lm(formula = vehicleCount ~ avgSpeed + avgMeasuredTime, data = data2)

Coefficients:
    (Intercept)         avgSpeed  avgMeasuredTime  
        9.05307         -0.13723         -0.03735  

> predict(results,data.frame(avgSpeed=40, avgMeasuredTime=100),interval="confidence") 
         fit        lwr         upr
1 -0.1708767 -0.3147196 -0.02703388
> predict(results,data.frame(avgSpeed=40, avgMeasuredTime=100),interval="prediction") 
         fit       lwr      upr
1 -0.1708767 -7.015039 6.673286
> predict(results,data.frame(avgSpeed=27, avgMeasuredTime=80),interval="prediction") 
       fit       lwr      upr
1 2.360055 -4.482765 9.202876
> predict(results,data.frame(avgSpeed=24, avgMeasuredTime=90),interval="prediction") 
       fit       lwr      upr
1 2.398259 -4.444541 9.241059
> cor(file2$avgSpeed,file2$vehicleCount)
[1] -0.154231
> cor(file2$avgMeasuredTime,file2$vehicleCount)
[1] 0.085072
plot(file2[,8],type="l") 
> file2.1 <- filter(file2[,8],filter=rep(1/5,5)) 
> file2.2 <- filter(file2[,8],filter=rep(1/25,25)) 
> file2.3 <- filter(file2[,8],filter=rep(1/40,40)) 
> lines(file2.1,col="red") 
> lines(file2.2,col="green") 
> lines(file2.3,col="blue")
 plot(file2$vehicleCount~rdate,type="b")
> plot(file2$avgMeasuredTime~rdate,type="b")
> plot(file2$avgMeasuredTime~rdate,type="l")
> plot(file2$vehicleCount~rdate,type="l")
> plot(file2$avgSpeed~rdate,type="l")
> file17 <- read.csv("C:/Users/BadassBaby/Desktop/DataFormated/file17.csv")
>   View(file17)
> plot(file17$avgMeasuredTime~rdate,type="l")
Error in (function (formula, data = NULL, subset = NULL, na.action = na.fail,  : 
  variable lengths differ (found for 'rdate')
> View(file17)
> view(file17)
Error: could not find function "view"
> file17 <- read.csv("C:/Users/BadassBaby/Desktop/DataFormated/file17.csv")
>   View(file17)
> plot(file17$avgMeasuredTime~rdate,type="l")
Error in (function (formula, data = NULL, subset = NULL, na.action = na.fail,  : 
  variable lengths differ (found for 'rdate')
> rdate<-as.Date(file17$date,"%Y-%m-%d")
> plot(file17$avgMeasuredTime~rdate,type="l")
> plot(file17$vehicleCount~rdate,type="l")
> plot(file17$avgSpeed~rdate,type="l")
>  file6 <- read.csv("C:/Users/BadassBaby/Desktop/DataFormated/file6.csv")
>   View(file6)
> rdate<-as.Date(file6$date,"%Y-%m-%d")
> plot(file6$avgMeasuredTime~rdate,type="l")
> plot(file6$vehicleCount~rdate,type="l")
> plot(file6$avgSpeed~rdate,type="l")
> file97 <- read.csv("C:/Users/BadassBaby/Desktop/DataFormated/file97.csv")
>   View(file97)
> rdate<-as.Date(file97$date,"%Y-%m-%d")
> plot(file97$avgMeasuredTime~rdate,type="l")
> plot(file97$vehicleCount~rdate,type="l")
> plot(file97$avgSpeed~rdate,type="l")
> file24 <- read.csv("C:/Users/BadassBaby/Desktop/DataFormated/file24.csv")
>   View(file24)