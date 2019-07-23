#!/bin/bash

docker build -t "spark_stfc" .

SPARKFITS="com.github.astrolabsoftware:spark-fits_2.11:0.8.3"

# Run jupyter through the Docker
docker run -it --rm  \
	-v $PWD:/home/jovyan/work:rw -p 8888:8888 -p 400:4040 \
	spark_stfc /usr/local/spark/bin/pyspark --master local[*] --packages $SPARKFITS
