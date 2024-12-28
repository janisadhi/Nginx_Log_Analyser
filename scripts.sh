#!/bin/bash

#requirements
# You are required to create a shell script that reads the log file and provides the following information:
# 
# Top 5 IP addresses with the most requests
# Top 5 most requested paths
# Top 5 response status codes
# Top 5 user agents


log_file="nginx-access.log"

echo "_____________________________________________________________"
echo " "
echo "Nginx log file analyser"
echo "______________________________________________________________"
echo " "
echo " "
echo " "
echo "Top 5 IP address with the most request"
awk '{print $1}' $log_file | sort | uniq -c | awk '{print $2 " - " $1 " requests"}'|sort -nr| head -5
echo " "
echo " "
echo " Top 5 most requested paths"
awk '{print $7}' $log_file| sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5
echo " "
echo " "
echo " Top 5 response status code"
awk '{print $9}' $log_file| sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5
echo " "
echo " "
echo " Top 5 user agents "
awk '{print $12}' $log_file| sort | uniq -c | sort -nr | awk '{print $2 " - " $1 " requests"}' | head -n 5

echo " "
echo " "
echo " "
echo " "
echo "___________________________________________________________________________"
