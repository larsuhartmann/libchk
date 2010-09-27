# get package name for a given file.
#
# get_pkg path
#  path: absolute path to file
#  ret: package name on stdout

get_pkg()
{
    pkg_info -qW $1
}
