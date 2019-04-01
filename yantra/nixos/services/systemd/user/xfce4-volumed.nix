{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xfce.xfce4volumed
  ];

  systemd.user.services.xfce4-volumed = {
    enable = true;
    description = "Xfce4 Volume keys control daemon";
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig.Type = "forking";
    serviceConfig.Restart = "always";
    serviceConfig.RestartSec = 2;
    serviceConfig.ExecStart = "${pkgs.xfce.xfce4volumed}/bin/xfce4-volumed";
  };
}
