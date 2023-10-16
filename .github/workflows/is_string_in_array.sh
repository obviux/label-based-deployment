#!/bin/bash

# Check if no arguments were provided
if [ $# -ne 2 ]; then
    echo "Incorrect number of arguments provided"
    echo "Usage: ./search_in_list.sh <searchable_array> <array_of_elements_to_search_for>"
    exit 1
fi

# Convert the arguments into arrays
declare -a searchable_array=("${!1}")
declare -a elements_to_search_for=("${!2}")

# Iterate over each element to search for
for search_element in "${elements_to_search_for[@]}"; do
    # Assume the element is not in the array
    found=false

    # Check each element in the searchable array
    for array_element in "${searchable_array[@]}"; do
        if [[ "$array_element" == "$search_element" ]]; then
            # If the element is found, set found to true and break the loop
            found=true
            break
        fi
    done

    # Print whether the element was found or not
    if $found; then
        echo "'$search_element' is in the array"
    else
        echo "'$search_element' is not in the array"
    fi
done
