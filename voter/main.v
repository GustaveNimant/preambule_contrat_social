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
Require pair.
Require etat_vote.
Require num_capteur.
Require value.
Require value_with_valid.
Require diag.
Require vote.
Module Coll_diag.
  Let effective_collection := diag.Imp_diag_2oo3.collection_create
    etat_vote.Coll_etat_vote.me_as_carrier
    num_capteur.Coll_capteur.me_as_carrier etat_vote.Coll_etat_vote.element
    etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
    etat_vote.Coll_etat_vote.partial_match
    etat_vote.Coll_etat_vote.perfect_match
    etat_vote.Coll_etat_vote.range_match
    etat_vote.Coll_etat_vote.all_field_different_0_1
    etat_vote.Coll_etat_vote.all_field_different_0_2
    etat_vote.Coll_etat_vote.all_field_different_0_3
    etat_vote.Coll_etat_vote.equal_reflexive
    etat_vote.Coll_etat_vote.equal_symmetric
    etat_vote.Coll_etat_vote.equal_transitive
    num_capteur.Coll_capteur.element num_capteur.Coll_capteur.equal
    num_capteur.Coll_capteur.equal_reflexive
    num_capteur.Coll_capteur.equal_symmetric
    num_capteur.Coll_capteur.equal_transitive.
  (* Carrier's structure explicitly given by "rep". *)
  Definition me_as_carrier :=
    (Datatypes.prod num_capteur.Coll_capteur.me_as_carrier
      etat_vote.Coll_etat_vote.me_as_carrier).
  Definition constr :=
    effective_collection.(diag.Imp_diag_2oo3.rf_constr _ _ _ _ _ _ _ _).
  Definition equal :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal _ _ _ _ _ _ _ _).
  Definition parse :=
    effective_collection.(diag.Imp_diag_2oo3.rf_parse _ _ _ _ _ _ _ _).
  Definition print :=
    effective_collection.(diag.Imp_diag_2oo3.rf_print _ _ _ _ _ _ _ _).
  Definition prj_a :=
    effective_collection.(diag.Imp_diag_2oo3.rf_prj_a _ _ _ _ _ _ _ _).
  Definition prj_b :=
    effective_collection.(diag.Imp_diag_2oo3.rf_prj_b _ _ _ _ _ _ _ _).
  Definition element :=
    effective_collection.(diag.Imp_diag_2oo3.rf_element _ _ _ _ _ _ _ _).
  Definition different :=
    effective_collection.(diag.Imp_diag_2oo3.rf_different _ _ _ _ _ _ _ _).
  Definition prj_a_is_first_of_pair :=
    effective_collection.(diag.Imp_diag_2oo3.rf_prj_a_is_first_of_pair _ _ _
                          _ _ _ _ _).
  Definition def_equal :=
    effective_collection.(diag.Imp_diag_2oo3.rf_def_equal _ _ _ _ _ _ _ _).
  Definition prj_b_is_snd_of_pair :=
    effective_collection.(diag.Imp_diag_2oo3.rf_prj_b_is_snd_of_pair _ _ _ _
                          _ _ _ _).
  Definition unicite_1 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_unicite_1 _ _ _ _ _ _ _ _).
  Definition unicite_2 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_unicite_2 _ _ _ _ _ _ _ _).
  Definition valid :=
    effective_collection.(diag.Imp_diag_2oo3.rf_valid _ _ _ _ _ _ _ _).
  Definition same_is_not_different :=
    effective_collection.(diag.Imp_diag_2oo3.rf_same_is_not_different _ _ _ _
                          _ _ _ _).
  Definition equal_transitive :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_transitive _ _ _ _ _ _
                          _ _).
  Definition def_equal1 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_def_equal1 _ _ _ _ _ _ _ _).
  Definition no_match_is_invalid :=
    effective_collection.(diag.Imp_diag_2oo3.rf_no_match_is_invalid _ _ _ _ _
                          _ _ _).
  Definition partial_match_is_valid :=
    effective_collection.(diag.Imp_diag_2oo3.rf_partial_match_is_valid _ _ _
                          _ _ _ _ _).
  Definition perfect_match_is_valid :=
    effective_collection.(diag.Imp_diag_2oo3.rf_perfect_match_is_valid _ _ _
                          _ _ _ _ _).
  Definition range_match_is_valid :=
    effective_collection.(diag.Imp_diag_2oo3.rf_range_match_is_valid _ _ _ _
                          _ _ _ _).
  Definition equal_reflexive :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_reflexive _ _ _ _ _ _ _
                          _).
  Definition equal_reflexive2 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_reflexive2 _ _ _ _ _ _
                          _ _).
  Definition equal_symmetric2 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_symmetric2 _ _ _ _ _ _
                          _ _).
  Definition equal_transitive2 :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_transitive2 _ _ _ _ _ _
                          _ _).
  Definition different_is_irreflexive :=
    effective_collection.(diag.Imp_diag_2oo3.rf_different_is_irreflexive _ _
                          _ _ _ _ _ _).
  Definition equal_symmetric :=
    effective_collection.(diag.Imp_diag_2oo3.rf_equal_symmetric _ _ _ _ _ _ _
                          _).
  Definition different_is_complete :=
    effective_collection.(diag.Imp_diag_2oo3.rf_different_is_complete _ _ _ _
                          _ _ _ _).
  Definition different_is_symmetric :=
    effective_collection.(diag.Imp_diag_2oo3.rf_different_is_symmetric _ _ _
                          _ _ _ _ _).
  
End Coll_diag.

Module Sp_int_imp_vote_tol.
  Record me_as_species : Type :=
    mk_record {
    rf_T : Set ;
    (* From species main#Sp_int_imp_vote_tol. *)
    rf_consistency_rule_is_reflexive :
      forall v1 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v1)) ;
    (* From species main#Sp_int_imp_vote_tol. *)
    rf_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v1)) ;
    (* From species gen_vote#Gen_voter. *)
    rf_diag : (Datatypes.prod value.Coll_int_imp_value_tol.me_as_carrier
                Coll_diag.me_as_carrier) -> Coll_diag.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_sensor : Coll_diag.me_as_carrier ->
                  num_capteur.Coll_capteur.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_state : Coll_diag.me_as_carrier ->
                 etat_vote.Coll_etat_vote.me_as_carrier ;
    (* From species gen_vote#Gen_voter. *)
    rf_value : (Datatypes.prod value.Coll_int_imp_value_tol.me_as_carrier
                 Coll_diag.me_as_carrier) ->
                 value.Coll_int_imp_value_tol.me_as_carrier ;
    (* From species vote#Imp_vote. *)
    rf_voter : value.Coll_int_imp_value_tol.me_as_carrier ->
                 value.Coll_int_imp_value_tol.me_as_carrier ->
                   value.Coll_int_imp_value_tol.me_as_carrier ->
                     (Datatypes.prod
                       value.Coll_int_imp_value_tol.me_as_carrier
                       Coll_diag.me_as_carrier) ;
    (* From species gen_vote#Gen_voter. *)
    rf_compatible : (Datatypes.prod
                      value.Coll_int_imp_value_tol.me_as_carrier
                      Coll_diag.me_as_carrier) ->
                      (Datatypes.prod
                        value.Coll_int_imp_value_tol.me_as_carrier
                        Coll_diag.me_as_carrier) -> coq_builtins.prop__t ;
    (* From species vote#Voteur. *)
    rf_t1 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((etat_vote.Coll_etat_vote.equal
                   (rf_state (rf_diag (rf_voter v1 v2 v3)))
                   etat_vote.Coll_etat_vote.no_match)) \/
          Is_true ((etat_vote.Coll_etat_vote.equal
                     (rf_state (rf_diag (rf_voter v1 v2 v3)))
                     etat_vote.Coll_etat_vote.range_match)) \/
            Is_true ((etat_vote.Coll_etat_vote.equal
                       (rf_state (rf_diag (rf_voter v1 v2 v3)))
                       etat_vote.Coll_etat_vote.partial_match)) \/
              Is_true ((etat_vote.Coll_etat_vote.equal
                         (rf_state (rf_diag (rf_voter v1 v2 v3)))
                         etat_vote.Coll_etat_vote.perfect_match)) ;
    (* From species vote#Voteur. *)
    rf_t2 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((num_capteur.Coll_capteur.equal
                   (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                   num_capteur.Coll_capteur.capt_1)) \/
          Is_true ((num_capteur.Coll_capteur.equal
                     (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                     num_capteur.Coll_capteur.capt_2)) \/
            Is_true ((num_capteur.Coll_capteur.equal
                       (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                       num_capteur.Coll_capteur.capt_3)) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c1 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c2 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c3 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_no_match :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                      (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                        etat_vote.Coll_etat_vote.no_match)))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c1 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c2 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c3 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_perfect :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v3)) /\
             Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.perfect_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_voter_returns_an_input_value :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) \/
          Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) \/
            Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) \/
              (~Is_true (((Coll_diag.valid (rf_diag (rf_voter v1 v2 v3)))))) ;
    (* From species vote#Voteur. *)
    rf_voter_independant_from_order_v1_v2 :
      forall v1  v2  v3 : value.Coll_int_imp_value_tol.me_as_carrier,
        (rf_compatible (rf_voter v1 v2 v3) (rf_voter v2 v1 v3)) /\
          (rf_compatible (rf_voter v1 v2 v3) (rf_voter v3 v1 v2))
    }.
  
  
  (* From species main#Sp_int_imp_vote_tol. *)
  (* Section for proof of theorem 'consistency_rule_is_reflexive'. *)
  Section Proof_of_consistency_rule_is_reflexive.
(* File "main.fcl", line 46, character 5, line 47, character 56 *)
Theorem for_zenon_consistency_rule_is_reflexive:(forall a
:value.Coll_int_imp_value_tol.me_as_carrier,(Is_true (
value.Coll_int_imp_value_tol.consistency_rule a a))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_int_imp_value_tol.consistency_rule_reflexive)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_reflexive :
      forall v1 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v1)).
    apply for_zenon_consistency_rule_is_reflexive;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_reflexive.
  
  Theorem consistency_rule_is_reflexive :
    forall v1 : value.Coll_int_imp_value_tol.me_as_carrier,
      Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v1)).
  apply for_zenon_abstracted_consistency_rule_is_reflexive;
  auto.
  Qed.
  
  (* From species main#Sp_int_imp_vote_tol. *)
  (* Section for proof of theorem 'consistency_rule_is_symmetric'. *)
  Section Proof_of_consistency_rule_is_symmetric.
(* File "main.fcl", line 43, character 5, line 44, character 56 *)
Theorem for_zenon_consistency_rule_is_symmetric:(forall a
:value.Coll_int_imp_value_tol.me_as_carrier,(forall b
:value.Coll_int_imp_value_tol.me_as_carrier,((Is_true (
value.Coll_int_imp_value_tol.consistency_rule a b))->(Is_true (
value.Coll_int_imp_value_tol.consistency_rule b a))))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_int_imp_value_tol.consistency_rule_symmetric)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_int_imp_value_tol.me_as_carrier,
        Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v1)).
    apply for_zenon_consistency_rule_is_symmetric;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_symmetric.
  
  Theorem consistency_rule_is_symmetric :
    forall v1  v2 : value.Coll_int_imp_value_tol.me_as_carrier,
      Is_true ((value.Coll_int_imp_value_tol.consistency_rule v1 v2)) ->
        Is_true ((value.Coll_int_imp_value_tol.consistency_rule v2 v1)).
  apply for_zenon_abstracted_consistency_rule_is_symmetric;
  auto.
  Qed.
  
  (* Fully defined 'Sp_int_imp_vote_tol' species's collection generator. *)
  Definition collection_create :=
    let local_rep := basics.unit__t in
    (* From species main#Sp_int_imp_vote_tol. *)
    let local_consistency_rule_is_reflexive := consistency_rule_is_reflexive
      in
    (* From species main#Sp_int_imp_vote_tol. *)
    let local_consistency_rule_is_symmetric := consistency_rule_is_symmetric
      in
    (* From species gen_vote#Gen_voter. *)
    let local_diag := gen_vote.Gen_voter.diag
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Voteur. *)
    let local_sensor := vote.Voteur.sensor
      num_capteur.Coll_capteur.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_a in
    (* From species vote#Voteur. *)
    let local_state := vote.Voteur.state
      etat_vote.Coll_etat_vote.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_b in
    (* From species gen_vote#Gen_voter. *)
    let local_value := gen_vote.Gen_voter.value
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Imp_vote. *)
    let local_voter := vote.Imp_vote.voter
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr in
    (* From species gen_vote#Gen_voter. *)
    let local_compatible := gen_vote.Gen_voter.compatible
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.valid
      local_diag local_value in
    (* From species vote#Voteur. *)
    let local_t1 := vote.Voteur.t1 etat_vote.Coll_etat_vote.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match etat_vote.Coll_etat_vote.all_value
      local_diag local_state local_voter in
    (* From species vote#Voteur. *)
    let local_t2 := vote.Voteur.t2 num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      num_capteur.Coll_capteur.capt_1 num_capteur.Coll_capteur.capt_2
      num_capteur.Coll_capteur.capt_3 num_capteur.Coll_capteur.equal
      num_capteur.Coll_capteur.all_value local_diag local_sensor local_voter
      in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c1 := vote.Imp_vote.vote_match_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c2 := vote.Imp_vote.vote_match_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_2
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c3 := vote.Imp_vote.vote_match_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_no_match := vote.Imp_vote.vote_no_match
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c1 := vote.Imp_vote.vote_partial_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c2 := vote.Imp_vote.vote_partial_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_2
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c3 := vote.Imp_vote.vote_partial_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_perfect := vote.Imp_vote.vote_perfect
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.perfect_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value_tol.consistency_rule Coll_diag.constr
      local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_voter_returns_an_input_value :=
      vote.Imp_vote.voter_returns_an_input_value
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.valid local_diag local_value local_voter in
    (* From species vote#Voteur. *)
    let local_voter_independant_from_order_v1_v2 :=
      vote.Voteur.voter_independant_from_order_v1_v2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value_tol.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value_tol.consistency_rule
      value.Coll_int_imp_value_tol.consistency_rule_reflexive
      value.Coll_int_imp_value_tol.consistency_rule_symmetric
      Coll_diag.constr Coll_diag.prj_b Coll_diag.valid
      Coll_diag.prj_b_is_snd_of_pair Coll_diag.no_match_is_invalid
      Coll_diag.partial_match_is_valid Coll_diag.perfect_match_is_valid
      Coll_diag.range_match_is_valid local_consistency_rule_is_symmetric
      local_diag local_value local_voter local_vote_match_c1
      local_vote_match_c2 local_vote_match_c3 local_vote_no_match
      local_vote_partial_c1 local_vote_partial_c2 local_vote_partial_c3
      local_vote_perfect in
    mk_record local_rep local_consistency_rule_is_reflexive
    local_consistency_rule_is_symmetric local_diag local_sensor local_state
    local_value local_voter local_compatible local_t1 local_t2
    local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
    local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
    local_vote_partial_c3 local_vote_perfect
    local_voter_returns_an_input_value
    local_voter_independant_from_order_v1_v2.
  
End Sp_int_imp_vote_tol.

Module Coll_int_imp_vote_tol.
  Let effective_collection := Sp_int_imp_vote_tol.collection_create.
  (* Carrier's structure explicitly given by "rep". *)
  Definition me_as_carrier := basics.unit__t.
  Definition consistency_rule_is_reflexive :=
    effective_collection.(Sp_int_imp_vote_tol.rf_consistency_rule_is_reflexive).
  Definition consistency_rule_is_symmetric :=
    effective_collection.(Sp_int_imp_vote_tol.rf_consistency_rule_is_symmetric).
  Definition diag := effective_collection.(Sp_int_imp_vote_tol.rf_diag).
  Definition sensor := effective_collection.(Sp_int_imp_vote_tol.rf_sensor).
  Definition state := effective_collection.(Sp_int_imp_vote_tol.rf_state).
  Definition value := effective_collection.(Sp_int_imp_vote_tol.rf_value).
  Definition voter := effective_collection.(Sp_int_imp_vote_tol.rf_voter).
  Definition compatible :=
    effective_collection.(Sp_int_imp_vote_tol.rf_compatible).
  Definition t1 := effective_collection.(Sp_int_imp_vote_tol.rf_t1).
  Definition t2 := effective_collection.(Sp_int_imp_vote_tol.rf_t2).
  Definition vote_match_c1 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_match_c1).
  Definition vote_match_c2 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_match_c2).
  Definition vote_match_c3 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_match_c3).
  Definition vote_no_match :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_no_match).
  Definition vote_partial_c1 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_partial_c1).
  Definition vote_partial_c2 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_partial_c2).
  Definition vote_partial_c3 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_partial_c3).
  Definition vote_perfect :=
    effective_collection.(Sp_int_imp_vote_tol.rf_vote_perfect).
  Definition voter_returns_an_input_value :=
    effective_collection.(Sp_int_imp_vote_tol.rf_voter_returns_an_input_value).
  Definition voter_independant_from_order_v1_v2 :=
    effective_collection.(Sp_int_imp_vote_tol.rf_voter_independant_from_order_v1_v2).
  
End Coll_int_imp_vote_tol.

Let p_int_tol (x : basics.string__t) :
  value.Coll_int_imp_value_tol.me_as_carrier :=
  (value.Coll_int_imp_value_tol.parse x).
Let voter_value_int_tol (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    value.Coll_int_imp_value_tol.me_as_carrier :=
    (Coll_int_imp_vote_tol.value
      (Coll_int_imp_vote_tol.voter (p_int_tol v1) (p_int_tol v2)
        (p_int_tol v3)))
  in
  (value.Coll_int_imp_value_tol.print s).
Let voter_etat_int_tol (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_imp_vote_tol.diag
      (Coll_int_imp_vote_tol.voter (p_int_tol v1) (p_int_tol v2)
        (p_int_tol v3)))
  in
  (etat_vote.Coll_etat_vote.print (Coll_int_imp_vote_tol.state s)).
Let voter_val_int_tol (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_imp_vote_tol.diag
      (Coll_int_imp_vote_tol.voter (p_int_tol v1) (p_int_tol v2)
        (p_int_tol v3)))
  in
  (num_capteur.Coll_capteur.print (Coll_int_imp_vote_tol.sensor s)).
Let va10 : basics.string__t :=
  "1"%string.
Let va20 : basics.string__t :=
  "3"%string.
Let va30 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "Voteur entier avec tolerance de 2
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va10)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va20)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va30)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int_tol va10 va20 va30))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int_tol va10 va20 va30))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int_tol va10 va20 va30))).

Check ((basics.print_string ")
"%string)).

Let va11 : basics.string__t :=
  "1"%string.
Let va21 : basics.string__t :=
  "1"%string.
Let va31 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va11)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va21)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va31)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int_tol va11 va21 va31))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int_tol va11 va21 va31))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int_tol va11 va21 va31))).

Check ((basics.print_string ")
"%string)).

Let va12 : basics.string__t :=
  "4"%string.
Let va22 : basics.string__t :=
  "5"%string.
Let va32 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va12)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va22)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va32)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int_tol va12 va22 va32))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int_tol va12 va22 va32))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int_tol va12 va22 va32))).

Check ((basics.print_string ")
"%string)).

Let va14 : basics.string__t :=
  "1"%string.
Let va24 : basics.string__t :=
  "4"%string.
Let va34 : basics.string__t :=
  "7"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va14)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va24)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_int_imp_value_tol.print (p_int_tol va34)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int_tol va14 va24 va34))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int_tol va14 va24 va34))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int_tol va14 va24 va34))).

Check ((basics.print_string ")
"%string)).

Module Sp_int_imp_vote.
  Record me_as_species : Type :=
    mk_record {
    rf_T : Set ;
    (* From species main#Sp_int_imp_vote. *)
    rf_consistency_rule_is_reflexive :
      forall v1 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((value.Coll_int_imp_value.consistency_rule v1 v1)) ;
    (* From species main#Sp_int_imp_vote. *)
    rf_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_int_imp_value.consistency_rule v2 v1)) ;
    (* From species gen_vote#Gen_voter. *)
    rf_diag : (Datatypes.prod value.Coll_int_imp_value.me_as_carrier
                Coll_diag.me_as_carrier) -> Coll_diag.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_sensor : Coll_diag.me_as_carrier ->
                  num_capteur.Coll_capteur.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_state : Coll_diag.me_as_carrier ->
                 etat_vote.Coll_etat_vote.me_as_carrier ;
    (* From species gen_vote#Gen_voter. *)
    rf_value : (Datatypes.prod value.Coll_int_imp_value.me_as_carrier
                 Coll_diag.me_as_carrier) ->
                 value.Coll_int_imp_value.me_as_carrier ;
    (* From species vote#Imp_vote. *)
    rf_voter : value.Coll_int_imp_value.me_as_carrier ->
                 value.Coll_int_imp_value.me_as_carrier ->
                   value.Coll_int_imp_value.me_as_carrier ->
                     (Datatypes.prod value.Coll_int_imp_value.me_as_carrier
                       Coll_diag.me_as_carrier) ;
    (* From species gen_vote#Gen_voter. *)
    rf_compatible : (Datatypes.prod value.Coll_int_imp_value.me_as_carrier
                      Coll_diag.me_as_carrier) ->
                      (Datatypes.prod value.Coll_int_imp_value.me_as_carrier
                        Coll_diag.me_as_carrier) -> coq_builtins.prop__t ;
    (* From species vote#Voteur. *)
    rf_t1 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((etat_vote.Coll_etat_vote.equal
                   (rf_state (rf_diag (rf_voter v1 v2 v3)))
                   etat_vote.Coll_etat_vote.no_match)) \/
          Is_true ((etat_vote.Coll_etat_vote.equal
                     (rf_state (rf_diag (rf_voter v1 v2 v3)))
                     etat_vote.Coll_etat_vote.range_match)) \/
            Is_true ((etat_vote.Coll_etat_vote.equal
                       (rf_state (rf_diag (rf_voter v1 v2 v3)))
                       etat_vote.Coll_etat_vote.partial_match)) \/
              Is_true ((etat_vote.Coll_etat_vote.equal
                         (rf_state (rf_diag (rf_voter v1 v2 v3)))
                         etat_vote.Coll_etat_vote.perfect_match)) ;
    (* From species vote#Voteur. *)
    rf_t2 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((num_capteur.Coll_capteur.equal
                   (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                   num_capteur.Coll_capteur.capt_1)) \/
          Is_true ((num_capteur.Coll_capteur.equal
                     (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                     num_capteur.Coll_capteur.capt_2)) \/
            Is_true ((num_capteur.Coll_capteur.equal
                       (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                       num_capteur.Coll_capteur.capt_3)) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c1 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c2 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c3 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_no_match :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                      (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                        etat_vote.Coll_etat_vote.no_match)))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c1 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c2 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c3 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_perfect :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_int_imp_value.consistency_rule v2 v3)) /\
             Is_true ((value.Coll_int_imp_value.consistency_rule v1 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.perfect_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_voter_returns_an_input_value :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) \/
          Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) \/
            Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) \/
              (~Is_true (((Coll_diag.valid (rf_diag (rf_voter v1 v2 v3)))))) ;
    (* From species vote#Voteur. *)
    rf_voter_independant_from_order_v1_v2 :
      forall v1  v2  v3 : value.Coll_int_imp_value.me_as_carrier,
        (rf_compatible (rf_voter v1 v2 v3) (rf_voter v2 v1 v3)) /\
          (rf_compatible (rf_voter v1 v2 v3) (rf_voter v3 v1 v2))
    }.
  
  
  (* From species main#Sp_int_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_reflexive'. *)
  Section Proof_of_consistency_rule_is_reflexive.
(* File "main.fcl", line 174, character 5, line 175, character 52 *)
Theorem for_zenon_consistency_rule_is_reflexive:(forall a
:value.Coll_int_imp_value.me_as_carrier,(Is_true (
value.Coll_int_imp_value.consistency_rule a a))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_int_imp_value.consistency_rule_reflexive)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_reflexive :
      forall v1 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((value.Coll_int_imp_value.consistency_rule v1 v1)).
    apply for_zenon_consistency_rule_is_reflexive;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_reflexive.
  
  Theorem consistency_rule_is_reflexive :
    forall v1 : value.Coll_int_imp_value.me_as_carrier,
      Is_true ((value.Coll_int_imp_value.consistency_rule v1 v1)).
  apply for_zenon_abstracted_consistency_rule_is_reflexive;
  auto.
  Qed.
  
  (* From species main#Sp_int_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_symmetric'. *)
  Section Proof_of_consistency_rule_is_symmetric.
(* File "main.fcl", line 171, character 5, line 172, character 52 *)
Theorem for_zenon_consistency_rule_is_symmetric:(forall a
:value.Coll_int_imp_value.me_as_carrier,(forall b
:value.Coll_int_imp_value.me_as_carrier,((Is_true (
value.Coll_int_imp_value.consistency_rule a b))->(Is_true (
value.Coll_int_imp_value.consistency_rule b a))))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_int_imp_value.consistency_rule_symmetric)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_int_imp_value.me_as_carrier,
        Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_int_imp_value.consistency_rule v2 v1)).
    apply for_zenon_consistency_rule_is_symmetric;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_symmetric.
  
  Theorem consistency_rule_is_symmetric :
    forall v1  v2 : value.Coll_int_imp_value.me_as_carrier,
      Is_true ((value.Coll_int_imp_value.consistency_rule v1 v2)) ->
        Is_true ((value.Coll_int_imp_value.consistency_rule v2 v1)).
  apply for_zenon_abstracted_consistency_rule_is_symmetric;
  auto.
  Qed.
  
  (* Fully defined 'Sp_int_imp_vote' species's collection generator. *)
  Definition collection_create :=
    let local_rep := basics.unit__t in
    (* From species main#Sp_int_imp_vote. *)
    let local_consistency_rule_is_reflexive := consistency_rule_is_reflexive
      in
    (* From species main#Sp_int_imp_vote. *)
    let local_consistency_rule_is_symmetric := consistency_rule_is_symmetric
      in
    (* From species gen_vote#Gen_voter. *)
    let local_diag := gen_vote.Gen_voter.diag
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Voteur. *)
    let local_sensor := vote.Voteur.sensor
      num_capteur.Coll_capteur.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_a in
    (* From species vote#Voteur. *)
    let local_state := vote.Voteur.state
      etat_vote.Coll_etat_vote.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_b in
    (* From species gen_vote#Gen_voter. *)
    let local_value := gen_vote.Gen_voter.value
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Imp_vote. *)
    let local_voter := vote.Imp_vote.voter
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr in
    (* From species gen_vote#Gen_voter. *)
    let local_compatible := gen_vote.Gen_voter.compatible
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      value.Coll_int_imp_value.consistency_rule Coll_diag.valid local_diag
      local_value in
    (* From species vote#Voteur. *)
    let local_t1 := vote.Voteur.t1 etat_vote.Coll_etat_vote.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match etat_vote.Coll_etat_vote.all_value
      local_diag local_state local_voter in
    (* From species vote#Voteur. *)
    let local_t2 := vote.Voteur.t2 num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      num_capteur.Coll_capteur.capt_1 num_capteur.Coll_capteur.capt_2
      num_capteur.Coll_capteur.capt_3 num_capteur.Coll_capteur.equal
      num_capteur.Coll_capteur.all_value local_diag local_sensor local_voter
      in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c1 := vote.Imp_vote.vote_match_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c2 := vote.Imp_vote.vote_match_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_2
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c3 := vote.Imp_vote.vote_match_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_no_match := vote.Imp_vote.vote_no_match
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c1 := vote.Imp_vote.vote_partial_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c2 := vote.Imp_vote.vote_partial_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_2
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c3 := vote.Imp_vote.vote_partial_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_perfect := vote.Imp_vote.vote_perfect
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.perfect_match num_capteur.Coll_capteur.capt_1
      value.Coll_int_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_voter_returns_an_input_value :=
      vote.Imp_vote.voter_returns_an_input_value
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.valid local_diag local_value local_voter in
    (* From species vote#Voteur. *)
    let local_voter_independant_from_order_v1_v2 :=
      vote.Voteur.voter_independant_from_order_v1_v2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_int_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_int_imp_value.consistency_rule
      value.Coll_int_imp_value.consistency_rule_reflexive
      value.Coll_int_imp_value.consistency_rule_symmetric Coll_diag.constr
      Coll_diag.prj_b Coll_diag.valid Coll_diag.prj_b_is_snd_of_pair
      Coll_diag.no_match_is_invalid Coll_diag.partial_match_is_valid
      Coll_diag.perfect_match_is_valid Coll_diag.range_match_is_valid
      local_consistency_rule_is_symmetric local_diag local_value local_voter
      local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
      local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
      local_vote_partial_c3 local_vote_perfect in
    mk_record local_rep local_consistency_rule_is_reflexive
    local_consistency_rule_is_symmetric local_diag local_sensor local_state
    local_value local_voter local_compatible local_t1 local_t2
    local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
    local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
    local_vote_partial_c3 local_vote_perfect
    local_voter_returns_an_input_value
    local_voter_independant_from_order_v1_v2.
  
End Sp_int_imp_vote.

Module Coll_int_imp_vote.
  Let effective_collection := Sp_int_imp_vote.collection_create.
  (* Carrier's structure explicitly given by "rep". *)
  Definition me_as_carrier := basics.unit__t.
  Definition consistency_rule_is_reflexive :=
    effective_collection.(Sp_int_imp_vote.rf_consistency_rule_is_reflexive).
  Definition consistency_rule_is_symmetric :=
    effective_collection.(Sp_int_imp_vote.rf_consistency_rule_is_symmetric).
  Definition diag := effective_collection.(Sp_int_imp_vote.rf_diag).
  Definition sensor := effective_collection.(Sp_int_imp_vote.rf_sensor).
  Definition state := effective_collection.(Sp_int_imp_vote.rf_state).
  Definition value := effective_collection.(Sp_int_imp_vote.rf_value).
  Definition voter := effective_collection.(Sp_int_imp_vote.rf_voter).
  Definition compatible :=
    effective_collection.(Sp_int_imp_vote.rf_compatible).
  Definition t1 := effective_collection.(Sp_int_imp_vote.rf_t1).
  Definition t2 := effective_collection.(Sp_int_imp_vote.rf_t2).
  Definition vote_match_c1 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_match_c1).
  Definition vote_match_c2 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_match_c2).
  Definition vote_match_c3 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_match_c3).
  Definition vote_no_match :=
    effective_collection.(Sp_int_imp_vote.rf_vote_no_match).
  Definition vote_partial_c1 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_partial_c1).
  Definition vote_partial_c2 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_partial_c2).
  Definition vote_partial_c3 :=
    effective_collection.(Sp_int_imp_vote.rf_vote_partial_c3).
  Definition vote_perfect :=
    effective_collection.(Sp_int_imp_vote.rf_vote_perfect).
  Definition voter_returns_an_input_value :=
    effective_collection.(Sp_int_imp_vote.rf_voter_returns_an_input_value).
  Definition voter_independant_from_order_v1_v2 :=
    effective_collection.(Sp_int_imp_vote.rf_voter_independant_from_order_v1_v2).
  
End Coll_int_imp_vote.

Let p_int (x : basics.string__t) :
  value.Coll_int_imp_value.me_as_carrier :=
  (value.Coll_int_imp_value.parse x).
Let voter_value_int (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    value.Coll_int_imp_value.me_as_carrier :=
    (Coll_int_imp_vote.value
      (Coll_int_imp_vote.voter (p_int v1) (p_int v2) (p_int v3)))
  in
  (value.Coll_int_imp_value.print s).
Let voter_etat_int (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_imp_vote.diag
      (Coll_int_imp_vote.voter (p_int v1) (p_int v2) (p_int v3)))
  in
  (etat_vote.Coll_etat_vote.print (Coll_int_imp_vote.state s)).
Let voter_val_int (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_imp_vote.diag
      (Coll_int_imp_vote.voter (p_int v1) (p_int v2) (p_int v3)))
  in
  (num_capteur.Coll_capteur.print (Coll_int_imp_vote.sensor s)).
Let vb10 : basics.string__t :=
  "1"%string.
Let vb20 : basics.string__t :=
  "3"%string.
Let vb30 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "Voteur entier sans tolerance
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb10)))).

Check ((basics.print_string ", v2 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb20)))).

Check ((basics.print_string ", v3 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb30)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int vb10 vb20 vb30))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int vb10 vb20 vb30))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int vb10 vb20 vb30))).

Check ((basics.print_string ")
"%string)).

Let vb11 : basics.string__t :=
  "5"%string.
Let vb21 : basics.string__t :=
  "5"%string.
Let vb31 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "v1 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb11)))).

Check ((basics.print_string ", v2 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb21)))).

Check ((basics.print_string ", v3 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb31)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int vb11 vb21 vb31))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int vb11 vb21 vb31))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int vb11 vb21 vb31))).

Check ((basics.print_string ")
"%string)).

Let vb12 : basics.string__t :=
  "4"%string.
Let vb22 : basics.string__t :=
  "5"%string.
Let vb32 : basics.string__t :=
  "5"%string.
Check ((basics.print_string "v1 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb12)))).

Check ((basics.print_string ", v2 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb22)))).

Check ((basics.print_string ", v3 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb32)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int vb12 vb22 vb32))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int vb12 vb22 vb32))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int vb12 vb22 vb32))).

Check ((basics.print_string ")
"%string)).

Let vb14 : basics.string__t :=
  "1"%string.
Let vb24 : basics.string__t :=
  "4"%string.
Let vb34 : basics.string__t :=
  "7"%string.
Check ((basics.print_string "v1 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb14)))).

Check ((basics.print_string ", v2 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb24)))).

Check ((basics.print_string ", v3 : "%string)).

Check ((basics.print_string (value.Coll_int_imp_value.print (p_int vb34)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_int vb14 vb24 vb34))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_int vb14 vb24 vb34))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_int vb14 vb24 vb34))).

Check ((basics.print_string ")
"%string)).

Module Sp_bool_imp_vote.
  Record me_as_species : Type :=
    mk_record {
    rf_T : Set ;
    (* From species main#Sp_bool_imp_vote. *)
    rf_consistency_rule_is_reflexive :
      forall v1 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v1)) ;
    (* From species main#Sp_bool_imp_vote. *)
    rf_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v1)) ;
    (* From species gen_vote#Gen_voter. *)
    rf_diag : (Datatypes.prod value.Coll_bool_imp_value.me_as_carrier
                Coll_diag.me_as_carrier) -> Coll_diag.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_sensor : Coll_diag.me_as_carrier ->
                  num_capteur.Coll_capteur.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_state : Coll_diag.me_as_carrier ->
                 etat_vote.Coll_etat_vote.me_as_carrier ;
    (* From species gen_vote#Gen_voter. *)
    rf_value : (Datatypes.prod value.Coll_bool_imp_value.me_as_carrier
                 Coll_diag.me_as_carrier) ->
                 value.Coll_bool_imp_value.me_as_carrier ;
    (* From species vote#Imp_vote. *)
    rf_voter : value.Coll_bool_imp_value.me_as_carrier ->
                 value.Coll_bool_imp_value.me_as_carrier ->
                   value.Coll_bool_imp_value.me_as_carrier ->
                     (Datatypes.prod value.Coll_bool_imp_value.me_as_carrier
                       Coll_diag.me_as_carrier) ;
    (* From species gen_vote#Gen_voter. *)
    rf_compatible : (Datatypes.prod value.Coll_bool_imp_value.me_as_carrier
                      Coll_diag.me_as_carrier) ->
                      (Datatypes.prod value.Coll_bool_imp_value.me_as_carrier
                        Coll_diag.me_as_carrier) -> coq_builtins.prop__t ;
    (* From species vote#Voteur. *)
    rf_t1 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((etat_vote.Coll_etat_vote.equal
                   (rf_state (rf_diag (rf_voter v1 v2 v3)))
                   etat_vote.Coll_etat_vote.no_match)) \/
          Is_true ((etat_vote.Coll_etat_vote.equal
                     (rf_state (rf_diag (rf_voter v1 v2 v3)))
                     etat_vote.Coll_etat_vote.range_match)) \/
            Is_true ((etat_vote.Coll_etat_vote.equal
                       (rf_state (rf_diag (rf_voter v1 v2 v3)))
                       etat_vote.Coll_etat_vote.partial_match)) \/
              Is_true ((etat_vote.Coll_etat_vote.equal
                         (rf_state (rf_diag (rf_voter v1 v2 v3)))
                         etat_vote.Coll_etat_vote.perfect_match)) ;
    (* From species vote#Voteur. *)
    rf_t2 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((num_capteur.Coll_capteur.equal
                   (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                   num_capteur.Coll_capteur.capt_1)) \/
          Is_true ((num_capteur.Coll_capteur.equal
                     (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                     num_capteur.Coll_capteur.capt_2)) \/
            Is_true ((num_capteur.Coll_capteur.equal
                       (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                       num_capteur.Coll_capteur.capt_3)) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c1 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c2 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c3 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_no_match :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                      (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                        etat_vote.Coll_etat_vote.no_match)))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c1 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             ~Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c2 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           ~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c3 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (~Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3)) /\
             Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_perfect :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) /\
           Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v3)) /\
             Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.perfect_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_voter_returns_an_input_value :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) \/
          Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) \/
            Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) \/
              (~Is_true (((Coll_diag.valid (rf_diag (rf_voter v1 v2 v3)))))) ;
    (* From species vote#Voteur. *)
    rf_voter_independant_from_order_v1_v2 :
      forall v1  v2  v3 : value.Coll_bool_imp_value.me_as_carrier,
        (rf_compatible (rf_voter v1 v2 v3) (rf_voter v2 v1 v3)) /\
          (rf_compatible (rf_voter v1 v2 v3) (rf_voter v3 v1 v2))
    }.
  
  
  (* From species main#Sp_bool_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_reflexive'. *)
  Section Proof_of_consistency_rule_is_reflexive.
(* File "main.fcl", line 292, character 5, line 293, character 53 *)
Theorem for_zenon_consistency_rule_is_reflexive:(forall a
:value.Coll_bool_imp_value.me_as_carrier,(Is_true (
value.Coll_bool_imp_value.consistency_rule a a))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_bool_imp_value.consistency_rule_reflexive)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_reflexive :
      forall v1 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v1)).
    apply for_zenon_consistency_rule_is_reflexive;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_reflexive.
  
  Theorem consistency_rule_is_reflexive :
    forall v1 : value.Coll_bool_imp_value.me_as_carrier,
      Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v1)).
  apply for_zenon_abstracted_consistency_rule_is_reflexive;
  auto.
  Qed.
  
  (* From species main#Sp_bool_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_symmetric'. *)
  Section Proof_of_consistency_rule_is_symmetric.
(* File "main.fcl", line 289, character 5, line 290, character 53 *)
Theorem for_zenon_consistency_rule_is_symmetric:(forall a
:value.Coll_bool_imp_value.me_as_carrier,(forall b
:value.Coll_bool_imp_value.me_as_carrier,((Is_true (
value.Coll_bool_imp_value.consistency_rule a b))->(Is_true (
value.Coll_bool_imp_value.consistency_rule b a))))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value.Coll_bool_imp_value.consistency_rule_symmetric)))).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_symmetric :
      forall v1  v2 : value.Coll_bool_imp_value.me_as_carrier,
        Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) ->
          Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v1)).
    apply for_zenon_consistency_rule_is_symmetric;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_symmetric.
  
  Theorem consistency_rule_is_symmetric :
    forall v1  v2 : value.Coll_bool_imp_value.me_as_carrier,
      Is_true ((value.Coll_bool_imp_value.consistency_rule v1 v2)) ->
        Is_true ((value.Coll_bool_imp_value.consistency_rule v2 v1)).
  apply for_zenon_abstracted_consistency_rule_is_symmetric;
  auto.
  Qed.
  
  (* Fully defined 'Sp_bool_imp_vote' species's collection generator. *)
  Definition collection_create :=
    let local_rep := basics.unit__t in
    (* From species main#Sp_bool_imp_vote. *)
    let local_consistency_rule_is_reflexive := consistency_rule_is_reflexive
      in
    (* From species main#Sp_bool_imp_vote. *)
    let local_consistency_rule_is_symmetric := consistency_rule_is_symmetric
      in
    (* From species gen_vote#Gen_voter. *)
    let local_diag := gen_vote.Gen_voter.diag
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Voteur. *)
    let local_sensor := vote.Voteur.sensor
      num_capteur.Coll_capteur.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_a in
    (* From species vote#Voteur. *)
    let local_state := vote.Voteur.state
      etat_vote.Coll_etat_vote.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_b in
    (* From species gen_vote#Gen_voter. *)
    let local_value := gen_vote.Gen_voter.value
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier in
    (* From species vote#Imp_vote. *)
    let local_voter := vote.Imp_vote.voter
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr in
    (* From species gen_vote#Gen_voter. *)
    let local_compatible := gen_vote.Gen_voter.compatible
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      value.Coll_bool_imp_value.consistency_rule Coll_diag.valid local_diag
      local_value in
    (* From species vote#Voteur. *)
    let local_t1 := vote.Voteur.t1 etat_vote.Coll_etat_vote.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match etat_vote.Coll_etat_vote.all_value
      local_diag local_state local_voter in
    (* From species vote#Voteur. *)
    let local_t2 := vote.Voteur.t2 num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      num_capteur.Coll_capteur.capt_1 num_capteur.Coll_capteur.capt_2
      num_capteur.Coll_capteur.capt_3 num_capteur.Coll_capteur.equal
      num_capteur.Coll_capteur.all_value local_diag local_sensor local_voter
      in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c1 := vote.Imp_vote.vote_match_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c2 := vote.Imp_vote.vote_match_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_2
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c3 := vote.Imp_vote.vote_match_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_3
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_no_match := vote.Imp_vote.vote_no_match
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.no_match num_capteur.Coll_capteur.capt_1
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c1 := vote.Imp_vote.vote_partial_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_1
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c2 := vote.Imp_vote.vote_partial_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_2
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c3 := vote.Imp_vote.vote_partial_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.partial_match num_capteur.Coll_capteur.capt_3
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_perfect := vote.Imp_vote.vote_perfect
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.perfect_match num_capteur.Coll_capteur.capt_1
      value.Coll_bool_imp_value.consistency_rule Coll_diag.constr local_diag
      local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_voter_returns_an_input_value :=
      vote.Imp_vote.voter_returns_an_input_value
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.valid local_diag local_value local_voter in
    (* From species vote#Voteur. *)
    let local_voter_independant_from_order_v1_v2 :=
      vote.Voteur.voter_independant_from_order_v1_v2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value.Coll_bool_imp_value.me_as_carrier Coll_diag.me_as_carrier
      etat_vote.Coll_etat_vote.equal etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value.Coll_bool_imp_value.consistency_rule
      value.Coll_bool_imp_value.consistency_rule_reflexive
      value.Coll_bool_imp_value.consistency_rule_symmetric Coll_diag.constr
      Coll_diag.prj_b Coll_diag.valid Coll_diag.prj_b_is_snd_of_pair
      Coll_diag.no_match_is_invalid Coll_diag.partial_match_is_valid
      Coll_diag.perfect_match_is_valid Coll_diag.range_match_is_valid
      local_consistency_rule_is_symmetric local_diag local_value local_voter
      local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
      local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
      local_vote_partial_c3 local_vote_perfect in
    mk_record local_rep local_consistency_rule_is_reflexive
    local_consistency_rule_is_symmetric local_diag local_sensor local_state
    local_value local_voter local_compatible local_t1 local_t2
    local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
    local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
    local_vote_partial_c3 local_vote_perfect
    local_voter_returns_an_input_value
    local_voter_independant_from_order_v1_v2.
  
End Sp_bool_imp_vote.

Module Coll_bool_imp_vote.
  Let effective_collection := Sp_bool_imp_vote.collection_create.
  (* Carrier's structure explicitly given by "rep". *)
  Definition me_as_carrier := basics.unit__t.
  Definition consistency_rule_is_reflexive :=
    effective_collection.(Sp_bool_imp_vote.rf_consistency_rule_is_reflexive).
  Definition consistency_rule_is_symmetric :=
    effective_collection.(Sp_bool_imp_vote.rf_consistency_rule_is_symmetric).
  Definition diag := effective_collection.(Sp_bool_imp_vote.rf_diag).
  Definition sensor := effective_collection.(Sp_bool_imp_vote.rf_sensor).
  Definition state := effective_collection.(Sp_bool_imp_vote.rf_state).
  Definition value := effective_collection.(Sp_bool_imp_vote.rf_value).
  Definition voter := effective_collection.(Sp_bool_imp_vote.rf_voter).
  Definition compatible :=
    effective_collection.(Sp_bool_imp_vote.rf_compatible).
  Definition t1 := effective_collection.(Sp_bool_imp_vote.rf_t1).
  Definition t2 := effective_collection.(Sp_bool_imp_vote.rf_t2).
  Definition vote_match_c1 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_match_c1).
  Definition vote_match_c2 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_match_c2).
  Definition vote_match_c3 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_match_c3).
  Definition vote_no_match :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_no_match).
  Definition vote_partial_c1 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_partial_c1).
  Definition vote_partial_c2 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_partial_c2).
  Definition vote_partial_c3 :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_partial_c3).
  Definition vote_perfect :=
    effective_collection.(Sp_bool_imp_vote.rf_vote_perfect).
  Definition voter_returns_an_input_value :=
    effective_collection.(Sp_bool_imp_vote.rf_voter_returns_an_input_value).
  Definition voter_independant_from_order_v1_v2 :=
    effective_collection.(Sp_bool_imp_vote.rf_voter_independant_from_order_v1_v2).
  
End Coll_bool_imp_vote.

Let p_bool (x : basics.string__t) :
  value.Coll_bool_imp_value.me_as_carrier :=
  (value.Coll_bool_imp_value.parse x).
Let voter_value_bool (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    value.Coll_bool_imp_value.me_as_carrier :=
    (Coll_bool_imp_vote.value
      (Coll_bool_imp_vote.voter (p_bool v1) (p_bool v2) (p_bool v3)))
  in
  (value.Coll_bool_imp_value.print s).
Let voter_etat_bool (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_bool_imp_vote.diag
      (Coll_bool_imp_vote.voter (p_bool v1) (p_bool v2) (p_bool v3)))
  in
  (etat_vote.Coll_etat_vote.print (Coll_bool_imp_vote.state s)).
Let voter_val_bool (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_bool_imp_vote.diag
      (Coll_bool_imp_vote.voter (p_bool v1) (p_bool v2) (p_bool v3)))
  in
  (num_capteur.Coll_capteur.print (Coll_bool_imp_vote.sensor s)).
Let va13 : basics.string__t :=
  "False"%string.
Let va23 : basics.string__t :=
  "Falsee"%string.
Let va33 : basics.string__t :=
  "True"%string.
Check ((basics.print_string "Voteur booleen sans tolerance
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va13)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va23)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va33)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_bool va13 va23 va33))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_bool va13 va23 va33))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_bool va13 va23 va33))).

Check ((basics.print_string ")
"%string)).

Let va15 : basics.string__t :=
  "False"%string.
Let va25 : basics.string__t :=
  "False"%string.
Let va35 : basics.string__t :=
  "False"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va15)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va25)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool va35)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_bool va15 va25 va35))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_bool va15 va25 va35))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_bool va15 va25 va35))).

Check ((basics.print_string ")
"%string)).

Let p_bool2 (x : basics.string__t) :
  value.Coll_bool_imp_value.me_as_carrier :=
  (value.Coll_bool_imp_value.parse x).
Let voter_etat_bool2 (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_bool_imp_vote.diag
      (Coll_bool_imp_vote.voter (p_bool2 v1) (p_bool2 v2) (p_bool2 v3)))
  in
  (etat_vote.Coll_etat_vote.print (Coll_bool_imp_vote.state s)).
Let voter_val_bool2 (v1 : basics.string__t) (v2 : basics.string__t)
  (v3 : basics.string__t) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_bool_imp_vote.diag
      (Coll_bool_imp_vote.voter (p_bool2 v1) (p_bool2 v2) (p_bool2 v3)))
  in
  (num_capteur.Coll_capteur.print (Coll_bool_imp_vote.sensor s)).
Let va16 : basics.string__t :=
  "False"%string.
Let va26 : basics.string__t :=
  "Falsee"%string.
Let va36 : basics.string__t :=
  "True"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va16)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va26)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va36)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_bool va16 va26 va36))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_bool va16 va26 va36))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_bool va16 va26 va36))).

Check ((basics.print_string ")
"%string)).

Let va17 : basics.string__t :=
  "False"%string.
Let va27 : basics.string__t :=
  "False"%string.
Let va37 : basics.string__t :=
  "False"%string.
Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va17)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va27)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string (value.Coll_bool_imp_value.print (p_bool2 va37)))).

Check ((basics.print_string " --> val : "%string)).

Check ((basics.print_string (voter_value_bool va17 va27 va37))).

Check ((basics.print_string " , diag : ("%string)).

Check ((basics.print_string (voter_val_bool va17 va27 va37))).

Check ((basics.print_string ", "%string)).

Check ((basics.print_string (voter_etat_bool va17 va27 va37))).

Check ((basics.print_string ")
"%string)).

Module Sp_int_value_with_value_imp_vote.
  Record me_as_species : Type :=
    mk_record {
    rf_T : Set ;
    (* From species main#Sp_int_value_with_value_imp_vote. *)
    rf_consistency_rule_is_reflexive :
      forall v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                   v1 v1)) ;
    (* From species main#Sp_int_value_with_value_imp_vote. *)
    rf_consistency_rule_is_symmetric :
      forall v1  v2 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                   v1 v2)) ->
          Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v2 v1)) ;
    (* From species gen_vote#Gen_voter. *)
    rf_diag : (Datatypes.prod
                value_with_valid.Coll_int_value_with_valid.me_as_carrier
                Coll_diag.me_as_carrier) -> Coll_diag.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_sensor : Coll_diag.me_as_carrier ->
                  num_capteur.Coll_capteur.me_as_carrier ;
    (* From species vote#Voteur. *)
    rf_state : Coll_diag.me_as_carrier ->
                 etat_vote.Coll_etat_vote.me_as_carrier ;
    (* From species gen_vote#Gen_voter. *)
    rf_value : (Datatypes.prod
                 value_with_valid.Coll_int_value_with_valid.me_as_carrier
                 Coll_diag.me_as_carrier) ->
                 value_with_valid.Coll_int_value_with_valid.me_as_carrier ;
    (* From species vote#Imp_vote. *)
    rf_voter : value_with_valid.Coll_int_value_with_valid.me_as_carrier ->
                 value_with_valid.Coll_int_value_with_valid.me_as_carrier ->
                   value_with_valid.Coll_int_value_with_valid.me_as_carrier
                     ->
                     (Datatypes.prod
                       value_with_valid.Coll_int_value_with_valid.me_as_carrier
                       Coll_diag.me_as_carrier) ;
    (* From species gen_vote#Gen_voter. *)
    rf_compatible : (Datatypes.prod
                      value_with_valid.Coll_int_value_with_valid.me_as_carrier
                      Coll_diag.me_as_carrier) ->
                      (Datatypes.prod
                        value_with_valid.Coll_int_value_with_valid.me_as_carrier
                        Coll_diag.me_as_carrier) -> coq_builtins.prop__t ;
    (* From species vote#Voteur. *)
    rf_t1 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((etat_vote.Coll_etat_vote.equal
                   (rf_state (rf_diag (rf_voter v1 v2 v3)))
                   etat_vote.Coll_etat_vote.no_match)) \/
          Is_true ((etat_vote.Coll_etat_vote.equal
                     (rf_state (rf_diag (rf_voter v1 v2 v3)))
                     etat_vote.Coll_etat_vote.range_match)) \/
            Is_true ((etat_vote.Coll_etat_vote.equal
                       (rf_state (rf_diag (rf_voter v1 v2 v3)))
                       etat_vote.Coll_etat_vote.partial_match)) \/
              Is_true ((etat_vote.Coll_etat_vote.equal
                         (rf_state (rf_diag (rf_voter v1 v2 v3)))
                         etat_vote.Coll_etat_vote.perfect_match)) ;
    (* From species vote#Voteur. *)
    rf_t2 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((num_capteur.Coll_capteur.equal
                   (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                   num_capteur.Coll_capteur.capt_1)) \/
          Is_true ((num_capteur.Coll_capteur.equal
                     (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                     num_capteur.Coll_capteur.capt_2)) \/
            Is_true ((num_capteur.Coll_capteur.equal
                       (rf_sensor (rf_diag (rf_voter v1 v2 v3)))
                       num_capteur.Coll_capteur.capt_3)) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c1 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v1 v2)) /\
           ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                       v1 v3)) /\
             Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                        v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c2 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v1 v2)) /\
           Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                      v1 v3)) /\
             ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                         v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_match_c3 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                    v1 v2)) /\
           ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                       v1 v3)) /\
             ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                         v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.range_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_no_match :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v1 v2)) /\
           ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                       v1 v3)) /\
             ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                         v2 v3))) ->
          Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                      (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                        etat_vote.Coll_etat_vote.no_match)))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c1 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                    v1 v2)) /\
           Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                      v1 v3)) /\
             ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                         v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c2 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                    v1 v2)) /\
           ~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                       v1 v3)) /\
             Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                        v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_2
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_partial_c3 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (~Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v1 v2)) /\
           Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                      v1 v3)) /\
             Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                        v2 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_3
                           etat_vote.Coll_etat_vote.partial_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_vote_perfect :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                    v1 v2)) /\
           Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                      v2 v3)) /\
             Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                        v1 v3))) ->
          (Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) /\
             Is_true ((((basics._equal_ _) (rf_diag (rf_voter v1 v2 v3))
                         (Coll_diag.constr num_capteur.Coll_capteur.capt_1
                           etat_vote.Coll_etat_vote.perfect_match))))) ;
    (* From species vote#Imp_vote. *)
    rf_voter_returns_an_input_value :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v1))) \/
          Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v2))) \/
            Is_true ((((basics._equal_ _) (rf_value (rf_voter v1 v2 v3)) v3))) \/
              (~Is_true (((Coll_diag.valid (rf_diag (rf_voter v1 v2 v3)))))) ;
    (* From species vote#Voteur. *)
    rf_voter_independant_from_order_v1_v2 :
      forall v1  v2  v3 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        (rf_compatible (rf_voter v1 v2 v3) (rf_voter v2 v1 v3)) /\
          (rf_compatible (rf_voter v1 v2 v3) (rf_voter v3 v1 v2))
    }.
  
  
  (* From species main#Sp_int_value_with_value_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_reflexive'. *)
  Section Proof_of_consistency_rule_is_reflexive.
(* File "main.fcl", line 424, character 5, line 425, character 59 *)
Theorem for_zenon_consistency_rule_is_reflexive:(forall a
:value_with_valid.Coll_int_value_with_valid.me_as_carrier,(Is_true (
value_with_valid.Coll_int_value_with_valid.consistency_rule a a))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value_with_valid.Coll_int_value_with_valid.consistency_rule_reflexive)))
).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_reflexive :
      forall v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                   v1 v1)).
    apply for_zenon_consistency_rule_is_reflexive;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_reflexive.
  
  Theorem consistency_rule_is_reflexive :
    forall v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier,
      Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                 v1 v1)).
  apply for_zenon_abstracted_consistency_rule_is_reflexive;
  auto.
  Qed.
  
  (* From species main#Sp_int_value_with_value_imp_vote. *)
  (* Section for proof of theorem 'consistency_rule_is_symmetric'. *)
  Section Proof_of_consistency_rule_is_symmetric.
(* File "main.fcl", line 421, character 5, line 422, character 59 *)
Theorem for_zenon_consistency_rule_is_symmetric:(forall a
:value_with_valid.Coll_int_value_with_valid.me_as_carrier,(forall b
:value_with_valid.Coll_int_value_with_valid.me_as_carrier,((Is_true (
value_with_valid.Coll_int_value_with_valid.consistency_rule a b))->(
Is_true (value_with_valid.Coll_int_value_with_valid.consistency_rule b
a))))).
Proof.
exact(
(NNPP _ (fun zenon_G=>(zenon_G
value_with_valid.Coll_int_value_with_valid.consistency_rule_symmetric)))
).
Qed.

    (* Dummy theorem to enforce Coq abstractions. *)
    Theorem for_zenon_abstracted_consistency_rule_is_symmetric :
      forall v1  v2 :
        value_with_valid.Coll_int_value_with_valid.me_as_carrier,
        Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                   v1 v2)) ->
          Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                     v2 v1)).
    apply for_zenon_consistency_rule_is_symmetric;
    auto.
    Qed.
    End Proof_of_consistency_rule_is_symmetric.
  
  Theorem consistency_rule_is_symmetric :
    forall v1  v2 : value_with_valid.Coll_int_value_with_valid.me_as_carrier,
      Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                 v1 v2)) ->
        Is_true ((value_with_valid.Coll_int_value_with_valid.consistency_rule
                   v2 v1)).
  apply for_zenon_abstracted_consistency_rule_is_symmetric;
  auto.
  Qed.
  
  (* Fully defined 'Sp_int_value_with_value_imp_vote' species's collection generator. *)
  Definition collection_create :=
    let local_rep := basics.unit__t in
    (* From species main#Sp_int_value_with_value_imp_vote. *)
    let local_consistency_rule_is_reflexive := consistency_rule_is_reflexive
      in
    (* From species main#Sp_int_value_with_value_imp_vote. *)
    let local_consistency_rule_is_symmetric := consistency_rule_is_symmetric
      in
    (* From species gen_vote#Gen_voter. *)
    let local_diag := gen_vote.Gen_voter.diag
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier in
    (* From species vote#Voteur. *)
    let local_sensor := vote.Voteur.sensor
      num_capteur.Coll_capteur.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_a in
    (* From species vote#Voteur. *)
    let local_state := vote.Voteur.state
      etat_vote.Coll_etat_vote.me_as_carrier Coll_diag.me_as_carrier
      Coll_diag.prj_b in
    (* From species gen_vote#Gen_voter. *)
    let local_value := gen_vote.Gen_voter.value
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier in
    (* From species vote#Imp_vote. *)
    let local_voter := vote.Imp_vote.voter
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr in
    (* From species gen_vote#Gen_voter. *)
    let local_compatible := gen_vote.Gen_voter.compatible
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.valid local_diag local_value in
    (* From species vote#Voteur. *)
    let local_t1 := vote.Voteur.t1 etat_vote.Coll_etat_vote.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.equal
      etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match etat_vote.Coll_etat_vote.all_value
      local_diag local_state local_voter in
    (* From species vote#Voteur. *)
    let local_t2 := vote.Voteur.t2 num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      num_capteur.Coll_capteur.equal num_capteur.Coll_capteur.all_value
      local_diag local_sensor local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c1 := vote.Imp_vote.vote_match_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.range_match
      num_capteur.Coll_capteur.capt_1
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c2 := vote.Imp_vote.vote_match_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.range_match
      num_capteur.Coll_capteur.capt_2
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_match_c3 := vote.Imp_vote.vote_match_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.range_match
      num_capteur.Coll_capteur.capt_3
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_no_match := vote.Imp_vote.vote_no_match
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.no_match
      num_capteur.Coll_capteur.capt_1
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c1 := vote.Imp_vote.vote_partial_c1
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.partial_match
      num_capteur.Coll_capteur.capt_1
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c2 := vote.Imp_vote.vote_partial_c2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.partial_match
      num_capteur.Coll_capteur.capt_2
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_partial_c3 := vote.Imp_vote.vote_partial_c3
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.partial_match
      num_capteur.Coll_capteur.capt_3
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_vote_perfect := vote.Imp_vote.vote_perfect
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.perfect_match
      num_capteur.Coll_capteur.capt_1
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      Coll_diag.constr local_diag local_value local_voter in
    (* From species vote#Imp_vote. *)
    let local_voter_returns_an_input_value :=
      vote.Imp_vote.voter_returns_an_input_value
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier Coll_diag.valid local_diag local_value
      local_voter in
    (* From species vote#Voteur. *)
    let local_voter_independant_from_order_v1_v2 :=
      vote.Voteur.voter_independant_from_order_v1_v2
      etat_vote.Coll_etat_vote.me_as_carrier
      num_capteur.Coll_capteur.me_as_carrier
      value_with_valid.Coll_int_value_with_valid.me_as_carrier
      Coll_diag.me_as_carrier etat_vote.Coll_etat_vote.equal
      etat_vote.Coll_etat_vote.no_match
      etat_vote.Coll_etat_vote.partial_match
      etat_vote.Coll_etat_vote.perfect_match
      etat_vote.Coll_etat_vote.range_match num_capteur.Coll_capteur.capt_1
      num_capteur.Coll_capteur.capt_2 num_capteur.Coll_capteur.capt_3
      value_with_valid.Coll_int_value_with_valid.consistency_rule
      value_with_valid.Coll_int_value_with_valid.consistency_rule_reflexive
      value_with_valid.Coll_int_value_with_valid.consistency_rule_symmetric
      Coll_diag.constr Coll_diag.prj_b Coll_diag.valid
      Coll_diag.prj_b_is_snd_of_pair Coll_diag.no_match_is_invalid
      Coll_diag.partial_match_is_valid Coll_diag.perfect_match_is_valid
      Coll_diag.range_match_is_valid local_consistency_rule_is_symmetric
      local_diag local_value local_voter local_vote_match_c1
      local_vote_match_c2 local_vote_match_c3 local_vote_no_match
      local_vote_partial_c1 local_vote_partial_c2 local_vote_partial_c3
      local_vote_perfect in
    mk_record local_rep local_consistency_rule_is_reflexive
    local_consistency_rule_is_symmetric local_diag local_sensor local_state
    local_value local_voter local_compatible local_t1 local_t2
    local_vote_match_c1 local_vote_match_c2 local_vote_match_c3
    local_vote_no_match local_vote_partial_c1 local_vote_partial_c2
    local_vote_partial_c3 local_vote_perfect
    local_voter_returns_an_input_value
    local_voter_independant_from_order_v1_v2.
  
End Sp_int_value_with_value_imp_vote.

Module Coll_int_value_with_valid_imp_vote.
  Let effective_collection :=
    Sp_int_value_with_value_imp_vote.collection_create.
  (* Carrier's structure explicitly given by "rep". *)
  Definition me_as_carrier := basics.unit__t.
  Definition consistency_rule_is_reflexive :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_consistency_rule_is_reflexive).
  Definition consistency_rule_is_symmetric :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_consistency_rule_is_symmetric).
  Definition diag :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_diag).
  Definition sensor :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_sensor).
  Definition state :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_state).
  Definition value :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_value).
  Definition voter :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_voter).
  Definition compatible :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_compatible).
  Definition t1 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_t1).
  Definition t2 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_t2).
  Definition vote_match_c1 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_match_c1).
  Definition vote_match_c2 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_match_c2).
  Definition vote_match_c3 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_match_c3).
  Definition vote_no_match :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_no_match).
  Definition vote_partial_c1 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_partial_c1).
  Definition vote_partial_c2 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_partial_c2).
  Definition vote_partial_c3 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_partial_c3).
  Definition vote_perfect :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_vote_perfect).
  Definition voter_returns_an_input_value :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_voter_returns_an_input_value).
  Definition voter_independant_from_order_v1_v2 :=
    effective_collection.(Sp_int_value_with_value_imp_vote.rf_voter_independant_from_order_v1_v2).
  
End Coll_int_value_with_valid_imp_vote.

Let p_val (x : basics.string__t) (y : basics.string__t) :
  value_with_valid.Coll_int_value_with_valid.me_as_carrier :=
  (value_with_valid.Coll_int_value_with_valid.parse2 x y).
Let voter_value_int_value_with_valid
  (v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v2 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v3 : value_with_valid.Coll_int_value_with_valid.me_as_carrier) :
  basics.string__t :=
  let s :
    value_with_valid.Coll_int_value_with_valid.me_as_carrier :=
    (Coll_int_value_with_valid_imp_vote.value
      (Coll_int_value_with_valid_imp_vote.voter v1 v2 v3))
  in
  (value_with_valid.Coll_int_value_with_valid.print s).
Let voter_etat_int_value_with_valid
  (v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v2 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v3 : value_with_valid.Coll_int_value_with_valid.me_as_carrier) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_value_with_valid_imp_vote.diag
      (Coll_int_value_with_valid_imp_vote.voter v1 v2 v3))
  in
  (etat_vote.Coll_etat_vote.print
    (Coll_int_value_with_valid_imp_vote.state s)).
Let voter_val_int_value_with_valid
  (v1 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v2 : value_with_valid.Coll_int_value_with_valid.me_as_carrier)
  (v3 : value_with_valid.Coll_int_value_with_valid.me_as_carrier) :
  basics.string__t :=
  let s :
    Coll_diag.me_as_carrier :=
    (Coll_int_value_with_valid_imp_vote.diag
      (Coll_int_value_with_valid_imp_vote.voter v1 v2 v3))
  in
  (num_capteur.Coll_capteur.print
    (Coll_int_value_with_valid_imp_vote.sensor s)).
Let va113 : basics.string__t :=
  "23"%string.
Let va123 : basics.string__t :=
  "45"%string.
Let va133 : basics.string__t :=
  "23"%string.
Let vali : basics.string__t :=
  "valid"%string.
Let invali : basics.string__t :=
  "invalid"%string.
Let p_parse2 (x : basics.string__t) (y : basics.string__t) :
  value_with_valid.Coll_int_value_with_valid.me_as_carrier :=
  (value_with_valid.Coll_int_value_with_valid.parse2 x y).
Check ((basics.print_string "Voteur entier avec validit�
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va113 vali)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va123 vali)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va133 vali)))).

Check ((basics.print_string " --> val : "%string)).

Check
 ((basics.print_string
    (voter_value_int_value_with_valid (p_parse2 va113 vali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string " , diag : ("%string)).

Check
 ((basics.print_string
    (voter_val_int_value_with_valid (p_parse2 va113 vali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ", "%string)).

Check
 ((basics.print_string
    (voter_etat_int_value_with_valid (p_parse2 va113 vali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ")
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print
      (p_parse2 va113 invali)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va123 vali)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va133 vali)))).

Check ((basics.print_string " --> val : "%string)).

Check
 ((basics.print_string
    (voter_value_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string " , diag : ("%string)).

Check
 ((basics.print_string
    (voter_val_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ", "%string)).

Check
 ((basics.print_string
    (voter_etat_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ")
"%string)).

Check ((basics.print_string "v1 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print
      (p_parse2 va113 invali)))).

Check ((basics.print_string ", v2 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print
      (p_parse2 va123 invali)))).

Check ((basics.print_string ", v3 : "%string)).

Check
 ((basics.print_string
    (value_with_valid.Coll_int_value_with_valid.print (p_parse2 va133 vali)))).

Check ((basics.print_string " --> val : "%string)).

Check
 ((basics.print_string
    (voter_value_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string " , diag : ("%string)).

Check
 ((basics.print_string
    (voter_val_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ", "%string)).

Check
 ((basics.print_string
    (voter_etat_int_value_with_valid (p_parse2 va113 invali)
      (p_parse2 va123 vali) (p_parse2 va133 vali)))).

Check ((basics.print_string ")
"%string)).
