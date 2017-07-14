day19 <- read.csv("C:/Users/rrrak/Desktop/DataFormated/day19_6.csv") #source of the data extracted from python code
name=day19
t=name$time 
t=t[37:144]   #Traffic only above 6:00 AM is considered
vc=name$vehicleCount
vc=vc[37:144]
datat <- data.frame(first=t,second=vc)
ggplot(data=datat, aes(x=t, y=vc, group=1)) +   geom_line()+  geom_point()
destn=paste("day19",".pdf")
dev.print(pdf, destn)  #finale plot will be saved into a pdf


#This code is used to draw and save a scattor plot in R and save into a pdf file

#time vs vehicleCount with granularity of 10 mins from 06:00 to 23:55 
