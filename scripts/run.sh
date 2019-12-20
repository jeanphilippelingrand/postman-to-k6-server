wget -O postman.request $1

node node_modules/postman-to-k6/bin/postman-to-k6.js -o k6-script.js postman.request

k6 run --duration $3 --vus $5 k6-script.js