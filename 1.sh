#!/bin/bash
grep --include=$FILENAME_PATTERN -rli . -Ee $CONTENT_PATTERN

# grep -Eril $CONTENT_PATTERN . | xargs | grep -Ewio $FILENAME_PATTERN
# find -name $FILENAME_PATTERN -print0 | xargs -0 grep $CONTENT_PATTERN

# FILENAME_PATTERN = '?g*r.txt'
# CONTENT_PATTERN = 'con*tent?'
