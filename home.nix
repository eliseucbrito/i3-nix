{ config, pkgs, lib, ... }:

let
  i3Config = import ./i3.nix { inherit pkgs lib; };
in
{
  xsession.windowManager.i3 = i3Config.xsession.windowManager.i3;
}

