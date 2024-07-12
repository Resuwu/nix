{ networking = {
        hostName = "resu-laptop";
        networkmanager.enable = true;

        wg-quick.interfaces = {
            wgcf = {
                address = [ "172.16.0.2/32" "2606:4700:110:8373:886b:88a8:ca55:9314/128" ];
                dns = [ "8.8.8.8" ];
                privateKeyFile = "$HOME/.local/wireguard-keys/privatekey";
                mtu = 1280;

                peers = [
                    {
                        publicKey = "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=";
                        allowedIPs = [ "0.0.0.0/0" "::/0" ];
                        endpoint = "162.159.193.5:2408";
                    }
                ];
            };
        };
    };
}