#!/bin/bash

# Fetch METAR data from the API
METAR_DATA=$(curl -s "https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85")

# Parse the data and extract receiptTime
RECEIPT_TIME=$(echo "$METAR_DATA" | jq -r '.features[0].properties.receiptTime')

# Output the first six characters of receiptTime
echo "${RECEIPT_TIME:0:6}"
