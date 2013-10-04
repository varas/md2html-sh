#!/bin/bash

dir="$1"
title="$2 $3 $4 $5 $6 $7 $8 $9"
cwd=$(pwd)

header='
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="'$cwd'/style.css" />
'

for file in `ls ./$dir/*.md`
  do
    perl Markdown.pl --html4tags "$file" > "$file.html"
    echo $header | cat - "$file.html" > temp && mv temp "$file.html"
  done

sh index.sh $dir $title > $dir/index.html
