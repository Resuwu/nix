{pkgs, ...}: let
  configPath = "$HOME/.config/shadowsocks/config.json";
in {
  systemd.services = {
    shadowsocks-proxy = {
      Unit = {
        Description = "Local Shadowsocks proxy";
        After = "network.target";
      };
      Install = {
        WantedBy = ["default.target"];
      };
      Service = {
        ExecStart = "${pkgs.shadowsocks-rust}/bin/sslocal -c ${configPath}";
        ExecStop = "${pkgs.toybox}/bin/killall sslocal";
      };
    };
  };
}
