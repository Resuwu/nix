{ pkgs, ... }: {
    console = {
        font = "${pkgs.terminus_font}/share/consolefonts/ter-122b.psf.gz";
        packages = with pkgs; [ terminus_font ];
        keyMap = "us";
    };
}