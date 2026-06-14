; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectile13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DEA08 - 0x4DEA80
; =========================================================

4DEA08:  PUSH            {R4,R5,R7,LR}
4DEA0A:  ADD             R7, SP, #8
4DEA0C:  MOV             R5, R3
4DEA0E:  MOV             R4, R0
4DEA10:  CMP             R2, #2
4DEA12:  BNE             loc_4DEA36
4DEA14:  LDR             R0, [R4,#0xC]; this
4DEA16:  CBZ             R0, loc_4DEA7C
4DEA18:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DEA22)
4DEA1A:  MOVS            R2, #0; void *
4DEA1C:  MOVS            R5, #0
4DEA1E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DEA20:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DEA22:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DEA26:  LDR             R0, [R4,#0xC]
4DEA28:  MOVS            R1, #0xC47A0000
4DEA2E:  STR             R1, [R0,#0x1C]
4DEA30:  MOVS            R0, #1
4DEA32:  STR             R5, [R4,#0xC]
4DEA34:  POP             {R4,R5,R7,PC}
4DEA36:  CBZ             R5, loc_4DEA7C
4DEA38:  LDR             R0, [R5]
4DEA3A:  LDR             R1, [R0,#8]
4DEA3C:  MOV             R0, R5
4DEA3E:  BLX             R1
4DEA40:  CMP             R0, #9
4DEA42:  BNE             loc_4DEA7C
4DEA44:  LDRB.W          R0, [R5,#0x3C]
4DEA48:  CMP             R0, #0
4DEA4A:  ITT NE
4DEA4C:  LDRBNE          R0, [R5,#9]
4DEA4E:  CMPNE           R0, #0
4DEA50:  BNE             loc_4DEA5A
4DEA52:  LDRB.W          R0, [R5,#0x21]
4DEA56:  LSLS            R0, R0, #0x1E
4DEA58:  BPL             loc_4DEA7C
4DEA5A:  LDR             R0, [R4,#0xC]; this
4DEA5C:  CBZ             R0, loc_4DEA78
4DEA5E:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DEA68)
4DEA60:  MOVS            R2, #0; void *
4DEA62:  MOVS            R5, #0
4DEA64:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DEA66:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DEA68:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DEA6C:  LDR             R0, [R4,#0xC]
4DEA6E:  MOVS            R1, #0xC0800000
4DEA74:  STR             R1, [R0,#0x1C]
4DEA76:  STR             R5, [R4,#0xC]
4DEA78:  MOVS            R0, #1
4DEA7A:  STRB            R0, [R4,#8]
4DEA7C:  MOVS            R0, #1
4DEA7E:  POP             {R4,R5,R7,PC}
