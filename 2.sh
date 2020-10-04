#!/bin/bash
source ~/settings.conf
if [ -fe /home/sher/Dev/Bash/bash-scripts/$link_name ]
then 
    rm /home/sher/Dev/Bash/bash-scripts/$link_name
fi 
tar -czf /tmp/"$(whoami)"-$(date '+%Y-%m-%d').tgz /home/sher/Dev/Bash/bash-scripts/$dir
ln -s /tmp/"$(whoami)"-$(date '+%Y-%m-%d').tgz /home/sher/Dev/Bash/bash-scripts/$link_name