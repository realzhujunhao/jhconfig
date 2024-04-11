if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g async_prompt_functions _pure_prompt_git


# java
set -gx JAVA_HOME ~/Library/jdk-17.0.7.jdk/Contents/Home
set -gx PATH $JAVA_HOME/bin $PATH

# homebrew
eval (/opt/homebrew/bin/brew shellenv)

# python
set -gx PATH /usr/bin/python3 $PATH
set -gx PATH /usr/bin/pip3 $PATH

# my bin
set -gx PATH ~/Documents/bin $PATH
set -gx PATH ~/Documents/bin/remote $PATH
set -gx PATH ~/Documents/bin/tmux $PATH
set -gx PATH ~/Documents/bin/util $PATH

# rustup
set -gx PATH ~/.cargo/bin $PATH

# nvim
set -gx PATH ~/Documents/bin/nvim-macos/bin $PATH

# alias
function python
    python3 $argv
end

function pip
    pip3 $argv
end

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

thefuck --alias | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/junhaozhu/Documents/google-cloud-sdk/path.fish.inc' ]; . '/Users/junhaozhu/Documents/google-cloud-sdk/path.fish.inc'; end

# Setting PATH for Python 3.12
# The original version is saved in /Users/junhaozhu/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
