#!/bin/bash

printf "starting script ...\n\n"

URL=http://www.iiitdm.ac.in

echo "time     connecting time(sec)   total time(sec)   download speed(kB/s)   download size(kB)"
echo "---------------------------------------------------------------------------------------------"
a=1
for i in {1..5}
do
	ti=$(date +"%T")
	curl $URL -w "$ti     %{time_connect}              %{time_total}            %{speed_download}             %{size_download}\n" -o download.file -s
	#curl http://www.iiitdm.ac.in --output index.html
	sleep 2m
done	

printf "ending script..\n"

exit
