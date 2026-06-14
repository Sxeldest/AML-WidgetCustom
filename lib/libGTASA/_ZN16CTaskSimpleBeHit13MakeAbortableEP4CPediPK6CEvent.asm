; =========================================================
; Game Engine Function: _ZN16CTaskSimpleBeHit13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DFBF4 - 0x4DFC48
; =========================================================

4DFBF4:  PUSH            {R4,R5,R7,LR}
4DFBF6:  ADD             R7, SP, #8
4DFBF8:  MOV             R4, R0
4DFBFA:  SUBS            R0, R2, #1
4DFBFC:  CMP             R0, #1
4DFBFE:  BHI             loc_4DFC28
4DFC00:  CBZ             R3, loc_4DFC0E
4DFC02:  LDR             R0, [R3]
4DFC04:  LDR             R1, [R0,#0xC]
4DFC06:  MOV             R0, R3
4DFC08:  BLX             R1
4DFC0A:  CMP             R0, #0x3E ; '>'
4DFC0C:  BLT             loc_4DFC44
4DFC0E:  LDR             R0, [R4,#0x24]; this
4DFC10:  CBZ             R0, loc_4DFC22
4DFC12:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DFC1C)
4DFC14:  MOVS            R2, #0; void *
4DFC16:  MOVS            R5, #0
4DFC18:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DFC1A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DFC1C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DFC20:  STR             R5, [R4,#0x24]
4DFC22:  MOVS            R0, #1
4DFC24:  STRB            R0, [R4,#0xC]
4DFC26:  POP             {R4,R5,R7,PC}
4DFC28:  LDR             R0, [R4,#0x24]
4DFC2A:  CBZ             R0, loc_4DFC44
4DFC2C:  LDRH            R1, [R0,#0x2E]
4DFC2E:  TST.W           R1, #1
4DFC32:  BNE             loc_4DFC44
4DFC34:  ORR.W           R1, R1, #4
4DFC38:  STRH            R1, [R0,#0x2E]
4DFC3A:  LDR             R0, [R4,#0x24]
4DFC3C:  MOVS            R1, #0xC0800000
4DFC42:  STR             R1, [R0,#0x1C]
4DFC44:  MOVS            R0, #0
4DFC46:  POP             {R4,R5,R7,PC}
