; =========================================================
; Game Engine Function: _ZN18CTaskSimpleHitHead13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50AC68 - 0x50ACA8
; =========================================================

50AC68:  PUSH            {R4,R5,R7,LR}
50AC6A:  ADD             R7, SP, #8
50AC6C:  MOV             R4, R0
50AC6E:  SUBS            R1, R2, #1
50AC70:  LDR             R0, [R4,#0xC]
50AC72:  CMP             R1, #1
50AC74:  BHI             loc_50AC98
50AC76:  CBZ             R0, loc_50AC92
50AC78:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50AC86)
50AC7A:  MOVS            R2, #0xC0800000
50AC80:  MOVS            R5, #0
50AC82:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50AC84:  STR             R2, [R0,#0x1C]
50AC86:  LDR             R0, [R4,#0xC]; this
50AC88:  MOVS            R2, #0; void *
50AC8A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50AC8C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50AC90:  STR             R5, [R4,#0xC]
50AC92:  MOVS            R0, #1
50AC94:  STRB            R0, [R4,#8]
50AC96:  POP             {R4,R5,R7,PC}
50AC98:  CMP             R0, #0
50AC9A:  ITTT NE
50AC9C:  MOVNE           R1, #0
50AC9E:  MOVTNE          R1, #0xC080
50ACA2:  STRNE           R1, [R0,#0x1C]
50ACA4:  MOVS            R0, #0
50ACA6:  POP             {R4,R5,R7,PC}
