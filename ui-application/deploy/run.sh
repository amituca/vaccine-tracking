#!/usr/bin/env bash

# ------------------ Install npm dependencies ------------------
echo "------------------------------------------------------------------"
echo "-> ┣▇▇▇═─ Vaccine Tracking UI: development deploy script vs. 0.1 -"
echo "------------------------------------------------------------------"
printf "\n\n"

echo "-> Step 1: Starting to install npm dependencies ...."
echo " -> UI Application: client"
cd ./client
echo " -> Current folder: " . $PWD
npm ci &> /dev/null


# UI Application: server
echo " -> UI Application: server"
cd ..
cd ./server
echo " -> Current folder: " . $PWD
npm ci &> /dev/null
cd ..

printf "\n\n"
echo "-> Step 2: Deploy docker containers ...."
docker-compose up -d &> /dev/null

printf "\n\n-> Deployment finished! \n\n"
echo "-----------------------------------------------------------------"
# ---------------------------------------------------------------

