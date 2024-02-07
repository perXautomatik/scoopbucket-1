atempting windows autodeployment

credit the author: nickseagull
[![say thanks badge]( https://img.shields.io/badge/say-thanks-ff69b4)](https://ko-fi.com/nickseagull)

# Table of Contents

- [Security](#security)
- [Productivity](#productivity)
- [Coding](#coding)
- [Writing](#writing)
- [Social](#social)
- [Music](#music)
- [Web browsing](#web-browsing)
  - [Firefox extensions](#firefox-extensions)
- [Command Line Apps](#command-line-apps)
  - [Windows CLI apps](#windows-cli-apps)
  - [WSL CLI apps](#wsl-cli-apps)
- [Set DNS to DNS.Watch](#set-dns-to-dnswatch)

# Applications

I use [BoxStarter](https://boxstarter.org/) in order to automate the installation of most of my applications. The process usually goes like this:

- Install BoxStarter with `. { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; Get-Boxstarter -Force`
- Run the BoxStarter script of this repo with `Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/NickSeagull/my-windows/master/boxstarter/System-Init.ps1 -DisableReboots`

The apps listed in this repo follow the following convention:

- ✅ The app is successfully automated with BoxStarter
- 👜 The app needs to be installed manually from the Windows store
- ⚠ The app needs to be installed manually from its website

**✅ [AutoHotKey](https://www.autohotkey.com/) - General automation**

- AHK provides a scripting language that allows you to automate most of the things in Windows. From remapping keys, to moving the mouse, you can automate everything.
- I have used AHK extensively in the past and I even created bots for online games with it (yes, I was THAT guy, but not always). You can imagine the power of this tool now.

**⚠ [Espanso](https://espanso.org/) - Text expansions**

* I try to avoid typing the typical stuff, like my name, address, etc... Espanso helps me with this task
* Also, I don't like using acronyms, so I can automatically expand them.
* You can find the expansions [here](espanso/default.yml)

**⚠ [Simple Mind]( https://simplemind.eu/ ) - Mind mapping**

* I use Simple Mind to brainstorm around how can I break down a problem into smaller ones

![simple mind screenshot](screenshots/simplemind.png)

**⚠ [Pennywise](https://github.com/kamranahmedse/pennywise) - Floating windows**

- Very useful for watching videos while doing other stuff
- It's like having the ability to listen to a podcast while being able to peek into what the speaker is saying

## Coding

**✅ [Visual Studio Code](https://code.visualstudio.com/) - My main code editor**

**✅ [Docker Desktop]( https://www.docker.com/products/docker-desktop ) - Containerization of apps**

**✅ [VcXsrv](https://github.com/ArcticaProject/vcxsrv) - X11 server for Windows**

* VcXsrv is great, it allows you to run **graphical** Linux apps on Windows thanks to the X11 protocol, make sure to:
  * `export DISPLAY=:0` in the shell `rc` file (this is already done in my Nix config)
  * Save the VcXsrv settings to a safe folder, and add a link into the `shell:startup` directory.
* If some fonts are not being rendered, it is because in VcXsrv you have to:
  * Install them _inside_ WSL with your regular installation method (it probably includes using `fc-cache`)
  * Download them for Windows, and add them to the `C:\Program Files\VcXsrv\fonts` directory

## Music

**✅ [Spotify](https://spotify.com) - Music player**

* I use Spotify on a daily basis. I love listening to many kinds of music, and specially, discovering new songs.

## Command Line Apps

I use most of my command line apps from WSL, apart from a few ones described here:

### Windows CLI apps

**✅ [`chocolatey`]( https://chocolatey.org/ ) - An `apt`/`brew` for Windows**

**✅ [`bat`](https://github.com/sharkdp/bat) - A cat(1) clone with wings**

**✅ [`watchexec`](https://github.com/watchexec/watchexec) - Executes commands in response to file modifications**

**✅ [RunInBash]( https://github.com/neosmart/RunInBash ) - Aliases `$` to run any command in WSL**

### WSL CLI apps

**⚠ `fontconfig` - Font Cache updater**

* For some reason `fontconfig` is not installed by default in WSL Ubuntu 18.04, so I have to install it with `apt`

**⚠ `nix` - A purely functional package manager**

* I install Nix by adding the following to `/etc/nix/nix.conf`

  ```text
  sandbox = false
  use-sqlite-wal = false
  ```

  And by then running `curl https://nixos.org/nix/install sh`

**⚠ [`home-manager`](https://github.com/rycee/home-manager) - User environment management**

* Note: Install using 19.09 as the channel, instead of master.
* I install most of my WSL CLI apps using Nix, and I manage them declaratively using `home-manager`
* I can easily add packages to my `home.nix` file, and then run `home-manager switch` in order to get the newest environment.

**✅ [Link Shell Extension](http://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html#contact) - Context menu entry to create symlinks**

- Sometimes it is useful to create a symbolic link from a folder/file to another place. This is specially useful when dealing with configuration files that are checked in a version control system like Git.

# Acknowledgements

Thanks to [Nikita Voloboev]( https://nikitavoloboev.xyz/ ) for his awesome [`my-mac-os` list]( https://github.com/nikitavoloboev/my-mac-os ), without it, this one wouldn't exist 🙏

# Preferences

## Set DNS to DNS.Watch

- Docker has issues with the default DNS provided with Windows 10, to set it to DNS.Watch's servers, [follow this guide](https://dns.watch/how-to-windows-7).
