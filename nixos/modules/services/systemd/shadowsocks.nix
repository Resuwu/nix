{pkgs, ...}: let
  configPath = "$HOME/.config/shadowsocks/config.json";
in {
  systemd.user.services.shadowsocks-proxy = {
      description = "Local Shadowsocks proxy";
      after = "network.target";

      serviceConfig = {
        ExecStart = "${pkgs.shadowsocks-rust}/bin/sslocal -c ${configPath}";
        ExecStop = "${pkgs.toybox}/bin/killall sslocal";
      };

      wantedBy = ["default.target"];
  };
}
