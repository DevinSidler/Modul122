#!/bin/bash
# Name: prozesse.sh - Überprüft ob ein Prozess laeuft
#
# Benutzung:
# prozesse.sh prozess1
#
# Autor: Devin Sidler
# Datum: 25.09.2021
if ps | grep-q $1
then
  echo "Der Prozess $1 laeuft gerade."
else
  echo "Der Prozess $1 laeuft nicht."
fi
