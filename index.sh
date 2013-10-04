#!/bin/bash
dir="$1"
title="$2 $3 $4 $5 $6 $7 $8 $9"
cwd=$(pwd)
cat << EOF
<html>
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="$cwd/style.css" />
        <title>
            $title
        </title>
    </head>
<body>
  <h1>$title</h1>
  <ul>
EOF
for file in `ls ./$dir/*.html`
do
    echo "<li><a href=\"../$file\">$file</a></li>"
done
cat << EOF
  </ul>
</body>
</html>
EOF
