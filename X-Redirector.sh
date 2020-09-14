#!/bin/bash

echo ""
echo " Youtube: B4GG3R"
echo " Facebook: siratsami71"
echo ""

echo "Enter target url list:"
read urls
for i in $(cat $urls); do
    content=$(curl -I "{$i}" -H "X-Forwarded-Host: foo.com")
    echo "URL: $i" >> output.txt
    echo "$content" >> output.txt
done

cat output.txt | grep -e URL -e foo
echo " Done"
