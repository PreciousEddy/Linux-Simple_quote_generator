# Using LINUX to Create a Quote 

*Working from commandline in Linux is fun. We can do anything from Terminal, even motivate ourselves too. There are two simple bash/zsh shell scripts to display some random quotes from popular authors, and leaders on your Terminal. These scripts will work on any system that supports bash*

 ` #!/bin/bash `
  ` # Read the quotes from the file `
   `quotes=()`
 `while read -r line; do`
    `quotes+=("$line")`
`done < "quotes.txt"`
`                   `
`# Get a random quote `
`quote=${quotes[$RANDOM % ${#quotes[@]}]}`
`                  `
`# Print the quote `
`echo "$quote"`
