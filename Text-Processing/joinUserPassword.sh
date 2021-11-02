#!/bin/bash
# Name: joinUserPassword.sh - Joint 2 Textfiles und gibt es aus
#
# Benutzung:
# joinUserPassword.sh file1 file2
#
# Autor: Devin Sidler
# Datum: 17.10.2021
join -1 3 -2 1 $1 $2 > ./textfiles/UserAndPw.txt
