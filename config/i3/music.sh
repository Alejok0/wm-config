#!/bin/bash

reproductor=$(playerctl -l | head -1| cut -c-7)
cancion=$(playerctl metadata title | cut -c-12)

case $reproductor in
  "firefox")
    echo " $cancion"
;;
  "spotify")
    echo " $cancion"
;;
  *)
    echo " $cancion"
;;
esac

