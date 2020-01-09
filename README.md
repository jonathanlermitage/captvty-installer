# Captvty Installer

Un installeur pour [**Captvty**](http://captvty.fr) : un logiciel permettant de télécharger les émissions proposées en _replay_ sur les chaînes de télévision.  
Ce projet a pour but d'empaqueter facilement Captvty dans un installeur Windows, et donc de simplifier son installation par rapport à la version ZIP.  
L'installation se fait par défaut dans un dossier utilisateur (`%LOCALAPPDATA%\Captvty`, ce qui se traduit par quelque chose comme `C:\Users\vous\AppData\Local\Captvty`).

## Utilisation

Pour des raisons de license, je ne suis pas autorisé à vous proposer un installeur prêt à l'emploi contenant Captvty (son auteur interdit de redistribuer son logiciel).

Vous pouvez néanmoins fabriquer un installeur facilement, en suivant ces étapes :

* téléchargez et installez NSIS 3 (vérifié avec la version 3.05). [Vous le trouverez ici](https://nsis.sourceforge.io/Download)
* [téléchargez Captvty](http://captvty.fr) (archive ZIP)
* décompressez Captvty (par exemple avec [7-Zip](https://www.7-zip.org/)), de préférence dans un dossier :
* copiez `Captvty.nsi` dans le dossier où vous avez décompressé Captvty
* clic-droit sur `Captvty.nsi` et choisissez `Compile NSIS Script`
* voilà ! Vous avez maintenant un installeur `Captvty Setup.exe`

## Intérêt

Cet installeur a été pensé pour que vous puissiez générer et redistribuer cet installeur à des connaissances qui ne sont pas à l'aise avec l'informatique :
* un double-clic et c'est installé
* un raccourci est ajouté dans le "Menu Démarrer"
* vous pouvez désinstaller Captvty via "Ajout / Suppression de programmes"
* pour mettre à jour Captvty, créez un installeur à jour et, une fois lancé, écrasez simplement l'ancienne installation (vous ne perdrez pas vos préférences ni vos vidéos déjà téléchargées)
