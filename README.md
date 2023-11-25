# XML/EAD vers HTML et PDF via XSL + Python

Petit script qui permet de convertir un instrument de recherche écrit en XML/EAD en HTML et en PDF. La conversion du DOM EAD vers HTML se fait en XSL et la compilation des fichiers via Python.

## Aperçu

Pour voir un aperçu de la conversion HTML, allez dans xml-ead_dtd > exports > instrument_de_recherche.html

Pour voir un aperçu de la conversion PDF, allez dans xml-ead_dtd > exports > instrument_de_recherche.pdf

## Utilisation

Une fois l'instrument de recherche rédigé et validé, il faut lancer ce placer dans le dossier et taper dans le terminal :

```
python xml_to_html.py
```

Cela va générer un fichier HTML et un fichier PDF dans le dossier *exports*. 

Les librairies python *lxml* et *pyhtml2pdf* sont nécessaires.

## Pistes d'amélioration

Le script sommaire en Python ne sert ici qu'à générer les fichiers. Et le XSL est "rigide". Pour avoir un XSL capable de transformer tous les fichiers XML/EAD possibles, on pourrait créer, via Python, un graphe enraciné abstrait à partir du DOM du fichier XML; et à partir de ce modèle, sonder de façon descendante les différents niveaux de l'arborescence, les différents noeuds, éléments et attributs rencontrés pour déterminer automatiquement les boucles XSL nécessaires. Ainsi, on pourra tailler, sur mesure, un schéma de transformation XSL d'un fichier XML/EAD.
