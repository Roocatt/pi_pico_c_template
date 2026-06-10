#!/bin/sh

if [ "$#" -eq 0 ]; then
    echo "Error: No project name provided."
    echo "Usage: $0 [project_name]"
    exit 1
fi

# Nuke ignored files
git clean -fdx

# Clear the template git stuff
rm -rf .git

# Reset README.md
echo "# $1\n" > README.md

# Set the project name
sed "s/set(PROJECT_NAME pi_pico_c_template)/set(PROJECT_NAME $1)/g" CMakeLists.txt > CMakeLists.tmp
mv CMakeLists.tmp CMakeLists.txt

# Remove this script and the LICENCE.md file
rm -f prepare.sh LICENCE.md

# Recreate git repo
git init
git add .
git commit -am "Initial"