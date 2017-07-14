import csv
import glob
path = "file3.csv" #data about all days of a particular location,Note each files conatains data between two particular location
R = open(path,'rt')
reader = csv.reader(R)
with open('day14_02.csv', 'w') as csvfile:         #destination file. the output will be written into this file
    fieldnames = ["status","avgMeasuredTime","avgSpeed","extID","medianMeasuredTime","date","time","vehicleCount","X_id","REPORT_ID"]
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for row in reader:
        if str(row[5])=="2014-02-14":
                writer.writerow({"status":row[0],"avgMeasuredTime":row[1],"avgSpeed":row[2],"extID":row[3],"medianMeasuredTime":row[4],"date":row[5],"time":row[6],"vehicleCount":row[7],"X_id":row[8],"REPORT_ID":row[9]})

'''
This code is used to extract data of a particular date
'''