_yadm_status () {
    if [[ $(yadm status -s) ]]; then
        echo "There are local configuration changes. Yadm sync required."
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec _yadm_status
