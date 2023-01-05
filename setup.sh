# List existing mongo process
pgrep mongo
# Kill existing process if has.
pkill mongo
# Clear old folder if has.
rm -rf rs0 && rm -rf rs1 && rm -rf rs2
# Create log folder.
mkdir -p ./var/log/mongodb
# Create replica set 0
. rs.sh 0
# Create replica set 1
. rs.sh 1
# Create replica set 2
. rs.sh 2
# List existing mongo process
pgrep mongo
# Connect to available host
mongosh < rs.js
mongosh
