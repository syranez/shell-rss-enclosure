#! /bin/sh
#
# Extracts URIs from RSS-Feeds

# parses stdin
parse() {

    while read line; do
        printf "%s" "$line" | grep -o '<enclosure url="[^"]*' | grep -o '[^"]*$'
    done;
}

# have one argument which points to a file
if [ "$#" -eq 1 ] || [ -f "$1" ]; then
    cat "$1" | parse;
    exit 0;
# have som stdin input
else
    parse;
    exit 0;
fi;

exit 1;
