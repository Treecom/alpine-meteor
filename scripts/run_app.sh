set -e

# Set a delay to wait to start meteor container
if [[ $DELAY ]]; then
  echo "Delaying startup for $DELAY seconds"
  sleep $DELAY
fi

# Honour already existing PORT setup
export PORT=${PORT:-80}
cd /app

echo "=> Starting meteor app on port:$PORT"
node main.js
