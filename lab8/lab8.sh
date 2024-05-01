#!/bin/bash

# Download the JSON data (assuming jq is installed)
json_data=$(curl 'https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85' | jq .)

# Extract the first six characters of each receiptTime value
receipt_times=$(echo "$json_data" | jq '.[].receiptTime'  | head -n 6)

# Print the receipt times
echo "$receipt_times"
