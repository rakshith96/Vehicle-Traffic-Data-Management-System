import csv
import sys
import os
import glob
path = "Data/*.csv"   
files=glob.glob(path) 
time=[]
i=0
j=0
for name in files:
	nam="file"+str(j)+".csv"
	j+=1
	with open(nam, 'w') as csvfile:
		fieldnames = ['status','avgMeasuredTime','avgSpeed','extID','medianMeasuredTime','date','time','vehicleCount','_id','REPORT_ID']
		writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
		writer.writeheader()
		i=0
		R = open(name,'rt')

		try:
		    reader = csv.reader(R)
		    sep=','
		    for row in reader:
			time=row[5].split('T') 
			if i>1:    
				writer.writerow({'status':row[0], 'avgMeasuredTime':row[1],'avgSpeed':row[2],'extID':row[3],'medianMeasuredTime':row[4],'date':time[0],'time':time[1],'vehicleCount':row[6],'_id':row[7],'REPORT_ID':row[8]})
				i+=1
			else:
				i+=1
		finally:
		    R.close()
'''
This code is written to extract data from original downloaded data and formated by adding two columns 'time' and 'date' and data from each location is saved into a different file 		
'''