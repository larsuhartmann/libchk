#
# get_broken_libs - returns a list of all dynamically linked objects
# with broken linkage
#
# returns: string containing path to broken dynamically linked objects
# on stdout
get_broken_objs()
{
    local bobjs=""
    for obj in `get_objs`
    do
        if is_broken "$obj"
        then
            bobjs="$bobjs $obj"
        fi
    done
    echo "$bobjs"
}
