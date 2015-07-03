#!/bin/bash

DIR=$HOME/temp/vdsgDEPLOY

rm -rf $DIR
mkdir $DIR
bundler exec jekyll build --dest $DIR
lftp 93714-vsdg@ftp.vdsg.at -e "mirror -R $DIR /; quit"
