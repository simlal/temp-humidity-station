#! /usr/bin/bash

# This script is used to build the presentation slides for the project

# Run the nix-shell to trigger env setup to trigger build
# nix-shell

 # Build the presentation slides
DOCS_DIR=$(pwd)/docs
if [[ ! -d $DOCS_DIR ]]; then
    mkdir docs
fi

# Building the html and pdf decks with marp/node
PRESENTATION_FILE=$DOCS_DIR/project-presentation.md
if [[ ! -f $PRESENTATION_FILE ]]; then
    echo no \'$(basename $PRESENTATION_FILE)\' found, cannot convert to HTML/PDF deck.
    exit 1
fi

# Setting name and chromium-based path
CHROME_PATH=$(which chromium)
BUILT_PRES_DECK=$DOCS_DIR/$(basename -- $PRESENTATION_FILE .md)_$(date +'%d-%m-%Y')
echo Building HTML and PDF decks with \'Marp\'...
marp --html $PRESENTATION_FILE -o $BUILT_PRES_DECK.html
marp --html --pdf $PRESENTATION_FILE -o $BUILT_PRES_DECK.pdf

echo Done! Exiting nix-shell.
exit 0