echo \*********************************************************** 
echo  "                DEPLOY PROJECT"
echo \***********************************************************
echo
echo Ingresa a la carpeta donde se encuentra el proyecto web, e ingresa el comando pwd, copea el resultado de el comando
read -p ' Pegalo aquí: ' DIR_PROJECT_WEB
read -p ' Ingresa el nombre de la carpeta donde se aloja el proyecto de frontend : ' NAME_PROJECT_WEB
rsync -av --progress $DIR_PROJECT_WEB $PWD/src --exclude node_modules
mvn clean install -Pprod -Dspring.profiles.active=prod -Dname.pix.web=$NAME_PROJECT_WEB
rm -rf $PWD/src/$NAME_PROJECT_WEB

