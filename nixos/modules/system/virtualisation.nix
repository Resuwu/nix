{ virtualisation = {
        virtualbox.host.enable = true;

        docker = {
            enable = true;
            rootless = {
                enable = true;
                setSocketVariable = true;
            };
        };
    };
}