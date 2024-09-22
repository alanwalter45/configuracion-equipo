# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/home/alanwalter/.deno/bin:$PATH
export PATH="/home/alanwalter/.pyenv/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export ANDROID_HOME=/home/alanwalter/Android/Sdk/
export ANDROID_SDK_ROOT=/home/alanwalter/Android/Sdk/
export LANGUAGE=$LANG
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
