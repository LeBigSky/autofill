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