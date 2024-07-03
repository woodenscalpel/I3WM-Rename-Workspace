#!/bin/bash
Newname=$(dmenu -p 'New Workspace Name: ')

#Get workspace name
WSnum=$(i3-msg -t get_workspaces \
  | jq '.[] | select(.focused==true).name' \
  | cut -c2)

i3-msg 'rename workspace to "'$WSnum':'$Newname'"'
