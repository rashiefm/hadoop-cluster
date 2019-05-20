#!/bin/bash



hdfs dfs -mkdir -p /user/hduser
hdfs dfs -mkdir -p data1gb/input
hdfs dfs -copyFromLocal dataset1gb data1gb/input


hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-2.7.2-sources.jar org.apache.hadoop.examples.WordCount data1gb/input/dataset1gb dataset1gb/output


