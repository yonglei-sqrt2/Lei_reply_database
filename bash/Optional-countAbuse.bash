#!/bin/bash

words=('无知' '无德' '无耻' '无赖' '无知无德' '无知无赖' '无耻无赖' '无知无德无赖' '无知无德无耻无赖' '四无' '无理取闹' '两种人' '白痴' '死人' '人渣' '垃圾' '人渣垃圾' '渣渣' '狗' '吠' '狂吠' '疯狂' '狗的狂吠' '狗的疯狂' '愚昧' '愚蠢' '太差' '太差太差' '弱智' '脑残' 'nmsl' '你爷爷')

for keyword in "${words[@]}"
do
	count=`cut -f 3 combined/replyDataSet.tsv | grep $keyword | wc -l`
	echo $keyword	$count
done
