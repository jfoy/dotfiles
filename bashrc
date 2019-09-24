# General configuration starts

# export SSL_CERT_FILE="/usr/local/etc/openssl/cert.pem"

source ~/.fresh/build/shell.sh

# General configuration ends

if [[ -n "$PS1" ]]; then
    : # Executed only for interactive shells

    # Per the direnv installation instructions, this line must occur at the end of
    # .bashrc
    which direnv > /dev/null && eval "$(direnv hook $0)"
else
    : # Executed only for non-interactive shells
fi

if shopt -q login_shell ; then
    : # Executed only for login shells
else
    : # Executed only for non-login shells
    # Force non-login shells to clean up on exit
    trap_exit() {
        source "$HOME/.bash_archive_history"
    }
    trap trap_exit EXIT
fi

