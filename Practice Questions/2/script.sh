#!/bin/bash
total_bill=0

while IFS= read -r line; do
    if [[ "$line" == *"<li>Item"* ]]; then
        price=$(echo "$line" | grep -oP '(?<=<span class="item-price">Rs\. )\d+(?=</span>)')
        qty=$(echo "$line" | grep -oP '(?<=<span class="item-qty">)\d+(?=</span>)')
        total_bill=$((total_bill + price * qty))
    fi
done

echo "$total_bill"


#use \d+ to capture number and .*? to capture any character in between