#!/bin/bash
set -e

echo "Deployment started..."

# Pull the latest version of the app
git pull origin main
echo "New changes copied to server !"

echo "Installing Dependencies..."
npm install --yes

echo "Creating Production Build..."
# For ReactJS VueJS and Nuxt JS
npm run build

# For NextJS
echo "creating Nextjs"
pm2 restart vysakh
# npm run start --name 'vysakh'
# npm run export

echo "Deployment Finished!"
