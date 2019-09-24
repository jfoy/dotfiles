JAVA_VERSION=1.8
if [[ 'Darwin' = "$(uname)" ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v $JAVA_VERSION)
    export PATH=$JAVA_HOME/bin:$PATH
    export MANPATH=$JAVA_HOME/man:$MANPATH
elif [[ 'Linux' = "$(uname)" ]]; then
    # Ubuntu
    export JAVA_HOME=$(dirname $(dirname $(dirname $(readlink -f /usr/bin/java))))
else
    echo "Platform not recognized; JAVA_HOME not set"
fi
