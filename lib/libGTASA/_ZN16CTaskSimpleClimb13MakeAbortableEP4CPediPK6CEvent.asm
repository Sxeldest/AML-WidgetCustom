; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52E498 - 0x52E504
; =========================================================

52E498:  PUSH            {R4-R7,LR}
52E49A:  ADD             R7, SP, #0xC
52E49C:  PUSH.W          {R11}
52E4A0:  MOV             R5, R1
52E4A2:  MOV             R4, R0
52E4A4:  CBZ             R3, loc_52E4CC
52E4A6:  LDR             R0, [R3]
52E4A8:  LDR             R1, [R0,#0xC]
52E4AA:  MOV             R0, R3
52E4AC:  BLX             R1
52E4AE:  CMP             R0, #0x46 ; 'F'
52E4B0:  BGT             loc_52E4CC
52E4B2:  ADDW            R0, R5, #0x544
52E4B6:  VLDR            S0, [R0]
52E4BA:  VCMPE.F32       S0, #0.0
52E4BE:  VMRS            APSR_nzcv, FPSCR
52E4C2:  BLE             loc_52E4CC
52E4C4:  MOVS            R0, #0
52E4C6:  POP.W           {R11}
52E4CA:  POP             {R4-R7,PC}
52E4CC:  LDR             R0, [R4,#0x2C]
52E4CE:  CBZ             R0, loc_52E4EA
52E4D0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52E4DE)
52E4D2:  MOVS            R2, #0xC0800000
52E4D8:  MOVS            R6, #0
52E4DA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52E4DC:  STR             R2, [R0,#0x1C]
52E4DE:  LDR             R0, [R4,#0x2C]; this
52E4E0:  MOVS            R2, #0; void *
52E4E2:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52E4E4:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52E4E8:  STR             R6, [R4,#0x2C]
52E4EA:  MOVW            R0, #0xCCCD
52E4EE:  MOVS            R1, #0
52E4F0:  MOVT            R0, #0xBD4C
52E4F4:  STRD.W          R1, R1, [R5,#0x48]
52E4F8:  STR             R0, [R5,#0x50]
52E4FA:  MOVS            R0, #1
52E4FC:  STRB            R0, [R4,#8]
52E4FE:  POP.W           {R11}
52E502:  POP             {R4-R7,PC}
