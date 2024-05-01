#!/bin/bash

json_data=$(curl 'https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85' | jq .)

receipt_times=$(echo "$json_data" | jq '.[].receiptTime'  | head -n 6)

echo "$receipt_times"
