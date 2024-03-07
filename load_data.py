import pyspark
from pyspark.sql import SparkSession

spark = SparkSession.builder.master("local").appName("delay_flights").enableHiveSupport().getOrCreate()

df=spark.sql("show databases")
df.show()

datafile=spark.read.csv("s3://flight-delay/dataset/DelayedFlights-updated.csv",header=True)
datafile.show(5)
datafile.write.saveAsTable("delay_flights")


df1=spark.sql("select * from delay_flights limit 5")
df1.show()

df1.printSchema()