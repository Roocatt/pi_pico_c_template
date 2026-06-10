# Pi Pico C Project Template

I got tired of creating copy-pasting boilerplate CMake stuff to
set up a Pi Pico C project. So, here is a simple ready to go
template to copy from. Just run `./prepare.sh` with the project
name as an arg and send it.

```sh
# Usage:

# If you don't already have it, clone the repo.
git clone git@github.com:Roocatt/pi_pico_c_template.git

# Use wherever you put the template and wherever you want the
# project.
cp -R /template/dir/pi_pico_c_template /project/dir/my_new_project

cd /project/dir/my_new_project

chmod +x ./prepare.sh

./prepare.sh my_new_project
```

# Licence

This software is available under the ISC licence.