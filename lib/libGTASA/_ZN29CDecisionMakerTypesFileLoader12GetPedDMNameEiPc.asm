; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader12GetPedDMNameEiPc
; Address            : 0x4BE3F8 - 0x4BE40A
; =========================================================

4BE3F8:  LDR             R2, =(_ZN29CDecisionMakerTypesFileLoader15ms_ped_DM_NamesE_ptr - 0x4BE3FE)
4BE3FA:  ADD             R2, PC; _ZN29CDecisionMakerTypesFileLoader15ms_ped_DM_NamesE_ptr
4BE3FC:  LDR             R2, [R2]; CDecisionMakerTypesFileLoader::ms_ped_DM_Names ...
4BE3FE:  LDR.W           R2, [R2,R0,LSL#2]
4BE402:  MOV             R0, R1
4BE404:  MOV             R1, R2
4BE406:  B.W             sub_5E6BC0
