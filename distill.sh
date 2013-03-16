#!/bin/sh

echo '<h1>White House Innovation Fellows Initiatives'
for program in $(ls programs); do
    sed -n '/<div id="content">/,/<\/div><!--\/#content--->/ p' "programs/$program" | sed -n '/<h2>/,$ p'
done
