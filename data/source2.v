(** * Ceci est un titre de niveau 1

Les lignes qui suivent sont une liste
- Un premier élément
- Un second élément :
    - Une sous liste d'un seul élément
- Le dernier élément de cette liste

La ligne suivante produit un séparateur horizontal :
----

Nous pouvons également mettre une emphase sur certains _mots_.

Ainsi qu'insérer des règles de formattages spécifiques au
fichier de sortie :
% en \latex % $ en notation mathématique $ # en html #

Nous pouvons également introduire des portions de code dans la
documentation :
<<
  Definition maVariable : Set.
>>

La portion de code qui suit sera cachée dans le fichier de
sortie *)
(* begin hide *)

Definition maVariable2 : Set.

(* end hide *)

(** Enfin, nous pouvons ajouter des règles pour transformer
certains caractères dans le fichier de sortie grâce au mot clef
printing : *)

(** printing -> %\ensuremath{\rightarrow}% *)
