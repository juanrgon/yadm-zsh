_yadm_status () {
    if [[ $(yadm status -s) ]]; then
        print -P '%B%F{magenta}There are local configuration changes. Yadm sync required.%f%b'
    fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec _yadm_status
