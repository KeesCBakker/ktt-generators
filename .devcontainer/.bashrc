# the old project used npm, old habbits die hard
function npm() {
    if [[ $1 == "run" && $2 == "dev" ]] || [[ $1 == "start" ]]; then
        caddy run
    else
        command npm "$@"
    fi
}


# let the user know 
echo "To start the webserver run:" 
echo "" 
echo "\$ caddy run" 
echo "" 