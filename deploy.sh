#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Genterate file statis
sudo hugo # if using a theme, replace by `hugo -t <yourtheme>`

# pindah ke direktoru publik
cd public
# tambahkan perubahan ke Git
sudo git add -A

# Buat sebuah commit baru
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
sudo git commit -m "$msg"

# Push atau puload ke Github
sudo git push origin master

# Balik ke direktori sebelumnya
cd ..

