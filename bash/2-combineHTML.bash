#!/bin/bash

mkdir combined
cd extracted

cat replyList[0-9].html > ../combined/c1.html
cat replyList[0-9][0-9].html > ../combined/c2.html
cat replyList[0-9][0-9][0-9].html > ../combined/c3.html

cd ../combined
cat c1.html c2.html c3.html > combined.html
rm c[0-9].html

