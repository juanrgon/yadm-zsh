if [[ $(yadm status -s) ]]; then
    echo "There are local configuration changes. Yadm sync required."
fi
