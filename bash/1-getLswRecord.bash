#!/bin/bash

mkdir raw
mkdir extracted
cd raw

for number in `seq 1 1 1000`
do
	wget https://82cat.com/tieba/reply/%E9%9B%B7%E7%BB%8D%E6%AD%A6/$number
	sed -n '/<ol class="list-unstyled">/,/<\/ol>/p' $number > ../extracted/replyList$number.html
done
