; =========================================================
; Game Engine Function: _ZN18CTaskLeanOnVehicle13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51AA54 - 0x51AAA2
; =========================================================

51AA54:  PUSH            {R4-R7,LR}
51AA56:  ADD             R7, SP, #0xC
51AA58:  PUSH.W          {R11}
51AA5C:  MOV             R4, R1
51AA5E:  MOV             R5, R0
51AA60:  CMP             R2, #2
51AA62:  BNE             loc_51AA94
51AA64:  LDR             R0, [R5,#0x14]
51AA66:  CBZ             R0, loc_51AA82
51AA68:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x51AA76)
51AA6A:  MOVS            R2, #0xC47A0000
51AA70:  MOVS            R6, #0
51AA72:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
51AA74:  STR             R2, [R0,#0x1C]
51AA76:  LDR             R0, [R5,#0x14]; this
51AA78:  MOVS            R2, #0; void *
51AA7A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
51AA7C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
51AA80:  STR             R6, [R5,#0x14]
51AA82:  MOVS            R0, #1
51AA84:  MOVS            R1, #0
51AA86:  STRB.W          R0, [R5,#0x2A]
51AA8A:  STR.W           R1, [R4,#0x12C]
51AA8E:  POP.W           {R11}
51AA92:  POP             {R4-R7,PC}
51AA94:  MOVS            R0, #1
51AA96:  STRB.W          R0, [R5,#0x29]
51AA9A:  MOVS            R0, #0
51AA9C:  POP.W           {R11}
51AAA0:  POP             {R4-R7,PC}
