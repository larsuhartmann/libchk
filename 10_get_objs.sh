#
# get_objs - returns a string containing all dynamically linked
# objects.
#
# returns: string containing path to objects on stdout
get_objs()
{
    local objs=""
    for opath in ${SEARCHPATH}
    do
        for obj in ${LOCALBASE}/${opath}/*
        do
            if [ ! -f "$obj" ]
            then
                continue
            fi
            objs="$objs $obj"
        done
    done
    echo "$objs"
}
