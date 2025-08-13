var=home/user/Programming/bash

echo ${var##*/} #greedy prefix removal
echo ${var#*/} #non-greedy prefix removal

echo ${var%%/*} # greedy suffix removal
echo ${var%/*} # non-greedy suffix removal