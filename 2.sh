#!/bin/bash
source ~/settings.conf
name=$(whoami)-$(date '+%Y-%m-%d-%H-%M')
tar -czf /tmp/$name.tgz /home/sher/Dev/Bash/bash-scripts/$dir
if [[ -f "/tmp/$name.tgz" ]];
then 
    ln -sfn /tmp/$name.tgz /home/sher/Dev/Bash/bash-scripts/$link_name
fi