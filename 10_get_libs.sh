#
# get_libs - returns a string containing all libraries
#
# returns: string containing path to libraries on stdout
get_libs()
{
    local local_path="/usr/local"
    local libp="lib libexec"
    local libs=""
    for lpath in $libp
    do
        for lib in ${local_path}/${lpath}/*
        do
            if [ ! -f "$lib" ]
            then
                continue
            fi
            libs="$libs $lib"
        done
    done
    echo "$libs"
}
