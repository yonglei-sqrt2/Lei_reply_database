按照编号顺序运行 bash 脚本（`Linux` 或 `macOS` 均可运行），即可复现整个工作流程。

1. `1-getLswRecord.bash`：从 <https://82cat.com/> 保存全部记载回帖的 html 文件。
2. `2-combineHTML.bash`：合并 1 中下载的 html。
3. `3-generateTsv`：提取 2 中合并后 html 的有效信息，整理成 tsv 文件。
4. （可选）`Optional-countAbuse.bash`：对于 3 中生成的 tsv，统计其中辱骂关键词的数量。
