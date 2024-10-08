{ pkgs }:

with pkgs;

[
  # Essentials
  wget
  gnumake

  # Editors
  vim
  emacs

  # Git family
  gitFull
  tig
  gitAndTools.diff-so-fancy

  # Media related tools
  vlc
  mplayer
  unstable.zathura
  qrencode

  # Pulseaudio tools
  unstable.pulsemixer
  pavucontrol
  paprefs

  # Fuse
  s3fs

  # Entertainment
  spotify
  playerctl

  # File search/listing related tools
  fd
  ripgrep
  exa
  unstable.bat
  fzf
  silver-searcher
  file
  tree
  ranger

  # Help tools
  tldr

  # X window related tools
  redshift
  feh
  rofi
  arandr
  scrot
  slock
  xorg.xev
  xorg.xbacklight
  haskellPackages.xmobar
  gnome3.nautilus

  # Hardware info tools
  lshw
  hwinfo
  hardinfo

  # System monitoring tools
  acpi
  htop
  iotop
  iftop
  dfc
  dstat
  lsof
  powertop
  ncdu
  baobab
  vnstat
  lm_sensors

  # System tools
  lsb-release
  usbutils
  pciutils
  dmidecode
  sysstat
  smartmontools

  # Network tools
  traceroute
  nmap
  nmap_graphical
  nmapsi4
  speedtest-cli
  iw
  unstable.bandwhich

  # Bluetooth
  # bluezFull
  # bluez-tools

  # Terminal and shells
  fish
  kitty
  termite
  tmux
  parallel
  mosh

  # VPN tools
  openvpn
  networkmanager-openvpn

  # File operation tools
  pigz
  jq
  xsv
  unzip
  multitail
  dos2unix

  # Dns related tools
  unstable.whois
  bind # nslookup etc.

  # Productivity tools
  anki

  # Cloud vendor tools
  awscli
  unstable.google-cloud-sdk
  unstable.iamy

  # Browsers
  firefox
  google-chrome
  brave

  # Password management tools
  unstable.gopass
  qtpass
  rofi-pass

  # Bling tools
  cmatrix

  # Font
  font-manager

  # Cloud/VM tools
  unstable.terraform
  unstable.packer

  # Kubernets
  kubectl
  unstable.kustomize
  unstable.kubectx

  # Docker
  docker-credential-gcr
  docker_compose
  unstable.dive

  # Nixos tools
  nix-prefetch-scripts
  nox
  # nixfmt

  # Programming tools
  unstable.cargo
  nodejs-10_x
  # pew
  pgcli
  python36Packages.yamllint
  shellcheck

  # Encryption/Decryption tools
  unstable.sops

  # XPS tools
  nvme-cli
  # Fix freezing after waking up from suspend
  # https://wiki.archlinux.org/index.php/Dell_XPS_13_(9360)#Freezing_after_waking_from_suspend
  xorg.xf86videointel

  # Communication
  unstable.zoom-us

]
