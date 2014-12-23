{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the gummiboot efi boot loader.
  boot.loader.gummiboot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Hardware =============================================

  # Hostname
  networking.hostName = "yantra"; # Define your hostname.

  # Wireless
  networking.wireless.enable = true;  # Enables wireless.
  networking.wireless.interfaces = [ "wlp2s0" ];

  # Enables users to control via wpa_cli/gui
  networking.wireless.userControlled.enable = true;

  # Sounds & Audio
  hardware.pulseaudio.enable = true;

  # Regional/Locale ======================================

  time.timeZone = "Europe/Stockholm";

  # Select internationalisation properties.
  i18n = {
    consoleFont = "lat9w-16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Packages =============================================

  # List packages installed in system profile. To search by name, run:
  # -env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget
    curl
    xclip
    xcape
    tree
    file
    autojump # autolearn jump from cd
    axel # better than wget
    silver-searcher
    keychain

    xlibs.xev
    xlibs.xbacklight

    htop
    iotop
    iftop
    # powertop
    acpi
    ncdu # ncurses interactive file usage
    dfc # simple pretty file usage

    pavucontrol
    alsaUtils
    # paprefs
    pamixer

    dmenu
    scrot
    firefox
    chromium    
    vlc
    zathura
    mplayer
    libnotify
    baobab # view files usage

    xfce.xfce4icontheme
    xfce.xfce4notifyd

    gnome.gnome_icon_theme
    gnome3.gnome_icon_theme
    gnome3.gnome_icon_theme_symbolic

    lilyterm
    fish

    ruby_2_1_2

    vim
    emacs
    mg # micro gnu emacs
    git
    tig
    vagrant
    weechat

    haskellPackages.xmonad
    haskellPackages.xmonadExtras
    haskellPackages.xmonadContrib
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flash only on chromium
  nixpkgs.config.firefox.enableAdobeFlash = false;
  nixpkgs.config.chromium.enableAdobeFlash = false;

  # Services =============================================

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Maybe try out KDM instead of slim sometime
  # services.xserver.displayManager.kdm.enable = true;

  # XServer configuration
  services.xserver = {
    enable = true;
    autorun = true;
    layout = "us";

    # X Keyboard options
    xkbOptions = "ctrl:nocaps";

    # Just use xmonad, what's the problem ?
    windowManager.xmonad.enable = true;
    windowManager.xmonad.enableContribAndExtras = true;
    windowManager.default = "xmonad";

    # No need for desktop manager
    desktopManager.xterm.enable = false;
    desktopManager.default = "none";

    # Login manager
    displayManager.slim.enable = true; 

    # Enable Touchpad support using synaptics driver
    # https://wiki.archlinux.org/index.php/Touchpad_Synaptics
    synaptics.enable = true;
    synaptics.tapButtons = true;
    synaptics.buttonsMap = [ 1 3 2 ];
    synaptics.fingersMap = [ 1 3 2 ];
    synaptics.palmDetect = true;
    synaptics.twoFingerScroll = true;
    synaptics.vertEdgeScroll = false;

    # Natural scrolling
    synaptics.additionalOptions = ''
      Option "VertScrollDelta"  "-111"
      Option "HorizScrollDelta" "-111"
    '';

  };

  # Enable virtualbox
  services.virtualboxHost.enable = true;
  # services.virtualboxHost.enableHardening = true;

  # Enable acpi daemon
  services.acpid.enable = true;
  services.acpid.lidEventCommands = ''
    LID_STATE=/proc/acpi/button/lid/LID0/state
    if [ $(/run/current-system/sw/bin/awk '{print $2}' $LID_STATE) = 'closed' ]; then
      systemctl suspend
    fi
  '';

  # Users ================================================

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.suvash = {
    name = "suvash";
    createHome = true;
    home = "/home/suvash";
    shell = "/run/current-system/sw/bin/fish";
  };

  # Define members for wheel group
  users.extraGroups.wheel.members = [ "suvash" ];

  # Define members for vboxusers group
  users.extraGroups.vboxusers.members = [ "suvash" ];

  # Programs =============================================

}
