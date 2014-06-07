---
layout: static
title: Harpes 2012.
description: Les harpes lasers réalisées en 2012
---
#Qui :
Cassou, Jerem (Conception et réalisation) et Fabien (bonne humeur).

#L'idée :

Un soir, lors d'une discussion imbibée de ... boisson au cola, on a décidé de fabriquer des harpes laser.

Pourquoi ? 

Parce-que C'EST COOL (et aussi que la soirée 2013 de l'association [MiNET](http://www.minet.net) se préparait et que l'on pensait que ça ferait une animation sympa).

Du coup 14 minutes et 42 secondes plus tard nous avions commandés une vingtaine de petits lasers rouges sur eBay et nous nous lancions dans la réalisation de nos instruments respectifs

#Le Résultat 6 mois plus tard :
<iframe width="560" height="315" src="//www.youtube.com/embed/JvBaVscbybU" frameborder="0" allowfullscreen="allowfullscreen">Youtube</iframe>
Avec du Tetris au milieu et du Daft Punk sur la fin !


#Cahier des charges :

 * Au minimum un dizaine de faisceaux laser par instruments.
 * Pas de laser pointé vers le public (ils ont beau être peu puissant, cela reste dangereux).
 * 

Pour des raisons de gouts personnels et de contraintes temporelles nous avons tous les deux conçus des harpes différentes. Aussi bien au niveau visuel que de l'électronique interne.

#La harpe de Cassou : photorésistances a gogo !

##Électronique

Il y a 10 lasers en parallèle, un par note.

En haut du cadre, 10 photorésistances son placées à intervales réguliers.

Un shield conçus par mes soins sur lequel sont placés deux paires de HC595 (shift register) et ULN2803A (8 montages darlington en parallèle).
Ces puces permettent d'augmenter le nombre de sorties de mon arduino (shift register) et de mettre à niveau le signal pour allumer ou éteindre les lasers.

Une carte arduino pour controller les laser et détecter la coupure des faisceaux laser.

La carte communique avec une liaison série over USB avec le PC.

##Mécanique

Le cadre est fabriqué en médium (aussi appelé MDF) de 6mm. Deux anneaux découpés à la défonceuse sont fixés entre eux avec des tasseaux de récupération.

Le pied est lui aussi fabriqué dans des tasseaux de récupération.

##Informatique

Les signaux en provenance des harpes sont convertis en signaux midi par une version (très) modifiée de tty-midi.
[Les sources sont disponibles ici.](https://github.com/cassou/harp/tree/master/pc/ttymidi-ext)

Ensuite il est nécéssaire de rediriger les signaux midi vers différents synthétiseurs virtuels ou samplers. Pour cela j'utilise [Qjackctl](http://qjackctl.sourceforge.net/). Ce logiciel permet de tirer des "cables virtuels" entre les entrées midi (ici la harpe) et les instruments.

Dernière étape : générer du son. Selon les morceaux j'ai utilisé soit le synthétiseur virtuel [Qsynth](http://qsynth.sourceforge.net/qsynth-index.html) soit le sampler [Specimen](http://www.linuxmao.org/Specimen).

Qsynth permet de simuler toute sorte d'instruments tandis que Specimen permet d'associer la lecture d'un fichier wav à une note midi. C'est Specimen qui nous a permis de nous éclater sur Harder, Better, Faster, Stronger des Daft Punk (voir à la fin de la vidéo en haut de page).

Bonus : Pour Daft Punk J'ai utilisé [ces samples](http://www.youtube.com/watch?v=hbV5Uv_L8xM&feature=c4-overview&list=UUAGa4B1gsXrZCZvLc3uQDqg) par [heroofhonor](http://www.youtube.com/user/heroofhonor?feature=watch). Mon fichier de coniguration pour Specimen est [ici](dp3) (Il faudra sans doute modifier les chemins des fichiers avec un éditeur de texte).