#!/bin/sh
set -e

export GATSBY_DIR="/app"
export PATH="$PATH:/usr/local/bin/gatsby"

if [ ! -f "$GATSBY_DIR/package.json" ]
then
  echo "Creating a new gatsby website..."
  gatsby new $GATSBY_DIR

else
  if [ ! -e "$GATSBY_DIR/node_modules/" ]
  then
    echo "Running yarn install..."
    yarn install
  fi
fi

if  [ "$1" == "develop" ]
then
  rm -rf $GATSBY_DIR/public
  rm -fr $GATSBY_DIR/.cache/*
  gatsby develop --host 0.0.0.0 --port 8000

elif  [ "$1" == "build" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build

elif  [ "$1" == "stage" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build
  gatsby serve --port 8000
else
  exec $@
fi



