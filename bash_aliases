alias grep='grep --color=auto'

alias flush_memcache="echo flush_all | nc localhost 11211"

# When the disk is getting full, choose a dir to run this from to find items >500MB
alias find_large_files='find . -size +500M 2>/dev/null -exec ls -lh {} \;'


# my most common ls commands
alias ls="ls -Ghp"  #colored output, human-readable file sizes, append "/" to end of directory names
alias ll='ls -al'
# sort by time
alias lt='ls -lt'
# reverse sort by time
alias ltr='ls latr'
# 10 most recent files
alias lth='ls -alt|head'
# list only subdirs of the current dir (no files)
alias lsdir='ls -d */'


# show local partitions only, use human readable sizes, and hide inodes section
alias df='df -PHl'

# Display all ipv4 TCP  & UDP ports that have a listener
alias listen_ports="sudo netstat -nlptu4"


# Always use python3
alias python=python3
alias pip=pip3

# displays the registered owners of the netblock containing specified IP address
alias arin="whois -h whois.arin.net $1"
alias ripe="whois -h whois.ripe.net $1"
alias apnic="whois -h whois.apnic.net $1"

# ARIN: Find all contact emails for specified domain
alias arin_email='whois -h whois.arin.net + e @$1'

# nicer diff output; easier to make sense of
alias diff='diff --suppress-common-lines --side-by-side --color'
# Mac nor Linux supports color option (booooo)
test $MACHTYPE = "x86_64-apple-darwin19" && alias diff='diff --suppress-common-lines --side-by-side'
test $MACHTYPE = "x86_64-redhat-linux-gnu" && alias diff='diff --suppress-common-lines --side-by-side'

# Pretty Print json -- requires package "pretty-json" 
alias jsonpp="python -m json.tool $1"

# mtr - My TraceRoute
#               Text mode  IPv4  Country  Use TCP  Columns I want  Show IP and DNS name
alias mtr='sudo mtr --curses -4 --ipinfo 2  --tcp --order "SRDLNA" --show-ips'
# NOTE: Set to use tcp so it's less likely the traffic will be de-prioritized, therefore making it more likely any packet loss numbers can be trusted


# netdiscover local network -- when I need a quick list of what is on the network, via ip, including MAC and hw manuf name
# NOTE: netdiscover is stupid and can only do Class A (/8), Class B(/16), and Class C (/24)
# since I am using multiple 192 networks at home, I have to specify an entire /16, from command line
alias netdiscover-192='sudo netdiscover  -P -N -L -r 192.168.0.0/16'

#for when I'm NATted
alias whatismyip="curl --silent whatismyip.host|grep ipaddress|head -1|sed 's/ //g'|cut -d '>' -f 2|sed 's/<\/p//g'"

# because I'm only using lynx for quick tests, I don't care about the damn cookies, just accept and don't prompt me
alias lynx="lynx -accept_all_cookies"

# Because I have less customized to print line numbers, this messes with the 'history' command. So force history to use 'more' as a pager instead
alias history="PAGER=more history"


alias testssl='cd $HOME/dev/openstack_stuff/testssl.sh-3.1dev; ./testssl.sh --quiet --protocols --server-preference --nodns min --server-defaults --vulnerable --ids-friendly --headers $1'

alias nmap_ssl='nmap -p 443 --script "ssl-c*" --script "ssl-d*" --script ssl-enum-ciphers --script ssl-known-key'
