#!/bin/bash

# "$(pwd)" = current dir

echo "Symlinking .bashrc"
ln -sf "$(pwd)"/.bashrc ~/.bashrc