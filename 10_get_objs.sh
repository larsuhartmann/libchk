#
# get_objs - returns a string containing all dynamically linked
# objects.
#
# returns: string containing path to objects on stdout
get_objs()
{
    local local_path="/usr/local"
    local objp="lib libexec bin sbin"
    local objs=""
    for opath in $objp
    do
        for obj in ${local_path}/${opath}/*
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
