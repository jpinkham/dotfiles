# vim: syntax=shell
# shellcheck shell=bash
    
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

# Display all ipv4 TCP  & UDP ports that have a listener. Ignore portsentry
alias listen_ports="sudo netstat -nlptu4 | grep -v portsentry"


# Always use python3
alias python=python3
alias pip=pip3

# displays the registered owners of the netblock containing specified IP address
alias arin="whois -h whois.arin.net"
alias ripe="whois -h whois.ripe.net"
alias apnic="whois -h whois.apnic.net"

# ARIN: Find all contact emails for specified domain
alias arin_email='whois -h whois.arin.net + e @'

# nicer diff output; easier to make sense of
alias diff='diff --suppress-common-lines --side-by-side --color'
# Neither Mac nor Linux supports color option (booooo)
test $MACHTYPE = "x86_64-apple-darwin19" && alias diff='diff --suppress-common-lines --side-by-side'
test $MACHTYPE = "x86_64-redhat-linux-gnu" && alias diff='diff --suppress-common-lines --side-by-side'

# Pretty Print json -- requires package "pretty-json"
alias jsonpp="python -m json.tool"

# mtr - My TraceRoute
#               Text mode  IPv4  Country  Use TCP  Columns I want  Show IP and DNS name
alias mtr='sudo mtr --curses -4 --ipinfo 2  --tcp --order "SRDLNA" --show-ips'
# NOTE: Set to use tcp so it's less likely the traffic will be de-prioritized, therefore making it more likely any packet loss numbers can be trusted


# netdiscover local network -- when I need a quick list of what is on the network, via ip, including MAC and hw manuf name
# NOTE: netdiscover is stupid and can only do Class A (/8), Class B(/16), and Class C (/24)
# since I am using multiple 192 networks at home, I have to specify an entire /16, from command line
alias netdiscover-192='sudo netdiscover  -P -N -L -r 192.168.0.0/16'

#for when I'm NATted/VPN'd. Need final "echo" to get a newline
alias whatismyip="curl --silent https://api.ipify.org && echo"

# because I'm only using lynx for quick tests, I don't care about the damn cookies, just accept and don't prompt me
alias lynx="lynx -accept_all_cookies"

# Because I have less customized to print line numbers, this messes with the 'history' command. So force history to use 'more' as a pager instead
alias history="PAGER=more history"


alias testssl='cd $HOME/dev/openstack_stuff/testssl.sh-3.1dev; ./testssl.sh --quiet --protocols --server-preference --nodns min --server-defaults --vulnerable --ids-friendly --headers '

alias nmap_ssl='nmap -p 443 --script "ssl-c*" --script "ssl-d*" --script ssl-enum-ciphers --script ssl-known-key'

# show environment variables, aiming to get all the ones sorted to the top, and stop when reach any that start with underscore
alias env_vars='set|head -100|grep -vE "^_"'

# when you want paging + syntax highlighting, make vim behave like "less"
alias vless='vim -u /usr/share/vim/vim81/macros/less.vim'

# Top 10 largest files in current directory
alias space_hogs='du -chs *|sort -rn|head -11'

# force lifetime to be much longer than usual
alias ssh-add='ssh-add -v -t 9999999'
