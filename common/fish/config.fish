set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x EDITOR vim
set -x TERM xterm-256color

switch (uname)
case Darwin
  set -x GPG_TTY (tty)
  set -x PATH /usr/local/bin $PATH
  gpg-connect-agent /bye
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end

# Keep it around in case something goes wrong
# gpg-connect-agent updatestartuptty /bye > /dev/null

fish_user_abbreviations

# Add local bin to PATH
if test -d $HOME/.local/bin
  set -x PATH $HOME/.local/bin $PATH
end

# Add cargo to PATH
if test -d $HOME/.cargo
  set -x PATH $HOME/.cargo/bin $PATH
end

# Source $HOME/.computer if exists
if test -f $HOME/.computer
  . $HOME/.computer
end