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
Require Finite_Set_S.
Require Un_Creneau_horaire_S.
Require Un_Noeud_d_un_reseau_S.
Require Un_Reseau_S.
Require Un_Sous_reseau_S.
Require Un_Theme_politique_S.
Require Une_Institution_politique_S.
Require Une_Note_S.
Require Une_Zone_geographique_S.
Module Un_Noeud_citoyen_S.
  
End Un_Noeud_citoyen_S.

