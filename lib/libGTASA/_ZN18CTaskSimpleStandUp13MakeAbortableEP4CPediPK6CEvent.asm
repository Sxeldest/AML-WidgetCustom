; =========================================================
; Game Engine Function: _ZN18CTaskSimpleStandUp13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EC6A0 - 0x4EC6F8
; =========================================================

4EC6A0:  PUSH            {R4,R5,R7,LR}
4EC6A2:  ADD             R7, SP, #8
4EC6A4:  MOV             R4, R0
4EC6A6:  CMP             R2, #2
4EC6A8:  BNE             loc_4EC6C0
4EC6AA:  LDR             R0, [R4,#0xC]
4EC6AC:  CBZ             R0, loc_4EC6DC
4EC6AE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC6BC)
4EC6B0:  MOVS            R2, #0xC47A0000
4EC6B6:  MOVS            R5, #0
4EC6B8:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC6BA:  STR             R2, [R0,#0x1C]
4EC6BC:  LDR             R0, [R4,#0xC]
4EC6BE:  B               loc_4EC6CE
4EC6C0:  LDR             R0, [R4,#0xC]; this
4EC6C2:  CMP             R2, #1
4EC6C4:  BNE             loc_4EC6E0
4EC6C6:  CBZ             R0, loc_4EC6DC
4EC6C8:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC6D0)
4EC6CA:  MOVS            R5, #0
4EC6CC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC6CE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EC6D0:  MOVS            R2, #0; void *
4EC6D2:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EC6D6:  MOVS            R0, #1
4EC6D8:  STR             R5, [R4,#0xC]
4EC6DA:  POP             {R4,R5,R7,PC}
4EC6DC:  MOVS            R0, #1
4EC6DE:  POP             {R4,R5,R7,PC}
4EC6E0:  CBZ             R0, loc_4EC6F4
4EC6E2:  LDRH            R1, [R0,#0x2E]
4EC6E4:  ORR.W           R1, R1, #4
4EC6E8:  STRH            R1, [R0,#0x2E]
4EC6EA:  LDR             R0, [R4,#0xC]
4EC6EC:  MOVS            R1, #0xC0800000
4EC6F2:  STR             R1, [R0,#0x1C]
4EC6F4:  MOVS            R0, #0
4EC6F6:  POP             {R4,R5,R7,PC}
