{pkgs, ...}: let
  configPath = "/home/resu/.config/shadowsocks/config.json";
  defaultPath = "/run/current-system/sw/bin/";
in {
  systemd.services.shadowsocks-proxy = {
    description = "Local Shadowsocks proxy";
    after = ["network.target"];

    serviceConfig = {
      ExecStart = ''${pkgs.shadowsocks-rust}/bin/sslocal -c ${configPath}'';
      ExecStop = ''${defaultPath}pkill -f sslocal'';
    };

    wantedBy = ["default.target"];
  };
}
