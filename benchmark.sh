#!/bin/bash

TIMEFORMAT=%R

export CURRENT_DATE=`date "+%Y-%m-%d_%H-%M"`

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/js?EXAMPLEQUERYSTRING > /dev/null)) >> ./results/`echo $CURRENT_DATE`_static.txt 2>&1
done

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/static/static_file.txt?EXAMPLEQUERYSTRING > /dev/null)) >> ./results/`echo $CURRENT_DATE`_javascript.txt 2>&1
done
