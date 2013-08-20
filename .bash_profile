# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# init rvm
#source ~/.rvm/scripts/rvm

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

##
# Your previous /Users/marcin/.bash_profile file was backed up as /Users/marcin/.bash_profile.macports-saved_2013-02-14_at_13:13:04
##

# MacPorts Installer addition on 2013-02-14_at_13:13:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/share/npm/lib/node_modules/yo/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

