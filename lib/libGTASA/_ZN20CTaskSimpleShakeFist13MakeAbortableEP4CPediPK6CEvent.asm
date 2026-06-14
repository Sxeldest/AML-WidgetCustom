; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFist13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x540B9C - 0x540BDE
; =========================================================

540B9C:  PUSH            {R4,R5,R7,LR}
540B9E:  ADD             R7, SP, #8
540BA0:  MOV             R4, R0
540BA2:  SUBS            R1, R2, #1
540BA4:  LDR             R0, [R4,#0xC]
540BA6:  CMP             R1, #1
540BA8:  BHI             loc_540BCA
540BAA:  CBZ             R0, loc_540BDA
540BAC:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x540BBA)
540BAE:  MOVS            R2, #0xC0800000
540BB4:  MOVS            R5, #0
540BB6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
540BB8:  STR             R2, [R0,#0x1C]
540BBA:  LDR             R0, [R4,#0xC]; this
540BBC:  MOVS            R2, #0; void *
540BBE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
540BC0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
540BC4:  MOVS            R0, #1
540BC6:  STR             R5, [R4,#0xC]
540BC8:  POP             {R4,R5,R7,PC}
540BCA:  CMP             R0, #0
540BCC:  ITTT NE
540BCE:  MOVNE           R1, #0
540BD0:  MOVTNE          R1, #0xC080
540BD4:  STRNE           R1, [R0,#0x1C]
540BD6:  MOVS            R0, #0
540BD8:  POP             {R4,R5,R7,PC}
540BDA:  MOVS            R0, #1
540BDC:  POP             {R4,R5,R7,PC}
