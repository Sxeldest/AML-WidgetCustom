; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeKickedOnGround13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DF17C - 0x4DF1BC
; =========================================================

4DF17C:  PUSH            {R4,R5,R7,LR}
4DF17E:  ADD             R7, SP, #8
4DF180:  MOV             R4, R0
4DF182:  SUBS            R1, R2, #1
4DF184:  LDR             R0, [R4,#0xC]; this
4DF186:  CMP             R1, #1
4DF188:  BHI             loc_4DF1A0
4DF18A:  CBZ             R0, loc_4DF1B8
4DF18C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF196)
4DF18E:  MOVS            R2, #0; void *
4DF190:  MOVS            R5, #0
4DF192:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF194:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF196:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF19A:  MOVS            R0, #1
4DF19C:  STR             R5, [R4,#0xC]
4DF19E:  POP             {R4,R5,R7,PC}
4DF1A0:  CBZ             R0, loc_4DF1B4
4DF1A2:  LDRH            R1, [R0,#0x2E]
4DF1A4:  ORR.W           R1, R1, #4
4DF1A8:  STRH            R1, [R0,#0x2E]
4DF1AA:  LDR             R0, [R4,#0xC]
4DF1AC:  MOVS            R1, #0xC0800000
4DF1B2:  STR             R1, [R0,#0x1C]
4DF1B4:  MOVS            R0, #0
4DF1B6:  POP             {R4,R5,R7,PC}
4DF1B8:  MOVS            R0, #1
4DF1BA:  POP             {R4,R5,R7,PC}
