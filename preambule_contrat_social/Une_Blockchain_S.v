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
Require Finite_Anti_set_S.
Require Un_Bloc_S.
Require Un_Bloc_genesis_S.
Require Un_Bloc_terminal_S.
Require Un_Contrat_intelligent_S.
Require Une_Phrase_d_un_paragraphe_S.
Module Une_Blockchain_S.
  Definition l_ordinal_du_bloc_terminal (abst_T : Set)
    (abst_cardinal : abst_T -> basics.int__t) (bch : abst_T) :
    basics.int__t := (abst_cardinal bch).
  
End Une_Blockchain_S.

