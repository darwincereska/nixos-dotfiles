{ conifg, pkgs, ...}: {
	imports = [
		# ./modules/pywal.nix
		
	];
	nixpkgs = {
	    config = {
	    allowUnfree = true;
	    packageOverrides = pkgs: {
	    # unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") {};
	    };
	  };
	 };


	
	 
	
	home = {
		username = "darwin";
		homeDirectory = "/home/darwin";
		stateVersion = "24.05";
		
		packages = with pkgs; [
			btop # Monitor
			planify # Todo List # 
			ptyxis # Terminal
			htop # Monitor
			todoist-electron
			nodejs_22
			obsidian # Notes
			help2man
			busybox # Bunch of commands
			armcord # Lighweight Discord Client
			chezmoi # Dotfiles Manager
			fzf  # Searches Files
			python3 # Python
			warp # File Transfer			
			dialog
			libguestfs
			pywal
			cava # Music Visualizer
			vscode # Code Editor
			android-tools # ADB Tools
			prismlauncher # Multi MC Launcher
			authenticator # Gnome Authenticator
			neovim # Text Editor
			spotify # Music Client
			beeper # Chat Client
			firefox-wayland # Firefox
			fastfetch  # Neofetch but fast
	    	localsend
    		mission-center # Task Manager
	    	chromium
	    	scrcpy # Android Screen Mirror
		];
		
	
	};
}
