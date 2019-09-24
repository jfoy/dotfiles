
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

if [ $(which go) ]; then
    unset GOROOT
    unset GOPATH

    export GOROOT=$(eval $(go env); echo $GOROOT)
    export GOPATH=${HOME}/.go
    export PATH=$GOPATH/bin:$PATH

    # Mac OS-only
    launchctl setenv GOROOT $GOROOT
    launchctl setenv GOPATH $GOPATH
fi
