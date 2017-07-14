import csv
import glob
path = "file2.csv" #location of the data
k=0
R = open(path,'rt')
reader = csv.reader(R)
with open('day15_2.csv', 'w') as csvfile:
    fieldnames = ["status","avgMeasuredTime","avgSpeed","extID","medianMeasuredTime","date","time","vehicleCount","X_id","REPORT_ID"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    for row in reader:
        x=row[6].split(":")
        if len(x)>1:
            if str(row[5])=="2014-02-15" and int(x[1])%5==0:  #every alternative 5 mins data is considered
                    writer.writerow({"status":row[0],"avgMeasuredTime":row[1],"avgSpeed":row[2],"extID":row[3],"medianMeasuredTime":row[4],"date":row[5],"time":row[6],"vehicleCount":row[7],"X_id":row[8],"REPORT_ID":row[9]})

'''
This Code written in python is to format,clean data (The attribute in the raw data was clubed with data and time together, so we had to form two attributes i.e date and time seperately as column 5 and 6 respectively)
and extract data from a file of a particular location of a particular date.
The initial granularity of the data was for every 5 mins! Using this code the granularity of the data was increased to 10 mins, so that the graphs wouldn't look clumsy and inferences could be made with ease and written into a .csv file.