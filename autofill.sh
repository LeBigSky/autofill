#! /bin/bash
#########################################################
#                   AUTOFILL-INDEX                      #       
#                                                       #
# Description: Remplissage auto de l'index htlm         #
#                                                       #
# Auteur: Gary "El-Padre"                               #
#                                                       #
# Date: MARS 2022 - Version: Alpha v1                   #
#                                                       #
#########################################################
echo " 
 ________________________________________________________________
|                      AUTOFILL-INDEX                            |
|            Création et remplissage de l'index                  |
|________________________________________________________________|"
echo " 
         --> Opérer les options suivantes de manière automatique:

AU MENU DE CE SCRIPT:
 ______________________________________________________________________________________________
|	                                                                                       |
|	-> création d'un fichier index.html (ou d'un autre nom)                                |
|	-> ajout des infos & metas de bases nécéssaire au fichiers html ver: utf-8 french      |
|	-> ajout des liens et des scripts de Bootstrap                                         |
|	-> ajout de fontawesome ver:5                                                          |
|	-> ajout de la structure de base: html/head/body                                       |
|	-> ajout de structures avancées: header/nav/footer                                     |
|______________________________________________________________________________________________|
"
# confirmation du démarrage du script
echo "Salution ! Bienvenu dans 'AUTOFILL-INDEX' (by Gary Axen) désirez-vous continuer? : y/n?"
read continuer
if [ $continuer == "y" ] || [ $contniuer == "Y" ] ;then
echo "Merci d'avoir choisis AUTOFILL-INDEX"
elif [ $continuer == "n" ];then
exit
fi
#création du fichier html
echo "création de votre fichier html, quel est le nom?"
read nom
touch $nom.html
echo "votre fichier "$nom.html" a bien été crée!"
#ajout des balises principales
echo "voulez-vous que j'ajoute la structure de base html à votre fichier?: y/n?"
read balises
if [ $balises == "y"];then
#ci dessous l'ajout du contenu html
echo "<!DOCTYPE html>
<html lang='fr'>
<head>
</head>
<body> 
</body>
</html>" >> $nom.html
echo "La structure de base html a correctement été ajoutée!"
fi
#Insertion la balise head
echo "Voulez vous que j'insère la balise <head> (charset, vieuwport, x-ua...)?: y/n?"
read head
if [ $head == "y" ];then
sed -i "4i\ <meta charset='UTF-8'>" $nom.html
sed -i "5i\ <meta name='viewport' content='width=device-width, initial-scale=1.0'>" $nom.html
sed -i "6i\ <meta http-equiv='X-UA-Compatible' content='IE=edge'>" $nom.html
echo "Le <head> a correctement été configurée!"
elif [ $continuer == "n" ];then
echo "ATTENTION: Le <head> n'as pas été configurés!"
fi