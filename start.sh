#!/bin/bash
help() {
    echo "Usage: ./start.sh -c <logo_color> [-t <terminal_color>]"
    echo ""
    echo "Options:"
    echo "  -c <color>      Logo color: red or green"
    echo "  -t <color>      Terminal color (default: green): black, red, green, yellow, blue, magenta, cyan, white"
    echo ""
    echo "Examples:"
    echo "  ./start.sh -c green -t red"
    echo "  ./start.sh -c red"
    exit 1
}

logo_color=""
terminal_color="green"

while getopts ":c:t:" opt; do
    case $opt in
        c) logo_color="$OPTARG" ;;
        t) terminal_color="$OPTARG" ;;
        *) help ;;
    esac
done

if [[ -z "$logo_color" ]]; then
    help
fi

echo ""
echo ""

case "$logo_color" in
    green)
        fastfetch --logo assets/ohm_logo_omega_only_green --config config.jsonc --color "$terminal_color"
        ;;
    red)
        fastfetch --logo assets/ohm_logo_omega_only_red --config config.jsonc --color "$terminal_color"
        ;;
    *)
        echo "Invalid logo color: $logo_color"
        help
        ;;
esac

echo ""
echo ""

