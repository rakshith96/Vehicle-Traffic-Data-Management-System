Link to download the dataset http://iot.ee.surrey.ac.uk:8080/datasets/traffic/traffic_feb_june/citypulse_traffic_raw_data_surrey_feb_jun_2014.tar.gz

Extract the citypulse_trffic_raw_data and copy all the csv files into a folder named data, which has to be in the same directory as the code(formatInitialData.py).
This creates 449 csv files which contains the formatted data.
In the intial data the timestamp attribute consisted of both time and data in the same column, using the python code the timestamp attribute is divided into two attributes called time and date.(Note this code gives us the traffic count for every 5 mins there is one more code which gives us a granularity of 10 mins which we have used in our plots)

the csv files named file0,file1,file2 contains data of traffic between two particular location of the months february to june.

So we have choose 5 different roads (one having a school in between)(one having a very huge traffic or vehicle count)(one with very less traffic)(two random loactions) 

The day wise data can be extracted from a particular files using the code "dayWise.py" (this data we have used to check for other methods which did not make much sense for our data(timeSeries,K-means,Dendograms)

The data for granularity of 10 mins os obtained using the code "dataFormating.py".This data is loaded into R and the R script is run(ScatterPlot) to plot the graphs to make inferences (choose a location and a date and draw the plot).

We have considered last 2 weeks of febraury i.e. from 14/02/2014 to 28/02/2014 for 5 locations and we have made inferenceses out of it.

Other methods folder contains the plots for various other meethods which we tried.


The code used for other methods has been documented in the text file named Various Other Methods Tried.

Under other methods,We tried to first find correlations among various attributes which did not yeild fruitful results. So,there was no linear relation at all so linear methods like linear regression failed,even the multivalue regression didnt make sense and logical regression didnt apply for our data. 

We then tried clustering the data based on vehicle count using kmeans clusering where min, max and mean of vehicle count as centroids and plotting graphs for these clustered data, we still failed to get a trend, the same case was with dendograms.

We finally tried time series but even after spliting the time series, we couldnt see any demarcation of trend. Hence we resolved to plot data assuming that traffic directly proportional to vehicle count and inversely related to average emasured time and average speed and drew conclusions based on trends against daily weekly and monthly time.