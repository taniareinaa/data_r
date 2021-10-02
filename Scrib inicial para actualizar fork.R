git remote add upstream https://github.com/taller-R/taller_r-202102.git #referencia al repositorio remoto original
git fetch upstream #traer los cambios, traernos todas las ramas de dicho repositorio remoto con
git checkout master #Irnos a la rama que queremos actualizar, por ejemplo master
git rebase upstream/master #Reescribir nuestra rama master con los commits nuevos de la rama master del repositorio original
git push -f origin master #Finalmente si queremos actualizar nuestro fork remoto, lo haremos ejecutando 