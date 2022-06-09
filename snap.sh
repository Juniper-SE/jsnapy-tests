#!/bin/bash

#Function to get username/password
getCredentials () {
   # Read Username
  echo -n User:
  read user
  # Read Password
  echo -n Password for $user:
  read -s password
  echo ""
}

if [ "$2" = "" ]
then
  YAML="config_check.yml"
else
  YAML=$2
fi

if [ "$1" = "pre" ]
then
  getCredentials
  echo jsnapy --snap pre -f $YAML
  jsnapy --snap pre -l $user -p $password -f $YAML
  exit
elif [ "$1" = "post" ]
then
  getCredentials
  echo jsnapy --snap post -f $YAML
  jsnapy --snap post -l $user -p $password -f $YAML
  exit

elif [ "$1" = "check" ]
then
  echo jsnapy --check pre post -f $YAML
  jsnapy --check pre post -f $YAML
  exit

elif [ "$1" = "test" ]
then
  getCredentials
  jsnapy --snap pre -l $user -p $password -f $YAML
  jsnapy --snap post -l $user -p $password -f $YAML
  jsnapy --check pre post -f $YAML
  exit

elif [ "$1" = "debug" ]
then
  getCredentials
  jsnapy --snap pre -l $user -p $password -f $YAML
  jsnapy --snap post -l $user -p $password -f $YAML
  jsnapy --check pre post -f $YAML -v
  exit
fi

echo "snap.sh <pre|post|check|test|debug> <config_check.yml>"