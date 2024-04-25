#!/bin/bash

rest_api_id=$(cd terraform; tflocal output --raw rest_api_id)
echo ${rest_api_id}

curl --location "https://${rest_api_id}.execute-api.us-east-1.amazonaws.com/dev/productApi" \
--header 'Content-Type: application/json' \
--data '{
  "id": "34534",
  "name": "EcoFriendly Water Bottle",
  "description": "A durable, eco-friendly water bottle designed to keep your drinks cold for up to 24 hours and hot for up to 12 hours. Made from high-quality, food-grade stainless steel, it'\''s perfect for your daily hydration needs.",
  "price": "29.99"
}'

curl --location "https://${rest_api_id}.execute-api.us-east-1.amazonaws.com/dev/productApi" \
--header 'Content-Type: application/json' \
--data '{
  "id": "82736",
  "name": "Sustainable Hydration Flask",
  "description": "This sustainable hydration flask is engineered to maintain your beverages at the ideal temperature—cold for 24 hours and hot for 12 hours. Constructed with premium, food-grade stainless steel, it offers an environmentally friendly solution to stay hydrated throughout the day.",
  "price": "31.50"
}'

curl --location "https://${rest_api_id}.execute-api.us-east-1.amazonaws.com/dev/productApi?id=34534"
