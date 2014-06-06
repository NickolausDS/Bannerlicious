#!/bin/bash

echo "Give a date for spamming commits [yyyymmdd]> "
read thedate
in_seconds=$(date -j -f "%Y%m%d" $thedate "+%s")

#testing
#date -r $in_seconds

for each in {1..100}
do
	echo "PANDAS" >> testing/foo
	git add testing/foo
	git commit -m "Auto Committing to foo" --date="`date -r $in_seconds`"
done
