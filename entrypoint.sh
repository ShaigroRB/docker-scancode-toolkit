#!/bin/bash

arg=$1

function help_image() {
echo "Display this help:"
echo 'docker run scancode --help'
echo ""
echo "Use extractcode:"
echo 'docker run -it --rm -v `pwd`:/scan scancode -it extractcode --help'
echo ""
echo "Use scancode:"
echo 'docker run -it --rm -v `pwd`:/scan scancode -it scancode --help'
}

case "$arg" in
    -h|--help) help_image
        ;;
    scancode) scancode ${@:2}
        ;;
    extractcode) extractcode ${@:2}
        ;;
    *) help_image
        ;;
esac
