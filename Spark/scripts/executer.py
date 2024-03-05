from pyspark.sql import SparkSession
import time

spark = SparkSession.builder.master("local").appName("delay_flights").enableHiveSupport().getOrCreate()
    
execution_times = {}

def execute(delay_type):
    st = time.time()
    result = spark.sql(f"SELECT CAST(Year AS INT), avg(({delay_type} /ArrDelay)*100) from delay_flights GROUP BY Year SORT BY Year").show()
    et = time.time()
    execution_times[delay_type] = et - st
    print(f"time: {execution_times[delay_type]}")
    return execution_times