compat_libs=`get_compat_libs`

for broke in `get_broken_libs`
do
    pkg=`get_pkg $broke`
    broken_pkgs="$broken_pkgs $pkg"
done

if [ "$broken_pkgs" ]
then
    bpkgs=`list2lines "$broken_pkgs"|auniq`
    bpkgs=`lines2list "$bpkgs"`
    echo "broken packages: $bpkgs"
    echo "to fix them, run:"
    echo "portmaster $bpkgs"
else
    echo "your system's linkage is healthy!"
fi
