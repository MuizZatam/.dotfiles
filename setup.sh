# Update
sudo dnf up

# Defining touchpad behaviour

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
 Section "InputClass"
         Identifier "touchpad"
         MatchIsTouchpad "on"
         Driver "libinput"
         Option "Tapping" "on"
 EndSection
EOF

sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
  Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
  EndSection

  Section "InputClass"
        Identifier "libinput pointer catchall"
        MatchIsPointer "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
  EndSection
EOF

# Installations
sudo dnf install -y alacritty polybar picom neovim git curl nitrogen
