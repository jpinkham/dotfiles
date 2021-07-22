# Pihole example configs

## What is pihole
BLUF: Ad blocker that you can use for your whole house/network. Also, it can block access to malware sites, bitcoin mining sites, many types of privacy-violating marketing trackers, etc.
Check out [the pihole website](https://pi-hole.net/) for full details

### But how?
Set up pihole to be your DNS server. When pihole gets a request to find the IP of a site on the blocklist, it returns 0.0.0.0  (aka  ¯\\_(ツ)_/¯). Then your browser or other devices has no idea how to reach the blocked site and usually just gives up.

Seriously, go read about it on the pihole site, they do a much better job describing it.


*CAVEAT*: Do not copy these files as-is overtop of your own, rather use them as an example
Otherwise, you will clobber settings that you've already set through the web UI or during installation


## Config file examples
These files are located on your system in /etc/pihole/.

* setupVars.conf - contains most of the configuration for pihole
* pihole-FTL.conf - has several of the same variables as the file above but I'm not certain as to why you need/why it has both
* adlists.list - the lists that I subscribe to to build my massive list of sites to block.  Pihole will pull the latest versions of these lists once a week, automatically.  You can manually trigger an update at any time.  Recommended only for the advanced users who want to block more things than pihole provides by default.
