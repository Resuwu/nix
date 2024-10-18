let
  homeDir = "/home/resu";
in {
  services.openvpn = {
    servers = {
      myvpn = {
        config = ''config ${homeDir}/.config/ovpn/ovss.ovpn '';
        updateResolvConf = true;
        autoStart = false;
      };
    };
  };
}
