#! /bin/bash
#########################################################
#                   AUTOFILL-INDEX                      #       
#                                                       #
#       Description:                                    #
#       --> Remplissage auto de l'index htlm            #
#                                                       #
#       Auteur: Gary "El-Padre"                         #
#                                                       #
#       Date: MARS 2022 - Version: Alpha v1             #
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
if [ $balises == "y"] || [ $balises == "Y"];then
#ci dessous l'ajout du contenu html
echo "<!DOCTYPE html>
<html lang='fr'>
<head>
</head>
<body> 
</body>
</html>" >> $nom.html
echo "La structure de base html a correctement été ajoutée!"
elif [balises == "n"] || [ $balises == "N"];then
echo ""$nom.html" ne contient aucune structure"
fi
#Insertion la balise head
echo "Voulez vous que j'insère la balise <head> (charset, vieuwport, x-ua...)?: y/n?"
read head
if [ $head == "y" ] || [ $head == "Y" ];then
sed -i "4i\ <meta charset='UTF-8'>" $nom.html
sed -i "5i\ <meta name='viewport' content='width=device-width, initial-scale=1.0'>" $nom.html
sed -i "6i\ <meta http-equiv='X-UA-Compatible' content='IE=edge'>" $nom.html
echo "Le <head> a correctement été configurée!"
elif [ $continuer == "n" ];then
echo "ATTENTION: Le <head> n'as pas été configurés!"
exit
fi
#Insertion de Bootstrap
echo "Voulez-vous que j'ajoute Bootstrap?: y/n?"
read Boot
if [ $boot == "y" ] || [ $boot == "Y"];then
sed -i "7i\ <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3' crossorigin='anonymous'>" $nom.html
sed -i "10i\ <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js' integrity='sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p' crossorigin='anonymous'></script>" $nom.html
echo "Bootstrap (ver: 5.1.3) a correctement été configuré!"
elif [ $boot == "n"] || [ $boot == "N"];then
echo "Bootstrap n'as pas été ajouté"
exit
fi
#Insertion de FontAwesome
echo "voulez-vous que j'ajoute FontAwesome?: y/n?"
read font
if [ $font == "y" ] || [ $font == "Y"];then
sed -i "8i\ <script src='https://kit.fontawesome.com/41a38595de.js' crossorigin='anonymous'></script>" $nom.html
echo "FontAwesome ver.5 à été ajouté!"
elif [ $font == "n"] || [ $font == "N"];then
echo "FontAwesome n'as pas été ajouté!"
exit
fi
#Insertion structures avancées
echo "Voulez-vous que j'ajoute des balises avancées (header, nav, footer)?: y/n?"
read adv
if [ $adv == "y" ] || [ $adv == "Y"];then
sed -i "11i\ <header> <nav> YOUR NAV HERE </nav> </header>" $nom.html
sed -i "13i\ <footer> YOUR FOOTER HERE </footer>" $nom.html
echo "les balises avancées ont été ajoutées avec succès!"
elif [ $adv == "n"] || [ $adv == "N"];then
echo "Aucunes balises avancées n'as été ajoutée!"
fi
#Localisation du fichier
echo "Voulez-vous connaître l'emplacement de votre fichier?"
read locate
if [ $locate == "y" ];then
echo "votre fichier "$nom.html" se trouve à l'emplacement suivant:"
echo `pwd`/$nom.html
fi
#fin de l'execution
echo "
 ________________________________________________________________
|                   MERCI D'AVOIR CHOISI :                       |
|                 -->  AUTOFILL-INDEX                            |
|               Votre fichier est terminé !                      |
|________________________________________________________________|"