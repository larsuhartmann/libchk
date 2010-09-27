# convert multiple lines into a list
#
# usage: lines2list "lines"
#  lines: "multiple
#          lines
#          of
#          text"
#  ret: a list with the elements: "multiple lines of text" on stdout

lines2list()
{
    local r=""

    for l in `echo "$1"`
    do
        r="$r $l"
    done
    echo "$r"
}
