#!/bin/bash
# author: mr-rizwan-syed, rushikeshhh-patil, vishnu-menon
# Thanks to kaeferjaeger.gay

download_sni() {
    base_url="https://kaeferjaeger.gay/sni-ip-ranges"
    output_folder="sni-ranges"

    providers=("amazon" "digitalocean" "google" "microsoft" "oracle")

    # Create the output folder if it doesn't exist
    mkdir -p "$output_folder"

    for provider in "${providers[@]}"; do
        url="$base_url/$provider/ipv4_merged_sni.txt"
        output_file="$output_folder/${provider}_ipv4_merged_sni.txt"
        wget "$url" -O "$output_file"
    done
}

search_domain() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <domain>"
        exit 1
    fi

    domain="$1"
    files="sni-ranges/*.txt"

    for file in $files; do
        provider=$(basename "$file" | cut -d'_' -f1)
        echo "Provider: $provider"
        grep -E "\\b$domain\\b" "$file"
        echo "------------------------"
    done
}

# Check if an argument is provided
if [ "$#" -ne 1 ]; then
    echo "Please provide the domain to search."
    exit 1
fi

# Check if the update flag is present
if [ "$1" == "-update" ]; then
    download_sni
    exit 0
fi

# Execute the function with the provided domain argument
search_domain "$1"
