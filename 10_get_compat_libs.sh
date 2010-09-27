get_compat_libs()
{
    local libs=""
    for lib in $LOCALBASE/lib/compat/pkg/*
    do
        if [ ! -f "$lib" ]
        then
            continue
        fi
        libs="$libs $lib"
    done
    
    echo $libs
}
