#!/bin/bash

# "$(pwd)" = current dir

echo "Symlinking .bashrc"
ln -sf "$(pwd)/.bashrc" ~/".bashrc"

echo "Symlinking Sublime Text 4"
ln -sf "$(pwd)/sublime-text-4/Package Control.sublime-settings"   ~/".config/sublime-text/Packages/User/Package Control.sublime-settings"
ln -sf "$(pwd)/sublime-text-4/Preferences.sublime-settings"       ~/".config/sublime-text/Packages/User/Preferences.sublime-settings"
ln -sf "$(pwd)/sublime-text-4/SublimeLinter.sublime-settings"     ~/".config/sublime-text/Packages/User/SublimeLinter.sublime-settings"
ln -sf "$(pwd)/sublime-text-4/TypeScript.sublime-settings"        ~/".config/sublime-text/Packages/User/TypeScript.sublime-settings"