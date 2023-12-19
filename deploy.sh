#!/bin/bash

# Get the project ID as a command line argument
projectID=$1

# Define the source and destination directories
root="project/$projectID"
backend_src="$root/backend"
backend_dst="."
frontend_src="$root/editor"
frontend_dst="./editor"

# # Check if the backend destination directory exists
# if [ ! -d "$backend_dst" ]; then
#     # If not, create it
#     mkdir -p $backend_dst
# fi

# # Check if the frontend destination directory exists
# if [ ! -d "$frontend_dst" ]; then
#     # If not, create it
#     mkdir -p $frontend_dst
# fi

# # Copy the backend and frontend directories
# cp -r $backend_src/* $backend_dst
# cp -r $frontend_src/* $frontend_dst

# in reverse direction
cp $backend_dst/*.py $backend_src
cp $backend_dst/routes/*.py $backend_src/routes/
cp -r $frontend_dst/src/* $frontend_src/src/

# Print a success message
echo "Project deployed successfully to ../../root"