(* Coq >= 8.3pl2: disable automatic introduction of hypotheses. *)
Global Unset Automatic Introduction.
(* Coq >= 8.5: allow sum constructors without explicit types in patterns. *)
Global Set Asymmetric Patterns.
Require Import zenon.
Require Import zenon_induct.
Require Import zenon_focal.
Require Export Bool.
Require Export ZArith.
Open Scope Z_scope.
Require Export Reals.
Require Export Ascii.
Require Export String.
Require Export List.
Require Import Wellfounded.
Require Export Recdef.
Require Export coq_builtins.
Require Import Relations.
Require Import Zwf.

(* Below: to prevent Function to apply heuristics that would
the expected aim in recursive functions termination proofs. *)

Set Function_raw_tcc.

Require basics.
Require sets.
Require Finite_Set_S.
Require Un_Article_d_un_titre_S.
Require Un_Paragraphe_d_un_article_S.
Require Un_Titre_d_un_texte_legislatif_S.
Require Une_Phrase_d_un_paragraphe_S.
Module Un_Texte_legislatif_S.
  Definition est_conforme_a_l_interet_general (abst_T : Set) (tle : abst_T) :
    basics.bool__t := true.
  
End Un_Texte_legislatif_S.

