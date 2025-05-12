#!/bin/bash

error() {
	echo "Please install fastfetch before continuing."
	exit 1
}

if ! command -v fastfetch &> /dev/null; then
	error
fi

sudo hostname informatik

echo "IMPORTANT: Now run 'export USER=fachschaft' in your shell"
