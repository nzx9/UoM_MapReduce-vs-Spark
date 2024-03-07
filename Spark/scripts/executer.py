from pyspark.sql import SparkSession
import time

spark = SparkSession.builder.master("local").appName("delay_flights").enableHiveSupport().getOrCreate()
    
def execute(delay_type, times_file, run_for=1):
    st = time.time()
    for i in range(run_for):
        result = spark.sql(f"SELECT CAST(Year AS INT), avg(({delay_type} /ArrDelay)*100) from delay_flights GROUP BY Year SORT BY Year").show()
    et = time.time()
    execution_time = et - st
    print(f"time: {execution_time}")
    with open(times_file, "+a") as f:
        f.write(f"{delay_type},{run_for},{execution_time}\n")
    return result