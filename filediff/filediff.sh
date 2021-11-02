#!/bin/bash
#
# Name: filediff.sh - Anzeige von unterschiedlichen Zeilen zweier Dokumente
#
# Benutzung:
# filediff.sh file1 file2
# file1: Ist das erste Dokument
# file2: Ist das zweite Dokument
#
# Autor: Devin Sidler
# Datum: 28.09.2021

file1="$1"
file2="$2"

echo "Dokument 1: $file1"
echo "Dokument 2: $file2"
#existieren beiden files?
if [[ -f "$file1" && -f "$file2" ]]; then
  echo "Ausgabe der Zeilen:"
  # Variablen setzen
  if [[ $(wc -l < "$file1") -gt $(wc -l < "$file2") ]];
  then
    bigFile=$file1
    smallFile=$file2
  else
    bigFile=$file2
    smallFile=$file1
  fi
  differentRows=0
  rowAmount=$(("$(wc -l < "$bigFile")"+1))
  i=1
  while [[ $i -le $rowAmount ]]
  do
    #Aktuelle Zeile
    currentBig=$(sed -n ${i}p "$bigFile")
    #Aktuelle Zeile
    currentSmall=$(sed -n ${i}p "$smallFile")
    echo "$i: $currentBig"
    echo "$i: $currentSmall"
    #Überprüfung
    if [[ "$currentBig" != "$currentSmall" ]]; then
      ((differentRows=differentRows+1))
      echo "Zeile $i nicht gleich"
    fi
    ((i=i+1))
  done
  echo "Insgesamt sind $differentRows Zeilen ungleich"
else
  echo "Ungültige Dokumentangabe"
fi