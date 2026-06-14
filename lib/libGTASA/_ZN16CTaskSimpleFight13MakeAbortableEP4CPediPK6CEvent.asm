; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4D87C0 - 0x4D88A0
; =========================================================

4D87C0:  PUSH            {R4-R7,LR}
4D87C2:  ADD             R7, SP, #0xC
4D87C4:  PUSH.W          {R8}
4D87C8:  MOV             R6, R2
4D87CA:  MOV             R4, R0
4D87CC:  SUBS            R0, R6, #1
4D87CE:  MOV             R5, R3
4D87D0:  MOV             R8, R1
4D87D2:  CMP             R0, #1
4D87D4:  BHI             loc_4D885A
4D87D6:  CBZ             R5, loc_4D87F0
4D87D8:  LDR             R0, [R5]
4D87DA:  LDR             R1, [R0,#0xC]
4D87DC:  MOV             R0, R5
4D87DE:  BLX             R1
4D87E0:  CMP             R0, #0x20 ; ' '
4D87E2:  BLT             loc_4D8860
4D87E4:  LDR             R0, [R5]
4D87E6:  LDR             R1, [R0,#0xC]
4D87E8:  MOV             R0, R5
4D87EA:  BLX             R1
4D87EC:  CMP             R0, #0x3C ; '<'
4D87EE:  BEQ             loc_4D8860
4D87F0:  LDR             R0, [R4,#0x1C]
4D87F2:  CBZ             R0, loc_4D8814
4D87F4:  CMP             R6, #2
4D87F6:  MOV.W           R2, #0; void *
4D87FA:  ITTTT EQ
4D87FC:  MOVEQ           R1, #0
4D87FE:  MOVTEQ          R1, #0xC47A
4D8802:  STREQ           R1, [R0,#0x1C]
4D8804:  LDREQ           R0, [R4,#0x1C]; this
4D8806:  MOVS            R5, #0
4D8808:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D880E)
4D880A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D880C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D880E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D8812:  STR             R5, [R4,#0x1C]
4D8814:  LDR             R0, [R4,#0x20]; this
4D8816:  CBZ             R0, loc_4D8874
4D8818:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D8822)
4D881A:  MOVS            R2, #0; void *
4D881C:  MOVS            R5, #0
4D881E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D8820:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D8822:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D8826:  LDR             R0, [R4,#0x20]
4D8828:  VLDR            S0, [R0,#0x18]
4D882C:  VCMPE.F32       S0, #0.0
4D8830:  VMRS            APSR_nzcv, FPSCR
4D8834:  BLE             loc_4D8872
4D8836:  VLDR            S0, [R0,#0x1C]
4D883A:  VCMPE.F32       S0, #0.0
4D883E:  VMRS            APSR_nzcv, FPSCR
4D8842:  BLT             loc_4D8872
4D8844:  LDR.W           R1, [R8,#0x4E0]; int
4D8848:  CMP             R6, #2
4D884A:  LDR.W           R0, [R8,#0x18]; int
4D884E:  BNE             loc_4D8868
4D8850:  MOVS            R3, #0
4D8852:  MOVS            R2, #3
4D8854:  MOVT            R3, #0x447A
4D8858:  B               loc_4D886E
4D885A:  MOVS            R0, #1
4D885C:  STRB.W          R0, [R4,#0x26]
4D8860:  MOVS            R0, #0
4D8862:  POP.W           {R8}
4D8866:  POP             {R4-R7,PC}
4D8868:  MOVS            R2, #3; unsigned int
4D886A:  MOV.W           R3, #0x41800000
4D886E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D8872:  STR             R5, [R4,#0x20]
4D8874:  CMP.W           R8, #0
4D8878:  BEQ             loc_4D8896
4D887A:  MOV             R0, R8; this
4D887C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4D8880:  CMP             R0, #1
4D8882:  BNE             loc_4D8896
4D8884:  LDR.W           R0, [R8,#0x444]
4D8888:  MOVS            R1, #0
4D888A:  STRD.W          R1, R1, [R0,#0xC]
4D888E:  MOV             R0, R4; this
4D8890:  MOV             R1, R8; CPlayerPed *
4D8892:  BLX             j__ZN16CTaskSimpleFight17SetPlayerMoveAnimEP10CPlayerPed; CTaskSimpleFight::SetPlayerMoveAnim(CPlayerPed *)
4D8896:  MOVS            R0, #1
4D8898:  STRB            R0, [R4,#8]
4D889A:  POP.W           {R8}
4D889E:  POP             {R4-R7,PC}
