# Get the postman collection
wget -O postman.request $1

# Convert the postman collection to k6 script
node node_modules/postman-to-k6/bin/postman-to-k6.js -o k6-script.js postman.request

# Run k6 command with script
k6 run --duration $3 --vus $5 k6-script.js