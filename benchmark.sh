#!/bin/bash

TIMEFORMAT=%R

export CURRENT_DATE=`date "+%Y-%m-%d_%H-%M"`

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/private/private_file.txt?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.XbPfbIHMI6arZ3Y922BhjWgQzWXcXNrz0ogtVhfEd2o > /dev/null)) >> ./results/`echo $CURRENT_DATE`_javascript.txt 2>&1
done

for i in {1..1000}
do
    (time $(curl -s http://localhost:81/static/static_file.txt > /dev/null)) >> ./results/`echo $CURRENT_DATE`_static.txt 2>&1
done
