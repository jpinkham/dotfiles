# dotfiles
My favorite settings files, for *nix and OSX


NOTE: the bashrc files reference a git command completion file. 
It's available at https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

* Favorite_Burp_Settings: Use this when creating new BurpSuite projects
* bash_aliases: Alias topics include software dev, IP/network recon, finding
    large files.
* bashrc-linuxVPS: bash customizations for my linux server, with a focus on 
    software dev, including customizing the shell prompt to include 
    git-specific info when in a git repo directory.
* bashrc-osx: bash customizations for my MacBook, including some OSX-specific 
    items such as ‘brew’ for software install. 
    WARN: OSX does not load ~/.bashrc by default when opening terminals, but it
    will run ~/.profile.  I was able to get around this by soft-linking 
    .bashrc to .profile (of course there is likely a better way).
* gitignore-global: Files that git should ignore that may be in your local dir
    that you want to sync with git. Ex: OS-generated files, editor backups, etc.
* htoprc-*: Configs for 'htop' system utility. Think 'top' but better.
    Includes a version for a multi-core laptop (includes all cores + battery)
    and a single-core VM.
* perlcriticrc: Configure Perl::Critic to ignore certain types of violations.
* screenrc: customize a terminal multiplexer (similar to tmux).
* tmux.conf: moving away from screen; similar customizations.
* vimrc: adds dynamic spellcheck, displays line numbers, helpful status line.
