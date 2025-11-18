#!/usr/bin/env sh

case $1 in
  telegram )
      niri msg action focus-workspace telegram
      niri msg action focus-column 1
  ;;
  discord )
      niri msg action focus-workspace discord
      niri msg action focus-column 1
  ;;
  mail )
      niri msg action focus-workspace mail
      niri msg action focus-column 1
  ;;
  keepassxc )
      niri msg action focus-workspace keepassxc
      niri msg action focus-column 1
  ;;
  browser )
    niri msg action focus-workspace browser
    niri msg action focus-column 1
  ;;
esac
