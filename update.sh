#!/bin/bash

BUILD_DIR="build"
BOWER_DIR="bower_components"
FA_DIR=$BOWER_DIR"/font-awesome"
SCSS_DIR=$FA_DIR"/scss"
VARIABLES_FILE=$SCSS_DIR"/_variables.scss"
CORE_FILE=$SCSS_DIR"/_core.scss"
PATH_FILE=$SCSS_DIR"/_path.scss"
OUTPUT_DIR="./lib/sass/font-awesome-mixins"
EXTEND_FILE=$OUTPUT_DIR"/_extends.sass"

function clean () {
  mkdir -p ./$BUILD_DIR
  rm -rf ./$BUILD_DIR/*
  rm -rf ./$BOWER_DIR
  rm $EXTEND_FILE
}

function cleanup () {
  rm -rf $BOWER_DIR
  rm -rf $BUILD_DIR
}

function fetch_font_awesome () {
  bower install font-awesome
}

function convert_core_to_extend () {
  echo '%fa-base-styles' >> $EXTEND_FILE
  gawk -v output_file=$EXTEND_FILE '{ match($0, /(.*):(.*);/, arr)
    if (!arr[0])
      next
    print arr[1] ":" arr[2] >> output_file }' $CORE_FILE
}

function convert_variables_to_extends () {
  gawk -v output_file=$EXTEND_FILE '{ match($0, /(\$fa-var)-(.*): "(.*)";/, arr)
    if (!arr[0])
      next
    print "%fa-icon-" arr[2] "\n" "  &:before" "\n" "    content:" " " "\""arr[3]"\"" >> output_file }' $VARIABLES_FILE
}

# function make_font_face_definition () {} coming soon

clean
fetch_font_awesome
convert_core_to_extend
convert_variables_to_extends
cleanup