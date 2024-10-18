{pkgs, ...}: {
  networking = {
    hostName = "resu-laptop";
    networkmanager = {
      enable = true;
      wifi.macAddress = "random";
    };
    firewall.enable = true;
  };
}
