# nix/modules/home-manager.nix — auto-generated from bevy_hanabi.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_hanabi; in {
  options.programs.bevy_hanabi = {
    enable = lib.mkEnableOption "bevy_hanabi";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_hanabi or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
