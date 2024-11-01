{username,...}:
{
  
  services = {
    pcscd.enable = true;
    openssh.enable = true;
    printing.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = false;
      alsa.support32Bit = false;
      pulse.enable = true;
    };

    gvfs.enable = true;
    navidrome = {
      enable = false;
      settings = { MusicFolder = "/mnt/disk1/Music";};
      openFirewall = true;
    };
    tumbler.enable = true;
    syncthing = {
      enable = true;
      user = username;
      dataDir = "/home/${username}/Documents";
      configDir = "/home/${username}//Documents/.config/syncthing";
    };
    jellyfin = {
      enable = true;
      openFirewall = true;
      };
  };
}
