#!/bin/bash

DURATION=7

if [ "$#" -eq 1 ]; then
  DURATION=$1
fi
echo "Creating scratch org"
sfdx force:org:create -a dreamhouse -s -f config/project-scratch-def.json -d $DURATION
echo "Pushing source"
sfdx force:source:push
sfdx force:user:permset:assign -n dreamhouse
sfdx force:user:permset:assign -n yelpdemo
echo "Org is set up"
sfdx force:org:open -p /lightning/page/home

