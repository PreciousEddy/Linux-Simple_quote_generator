#!/bin/bash

# Reads the quotes from the file
quotes=()
while read -r line; do
	quotes+=("$line")
done < "quotes.txt"

#Get a random quote
quote=${quotes[$RANDOM % ${#quotes[@]}]}

#Print the quote
echo "$quote"

# to write the Quotes to a File

echo "$quote" > quote.txt

# Send the quote to a mail address
# echo "$quote" | mail -s "Daily Quote" edmundprecious23@gmail.com