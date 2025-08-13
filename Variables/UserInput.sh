echo "What is your name?"

# read entire line into a variable
read name

echo "Hello $name"

echo "________________________"
# tokenization (delimiter)
# IFS
read a b 
echo "a: $a"
echo "b: $b"

echo "________________________"

# custom IFS

IFS=: read a b c #split by colon
echo "a: $a"
echo "b: $b"
echo "c: $c"