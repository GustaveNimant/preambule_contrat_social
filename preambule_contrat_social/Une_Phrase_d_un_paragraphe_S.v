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
Module Une_Phrase_d_un_paragraphe_S.
  Definition est_une_assertion (abst_T : Set)
    (abst_est_une_doleance : abst_T -> basics.bool__t)
    (abst_est_une_formule : abst_T -> basics.bool__t)
    (abst_ne_contient_pas_de_conjonction : abst_T -> basics.bool__t)
    (php : abst_T) : coq_builtins.prop__t :=
    (~Is_true (((abst_est_une_doleance php)))) /\
      Is_true (((abst_est_une_formule php))) /\
        Is_true (((abst_ne_contient_pas_de_conjonction php))).
  
End Une_Phrase_d_un_paragraphe_S.

