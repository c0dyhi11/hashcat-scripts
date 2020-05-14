#!/bin/bash
# the location of cap2hccapx tool that converts pcap to hccapx
PATH_TO_CAP2HCCAPX='/root/hashcat-utils/src/cap2hccapx.bin'

# Start a loop through every pcap file in this directory
for pcap_file in *.pcap; do
    # Strip the file extention off of the pcap file "pcap" and use that file
    # name to create a file in teh hccapx with the extention of hccapx
    hccapx_file="../hccapx/${pcap_file%.*}.hccapx"
    # convert the pcap to hccapx
    $(PATH_TO_CAP2HCCAPX $pcap_file $hccapx_file)
done
