#
# get_broken_libs - returns a list of all libraries with broken
# linkage
#
# returns: string containing path to broken libraries on stdout
get_broken_libs()
{
    local blibs=""
    for lib in `get_libs`
    do
        if is_broken "$lib"
        then
            blibs="$blibs $lib"
        fi
    done
    echo "$blibs"
}
