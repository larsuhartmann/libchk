#
# is_broken - check if a library has broken dependencies or links to
# any library in $LOCALBSE/lib/compat/
#
# usage: is_broken: lib
#  lib: full path to a library
# returns: 1 if library is broken or 0 if not.
is_broken()
{
    local lddout=`ldd "$1" 2>/dev/null`
    if echo "$lddout" | grep -Fq "not found"
    then
        return 0
    fi
    for cl in $compat_libs
    do
        if echo "${lddout}" | grep -Fq "$cl"
        then
            return 0
        fi
    done
    return 1
}
    
