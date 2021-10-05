#!/bin/bash
#
#07.09.2021
#Devin Sidler
############################################################
du -h | sort
a=$(du -sb)
echo "Der totale Speicher beträgt " a