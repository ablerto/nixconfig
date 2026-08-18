{
  config,
  pkgs,
  inputs,
  ... 
} : {
  users.users.alberthr = {
    isNormalUser = true;
    initialHashedPassword = "$y$j9T$i2Oh9OeA/I2Pttz/Ox0jB1$vdMpBLdrleV2sQeqZ0BJXQBwgsNxID3vj3yM8JJ2CA5";
    description = "Albert Hovda Røed";
    extraGroups = [ 
      "networkmanager" 
      "wheel" 
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.alberthr = import alberthr/${config.networking.hostName}.nix;
}