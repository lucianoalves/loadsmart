from constants import *
from pyspark.sql import SparkSession

if __name__ == '__main__':
  spark = SparkSession.builder.appName('LoadSmart ETL') \
    .getOrCreate()

  # File location and type
  file_location = INPUT_FILE
  file_type = 'csv'

  # CSV options
  infer_schema = 'false'
  first_row_is_header = 'true'
  delimiter = ','

  df = spark.read.format(file_type) \
    .option('inferSchema', infer_schema) \
    .option('header', first_row_is_header) \
    .option('sep', delimiter) \
    .option('timestampFormat', 'MM/dd/YYYY HH:mm') \
    .option('dateFormat', 'MM/dd/YYYY') \
    .load(file_location)

  df.write \
      .format('jdbc') \
      .option('url', 'jdbc:postgresql://{}/{}'.format(POSTGRES_URL, POSTGRES_DATABASE)) \
      .option('dbtable', POSTGRES_DBTABLE) \
      .option('user', POSTGRES_USER) \
      .option('password', POSTGRES_PASSWORD) \
      .mode('overwrite') \
      .save()
