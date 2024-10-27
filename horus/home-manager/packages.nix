{pkgs,inputs,...}:

{ home.packages = with pkgs; [
	nixos-generators
        nix-search-cli
        nix-output-monitor
        nix-init
        git-crypt
        xfce.xfconf
        lxde.lxsession
        zsh
        oh-my-zsh
        zip
        xz
        unzip
        p7zip
        ripgrep
        psmisc 
        fzf    
        gnupg
        pinentry
        mtr    
        iperf
        dnsutils      
        nmap    
        ipcalc  
        tree
        lsof
        sysstat
        lm_sensors 
        ethtool
        pciutils 
        usbutils
        qrencode
        pptp
        pptpd
        ppp
        jq     
        yq-go
        gh
        python3
        glfw
        cmake
        gnumake
        nodejs
        rustup
        hugo
        go
        eza
        zoxide
        grim
        slurp
        swappy
        xclip
        feh
        pywal        
        wofi
        xwayland
        wayland-scanner
        wl-clipboard
        clipman
        wlsunset
        wdisplays
        wireguard-tools
        yt-dlp
        gallery-dl
        playerctl
        pulseaudio
        coreutils-prefixed
        dunst
        libnotify
        hyprshot 
        hyprcursor
        nwg-look
        swtpm
        ueberzugpp
        ffmpegthumbnailer
        w3m 
        yazi

        # Desktop Apps
        ark
        telegram-desktop
        chromium
        discord
        filezilla
        remmina
        qbittorrent
        pavucontrol
        pasystray
        blueman
        gparted
        obsidian
        vscode
        feishin
        gimp
        krita
        inkscape
        font-manager
        zathura
        nicotine-plus
        picard
        godot_4
        duckstation
        pcsx2
    
      ];
    }