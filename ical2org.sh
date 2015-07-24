#! /usr/bin/env bash

# rfc: https://www.ietf.org/rfc/rfc2445.txt

summary=""
location=""
description=""
starttime=""
endtime=""

function trim () {
    echo $1 | cut -d: -f2
}

while read line; do
    if [[ "$line" =~ "SUMMARY" ]]; then
	summary=`echo $line | cut -d: -f2`
    elif [[ "$line" =~ "LOCATION" ]]; then
	location=`echo $line | cut -d: -f2`
    elif [[ "$line" =~ "DESCRIPTION" ]]; then
	description=$line
    elif [[ "$line" =~ "DTSTART" ]]; then
	t=`echo $line | cut -d: -f2 | sed 's/T/ /'`
	starttime=`date --date "${t::-4} UTC" "+%Y-%m-%d %a %H:%M"`
    elif [[ "$line" =~ "DTEND" ]]; then
	t=`echo $line | cut -d: -f2 | sed 's/T/ /'`
	endtime=`date --date "${t::-4} UTC" "+%Y-%m-%d %a %H:%M"`
    fi
done < /dev/stdin

echo "* ${summary}"
echo "  <${starttime}>--<${endtime}>"
echo "  :PROPERTIES:"
echo "  :LOCATION: $location"
echo "  :SUMMARY: $summary"
echo "  :END:"
