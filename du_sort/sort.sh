#!/bin/bash
#
# Name: sort.sh - Gibt die Dateigrösse aus
#
# Benutzung:
# sort.sh file1
#
# Autor: Devin Sidler
# Datum: 07.09.2021
du -h | sort
a=$(du -sb)
echo "Der totale Speicher beträgt " a