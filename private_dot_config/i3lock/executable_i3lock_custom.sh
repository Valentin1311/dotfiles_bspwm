#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#FFC107'   # Warm yellow (Material Design Amber)
TEXT='#FFB300'      # Slightly darker orange-yellow for readability
WRONG='#FF5722'     # Soft red-orange for errors
VERIFYING='#FFA000' # Slightly deeper yellow-orange for verifying state

i3lock \
  --insidever-color=$CLEAR \
  --ringver-color=$VERIFYING \
  \
  --insidewrong-color=$CLEAR \
  --ringwrong-color=$WRONG \
  \
  --inside-color=$BLANK \
  --ring-color=$DEFAULT \
  --line-color=$BLANK \
  --separator-color=$DEFAULT \
  \
  --verif-color=$TEXT \
  --wrong-color=$TEXT \
  --time-color=$TEXT \
  --date-color=$TEXT \
  --layout-color=$TEXT \
  --keyhl-color=$WRONG \
  --bshl-color=$WRONG \
  \
  --screen 1 \
  --blur 10 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A, %d-%m-%Y"
# --keylayout 1                \ Langue du clavier
