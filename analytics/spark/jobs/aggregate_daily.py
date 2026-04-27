from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count, countDistinct, date_trunc
spark = SparkSession.builder.appName("factorymind-aggregate-daily").getOrCreate()
df = spark.read.format("iceberg").load("factorymind_mart.events_raw")
result = (df.withColumn("day", date_trunc("day", col("event_time")))
            .groupBy("day", "tenant_id")
            .agg(count("*").alias("events_total"), countDistinct("actor_id").alias("active_actors")))
result.writeTo("factorymind_mart.fct_daily_metrics").using("iceberg").overwritePartitions()
