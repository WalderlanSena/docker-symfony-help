#!/bin/bash
# Develop: Walderlan Sena <senawalderlan@gmail.com>
# License: MIT

PATHCONSOLE=//var//www//bin//console

echo "!!! DOCKER SYMFONY HELP :) !!!"
echo "by: Walderlan Sena"
echo ""

case $2 in
    "cache")
        echo ">>> Clearing the cache..." 
        docker exec -it $1 php $PATHCONSOLE cache:clear
    ;;
    "ls") 
        echo ">>> Listing directory"
        docker exec -it $1 ls $3 
    ;;
    "route") 
        echo ">>> Listing directory"
        docker exec -it $1 php $PATHCONSOLE debug:router
    ;;
    *) echo ">>> Invalid option :( <<< " ;;
esac