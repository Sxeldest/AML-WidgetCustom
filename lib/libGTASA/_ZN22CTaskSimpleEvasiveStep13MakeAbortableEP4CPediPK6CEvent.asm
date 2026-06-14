; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStep13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50ADE4 - 0x50AE16
; =========================================================

50ADE4:  PUSH            {R4,R5,R7,LR}
50ADE6:  ADD             R7, SP, #8
50ADE8:  MOV             R4, R0
50ADEA:  SUBS            R0, R2, #1
50ADEC:  CMP             R0, #1
50ADEE:  ITT HI
50ADF0:  MOVHI           R0, #0
50ADF2:  POPHI           {R4,R5,R7,PC}
50ADF4:  LDR             R0, [R4,#0x10]
50ADF6:  CBZ             R0, loc_50AE12
50ADF8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x50AE06)
50ADFA:  MOVS            R2, #0xC0800000
50AE00:  MOVS            R5, #0
50AE02:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
50AE04:  STR             R2, [R0,#0x1C]
50AE06:  LDR             R0, [R4,#0x10]; this
50AE08:  MOVS            R2, #0; void *
50AE0A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
50AE0C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50AE10:  STR             R5, [R4,#0x10]
50AE12:  MOVS            R0, #1
50AE14:  POP             {R4,R5,R7,PC}
