alias grep='grep --color=auto'

alias flush_memcache="echo flush_all | nc localhost 11211"

# When the disk is getting full, choose a dir to run this from to find items >500MB
alias find_large_files='find . -size +500M 2>/dev/null -exec ls -lh {} \;'


# my most common ls commands
alias ls="ls -Gh"  #colored output, human-readable file sizes
alias ll='ls -al'
# sort by time
alias lt='ls -lt'
# 10 most recent files
alias lth='ls -alt|head'
# list only subdirs of the current dir (no files)
alias lsdir='ls -d */'


# show local partitions only, use human readable sizes, and hide inodes section
alias df='df -PHl'

# Display all TCP ports that have a listener
# TODO  There is likely a better way to do this
alias listen_ports="netstat -p tcp -a|grep LISTEN"


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

# Pretty Print json
alias jsonpp="python -m json.tool $1"


######## for CPAN developers ########
alias distbuild='./Build distclean; export RELEASE_TESTING=1 && perl Build.PL && ./Build && ./Build distcheck ./Build test && ./Build disttest && ./Build distclean && export RELEASE_TESTING=0'
alias run_dist_tests='export RELEASE_TESTING=1 && prove -r -v -I lib -I ~/. xt/ && export RELEASE_TESTING=0'
alias run_tests='prove -r -I lib -I ~/. t/'
alias test_coverage_remove_taint='export HARNESS_PERL_SWITCHES="-MDevel::Cover=+ignore,\\.t$" && remove_taint && run_tests && cover -report html_basic && export HARNESS_PERL_SWITCHES="" && add_taint'
alias test_coverage='export HARNESS_PERL_SWITCHES="-MDevel::Cover=+ignore,\\.t$" && run_tests && cover -report html_basic && export HARNESS_PERL_SWITCHES="" '
#alias remove_taint="find . -path '*/.git' -prune -o -path '*/data'  -prune -o -type f -exec perl -pi -0777 -e 's/perl -T/perl/sg' {} \;"
alias remove_taint="sed -i 's/perl -T/perl/' t/*"
alias add_taint="sed -i 's/\!perl/\!perl -T/' t/*"
######## END for CPAN developers ########
