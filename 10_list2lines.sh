# convert a list into multiple lines
#
# usage: list2lines "list"
#  lines: "list with multiple elements"
#  ret: multiple lines: "list
#        with
#        multiple
#        elements" on stdout

list2lines()
{
    for e in $1
    do
        echo "$e"
    done
}
