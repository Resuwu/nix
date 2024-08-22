{ virtualisation = {
        virtualbox = {
            host.enable = true;
            guest = {
                enable = true;
                draganddrop = true;
                clipboard = true;
            };
        };

        docker = {
            enable = true;
            rootless = {
                enable = true;
                setSocketVariable = true;
            };
        };
    };
}