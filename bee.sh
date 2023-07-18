#!/bin/bash

# Curl the URL and store the output in a variable
bee_movie_script=$(curl -s "https://gist.githubusercontent.com/MattIPv4/045239bc27b16b2bcf7a3a9a4648c08a/raw/2411e31293a35f3e565f61e7490a806d4720ea7e/bee%2520movie%2520script")

# Set the initial value for the output file number
file_number=1

# Infinite loop to echo the content to a file with an increasing number in the filename
while true; do
    # Generate the filename with the current file_number
    output_file="bee_movie_output_${file_number}.txt"

    # Echo the content of $bee_movie_script to the file
    echo "$bee_movie_script" > "$output_file"

    # Increment the file_number for the next loop iteration
    ((file_number++))
done
