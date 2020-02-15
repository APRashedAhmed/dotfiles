function cleanup {
    # Various files that start poluting a directory
    rm $@ *~
    rm $@ \#*
    rm $@ *\#
    rm $@ *.pyc
}

# Checks if the current host name contains the passed str argument
function globhost()
{
    if [[ "$HOSTNAME" == *"$1"* ]]
    then
        return 0
    else
        return 1
    fi
}
