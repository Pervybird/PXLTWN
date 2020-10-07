#!/bin/bash
giefcount(){
current=`wget -qO- https://kombinneninpixeltown.nl/cgi-bin/counter.sh | grep Toeristen | grep -Eo ':.*' | tr -d ':'`
}
giefcount
echo "${current}"
