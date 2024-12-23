{ config, pkgs, lib, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.default
  ]; 
     
  home-manager.users.ecb = {
    imports = [ ./home.nix ];  
  };

  environment.systemPackages = with pkgs; [
    alacritty
    rofi
    feh
  ];
}

