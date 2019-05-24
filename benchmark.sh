#!/bin/bash

TIMEFORMAT=%R

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/js?EXAMPLEQUERYSTRING > /dev/null)) >> ./results/static`date "+%Y%m%d-%H-%M"`.txt 2>&1
done

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/static/static_file.txt?EXAMPLEQUERYSTRING > /dev/null)) >> ./results/javascript`date "+%Y%m%d-%H-%M"`.txt 2>&1
done
