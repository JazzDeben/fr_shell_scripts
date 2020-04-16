#!/bin/bash
echo "Generating 2000 tokens for the demo user. This will take a minute"
echo "" > output.txt
for j in `seq 1 2000`;
do
	num=$(curl -s --request POST --header "X-OpenAM-Username: demo" --header "X-OpenAM-Password: changeit" --header "Accept-API-Version: protocol=1.0,resource=2.1" --url "http://sso1.capgemini.com:8080/am/json/authenticate?realm=opensso") 
	echo $num >> output.txt
	done
echo "Finished generating 2000 tokens for the demo user"
