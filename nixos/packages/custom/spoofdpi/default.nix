{
  lib,
  stdenv,
  fetchurl,
  glibc,
  go,
}:

let
  platform = "linux-amd64";
in
stdenv.mkDerivation rec {
  pname = "spoofdpi";
  version = "0.11.1";

  src = fetchurl {
    url = "https://github.com/xvzc/SpoofDPI/releases/download/v${version}/spoofdpi-${platform}.tar.gz";
    hash = "sha256-QjlarYdES+ifU61lj/DD0dOOj5OVkiiNmbV7IT/wiqg=";
  };

  sourceRoot = ".";

  dontBuild = true;
  dontConfigure = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    cp spoofdpi $out/bin
    runHook postInstall
  '';

  meta = with lib; {
    description = "A simple and fast software designed to bypass Deep Packet Inspection.";
    homepage = "https://github.com/xvzc/SpoofDPI";
    license = licenses.asl20;
    platforms = platforms.linux;
    mainProgram = "spoofdpi";
  };
}
