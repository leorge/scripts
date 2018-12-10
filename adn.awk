#!/usr/bin/awk -f
#
#   usage : $0 [-v N=count]
#
#   This script appends a line number following a null character in each lines.
#
BEGIN {
    fmt = "%d"
    if (N) {
        fmt = sprintf(fmt, N)
        fmt = sprintf("%%0%dd", length(fmt))
    }
    fmt = sprintf("%%s\0%s\n", fmt)     # Separator and EOL
}
{printf fmt, $0, NR}
