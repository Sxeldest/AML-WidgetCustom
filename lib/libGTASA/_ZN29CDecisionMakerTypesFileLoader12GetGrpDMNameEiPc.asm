; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader12GetGrpDMNameEiPc
; Address            : 0x4BE410 - 0x4BE422
; =========================================================

4BE410:  LDR             R2, =(_ZN29CDecisionMakerTypesFileLoader15ms_grp_DM_NamesE_ptr - 0x4BE416)
4BE412:  ADD             R2, PC; _ZN29CDecisionMakerTypesFileLoader15ms_grp_DM_NamesE_ptr
4BE414:  LDR             R2, [R2]; CDecisionMakerTypesFileLoader::ms_grp_DM_Names ...
4BE416:  LDR.W           R2, [R2,R0,LSL#2]
4BE41A:  MOV             R0, R1
4BE41C:  MOV             R1, R2
4BE41E:  B.W             sub_5E6BC0
