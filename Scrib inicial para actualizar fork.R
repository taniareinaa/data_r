git remote add upstream https://github.com/taller-R/taller_r-202102.git
git fetch upstream #traer los cambios
git checkout master
git rebase upstream/master
git push -f origin master