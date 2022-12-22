#!/bin/bash

cd combined
cat combined.html | tr '\r\n' ' ' | sed -e 's/<hr>/\n/g' | grep -o -P '(?<=\<\/a\>：).*(?=\<br\>)' > replyContent.txt
cat combined.html | tr '\r\n' ' ' | sed -e 's/<hr>/\n/g' | grep -o -P '(?<=回复：).*(?=\<\/a\>)' > replyTarget.txt
cat combined.html | tr '\r\n' ' ' | sed -e 's/<hr>/\n/g' | grep -o -P '(?<=f\?kw\=).*(?=\<\/a\>吧\<a)' | grep -o -P '.*(?=")' > replyBar.txt
cat combined.html | tr '\r\n' ' ' | sed -e 's/<hr>/\n/g' | grep -o -P '(?<=\<\/a\>吧\<a target\="_blank" href\=").*(?="\>回复：)' > replyURL.txt
cat combined.html | tr '\r\n' ' ' | sed -e 's/<hr>/\n/g' | grep -o -P '(?<=class\="text-muted"\>).*(?=\<\/span\>\<\/li\>)' > replyTime.txt
echo -e "所在吧\t回复对象\t回复内容\t回复时间\t贴子链接" > header.txt
paste replyBar.txt replyTarget.txt replyContent.txt replyTime.txt replyURL.txt > replyTable.tsv
cat header.txt replyTable.tsv > replyDataSet.tsv
rm *.txt
rm replyTable.tsv
