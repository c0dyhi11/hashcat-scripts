
# Do cool things with hashcat.
## Prereqs
* Run this from a Linux box or have [GNU Tools](https://ryanparman.com/posts/2019/using-gnu-command-line-tools-in-macos-instead-of-freebsd-tools/) installed on Mac.
* Clone this repo to your filesytem, it setups the folder structure nicely.
* Download some word lists and put them in `wordlists`
* Gather some pcap files from something like a [pwnagotchi](https://pwnagotchi.ai/) and put them in `pcap` (With the file extention ***.pcap***)
* Ensure you have [Hashcat](https://github.com/hashcat/hashcat) installed.
* Ensure you have [Hashcat Utils](https://github.com/hashcat/hashcat-utils) installed.

## Do things
* cd into pcap and run `convert2hccapx.sh`
  * This should generate all of your hccapx files from pcap
* cd into hccapx and run `crack_away.sh`
  * This will start cracking (I highly recommend running this in a [tmux](https://github.com/tmux/tmux) window as this could take a long time)
