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
Require Un_Francais_S.
Require Un_Territoire_francais_S.
Module Un_Citoyen_S.
  Definition a_une_existence_decente (abst_T : Set)
    (abst_a_acces_a_un_logement_decent : abst_T -> basics.bool__t)
    (abst_a_acces_a_une_education_de_qualite : abst_T -> basics.bool__t)
    (abst_a_une_alimentation_saine : abst_T -> basics.bool__t)
    (abst_a_une_alimentation_suffisante : abst_T -> basics.bool__t)
    (abst_est_habille_decemment : abst_T -> basics.bool__t)
    (abst_est_habille_suffisamment : abst_T -> basics.bool__t)
    (abst_est_maintenu_en_bonne_sante : abst_T -> basics.bool__t)
    (cit : abst_T) : coq_builtins.prop__t :=
    Is_true ((abst_a_acces_a_un_logement_decent cit)) ->
      Is_true ((abst_a_une_alimentation_suffisante cit)) ->
        Is_true ((abst_a_une_alimentation_saine cit)) ->
          Is_true ((abst_est_habille_suffisamment cit)) ->
            Is_true ((abst_est_habille_decemment cit)) ->
              Is_true ((abst_est_maintenu_en_bonne_sante cit)) ->
                Is_true ((abst_a_acces_a_une_education_de_qualite cit)).
  
End Un_Citoyen_S.

