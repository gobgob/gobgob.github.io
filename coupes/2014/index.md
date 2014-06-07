---
layout: static
title: Coupe 2014, la pr&eacute;histoire.
description: Coupe 2014, la pr&eacute;histoire.
---

# Règlement

![](prehistobot.png)


Cette année, les robots remontent le temps à la découverte de la Préhistoire ! Dans cet univers hostile, ils vont devoir user de stratégie et de courage pour mener à bien les missions qui les attendent…

Les missions :


- La fresque : les robots doivent marquer l’Histoire de leur empreinte.
- La conquête du feu : les robots doivent s’approprier le plus de feux.
- La cueillette : les robots doivent cueillir le plus de fruitmouths possibles.
- Les mammouths : les robots doivent envoyer le plus de lances possibles sur les mammouths.
- Capture des mammouths : les robots peuvent capturer un mammouth à la fin du match.


![Table de jeux](map.png)

Le règlement complet est disponible ici : [Règlement officiel Eurobot 2013](Rules2014VersionfinaleEurobot.pdf)


# Cro-Minion

![crominion animé](crominion-animation.gif)

Parfait croisement entre un Minion et un homme de cromagnon, se robot est un tueur ! Munie d'un canon optique mortel, les mammouths ne lui résistent pas. Il suis sa trajectoire à la ligne, s'arrête poliment devant ses adversaires et agite les bras pour les repousser. 

Niveau équipement, notre cro-minion est armé d'une [Teensy 3.1](http://www.pjrc.com/store/teensy31.html "Teensy 3.1"): la puissance d'un ARM 32bits avec la facilité de programmation d'un arduino.

Pour garder la ligne, de simples capteurs optiques placés sous son pagne en peau de bêtes (aucun animal non synthétique n'a été bléssé). Ses roues et moteurs lui ont été gentillement prêté par un aspirateur [neato XV-11](http://www.neatorobotics.com/series/xv/) et il a arraché sa coque à un [pulvérisateur](http://www.leroymerlin.fr/v3/p/produits/pulverisateur-a-pression-prealable-e42621) de passage !

![pulverisateur](pulverisateur.jpg)


##Conception

Les 1ères ébauches de Cro-Minion a l'automne 2013 :
![crominion01](crominion.png)
![crominion01](schema_avec_explication_et_peau.jpg)

Petite vidéo de la bestiole en action: [http://www.youtube.com/watch?v=HT-f-Wlzdz4](http://www.youtube.com/watch?v=HT-f-Wlzdz4)

Un second robot avec une trompe était prévu envisagé :
![Trompe](trompe_2.jpg)


##Les dessous de Cro-Minion
![crominion](crominion-open-door.gif)

###L'électronique

Nous sommes partis sur un modèle similaire à l'année précédente. Une Raspberry Pi s'occupe de la stratégie et du code haut niveau. Toute la stratégie est codée en python 3 et tourne sur Raspbian.

Les traitement temps réel (asservissement principalement) sont assurés par une carte [Teensy 3.1](http://www.pjrc.com/store/teensy31.html "Teensy 3.1"). Auparavant sur Arduino/AVR, nous avons pu porter notre code en moins de 24h sur cette carte tout en gagnant fortement en temps de calcul (96MHz, 32bits et...FPU !!!).

Les ponts en H sont ceux qui étaient utilisés dans l'aspirateur d'où sont issus nos moteurs, des petits chips [A3950](http://www.allegromicro.com/~/Media/Files/Datasheets/A3950-Datasheet.ashx). Moins encombrants que les LMD18200 utilisés l'an dernier, mais uniquement adapté pour des moteurs à faible courant (pour les robot pépères !).

![carte électroniques](crominion-elec.jpg)

###Le canon a balles

![canon](crominion-canon.gif)
![canon](crominion-canon.jpg)
![canon](crominion-canon02.jpg)
![canon](crominion-ratatouilleur.jpg)
![hackodrome](crominion-hackodrome.jpg)
![oeil de bois](crominion-oeuil-bois.jpg)


###Le lance filet

![lance filet](crominion-lance-fillet.jpg)

###Les ultrasons

Un classique SRF05 dans son nonos.

![ultrasons](crominion-ultrason.jpg)
![ultrasons nonos](crominion-ultrason-os.jpg)

###Les bras
![servos bras](crominio-servo-bras.jpg)
![bras](crominion-bras.jpg)

###Les dents
![dents](crominion-dents.jpg)
