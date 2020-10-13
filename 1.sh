#!/bin/bash
content="$(echo $CONTENT_PATTERN | sed 's/*/.*/' | sed 's/?/./')"
grep --include=$FILENAME_PATTERN -rli . -Ee $content

# grep -Eril $CONTENT_PATTERN . | xargs | grep -Ewio $FILENAME_PATTERN
# find -name $FILENAME_PATTERN -print0 | xargs -0 grep $CONTENT_PATTERN

# export FILENAME_PATTERN='?g*r.txt'
# export CONTENT_PATTERN='con*ten?'
