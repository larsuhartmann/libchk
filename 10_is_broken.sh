#
# is_broken - check if a dynamically linked object has broken
# dependencies or links to any library in $LOCALBSE/lib/compat/pkg
#
# usage: is_broken obj
#  obj: path to a dynamically linked object.
#  ret: returns 1 if the object is broken or 0 if not.
is_broken()
{
    # cache ldd output
    local lddout
    lddout=`ldd "$1" 2>/dev/null`

    # check for broken links
    if echo "$lddout" | grep -Fq "not found"
    then
        return 0
    fi
    
    # check if this object links against a compatibility library
    for cl in $compat_libs
    do
        if echo "$lddout" | grep -Fq "$cl"
        then
            return 0
        fi
    done
    return 1
}
