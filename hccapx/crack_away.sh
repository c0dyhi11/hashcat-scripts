#!/bin/bash
# The path to the word list you want to use to crack
PATH_TO_WORDLIST="../wordlists/BIG-WPA-LIST"
# Start a loop an interate over every hccapx file
for hccapx_file in *.hccapx; do
    # Drop the file extention off of the hccapx file and add ".cracked" and 
    # place this file in "../cracked"
    cracked_file="../cracked/${hccapx_file%.*}.cracked"
    # Use hashcat in mode 2500 (WPA-EAPOL-PBKDF2), with attack mode "straight",
    # output the file to the cracked_file location, with the source 
    # hccapx_file, and word list in PATH_TO_WORDLIST
    hashcat -m 2500 -a 0 -o $cracked_file $hccapx_file $PATH_TO_WORDLIST
done
