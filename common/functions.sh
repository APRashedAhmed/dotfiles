function cleanup {
    # Various files that start poluting a directory
    rm $@ *~
    rm $@ \#*
    rm $@ *\#
    rm $@ *.pyc
}
