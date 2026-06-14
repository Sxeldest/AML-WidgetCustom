; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAir13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52C3D0 - 0x52C456
; =========================================================

52C3D0:  PUSH            {R4-R7,LR}
52C3D2:  ADD             R7, SP, #0xC
52C3D4:  PUSH.W          {R11}
52C3D8:  MOV             R6, R3
52C3DA:  MOV             R4, R1
52C3DC:  MOV             R5, R0
52C3DE:  CMP             R2, #2
52C3E0:  BEQ             loc_52C414
52C3E2:  CMP             R2, #1
52C3E4:  BNE             loc_52C44E
52C3E6:  LDRB.W          R0, [R4,#0x48A]
52C3EA:  LSLS            R0, R0, #0x1C
52C3EC:  BMI             loc_52C414
52C3EE:  CBZ             R6, loc_52C44E
52C3F0:  LDR             R0, [R6]
52C3F2:  LDR             R1, [R0,#8]
52C3F4:  MOV             R0, R6
52C3F6:  BLX             R1
52C3F8:  CMP             R0, #0x20 ; ' '
52C3FA:  BNE             loc_52C408
52C3FC:  LDR             R0, [R6]
52C3FE:  LDR             R1, [R0,#0xC]
52C400:  MOV             R0, R6
52C402:  BLX             R1
52C404:  CMP             R0, #0x47 ; 'G'
52C406:  BEQ             loc_52C414
52C408:  LDR             R0, [R6]
52C40A:  LDR             R1, [R0,#8]
52C40C:  MOV             R0, R6
52C40E:  BLX             R1
52C410:  CMP             R0, #0x5D ; ']'
52C412:  BNE             loc_52C44E
52C414:  LDR             R0, [R5,#0x1C]
52C416:  CBZ             R0, loc_52C43A
52C418:  MOV.W           R2, #0xC1000000
52C41C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C428)
52C41E:  STR             R2, [R0,#0x1C]
52C420:  MOVS            R6, #0
52C422:  LDR             R0, [R5,#0x1C]
52C424:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52C426:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C428:  LDRH            R2, [R0,#0x2E]
52C42A:  ORR.W           R2, R2, #4
52C42E:  STRH            R2, [R0,#0x2E]
52C430:  LDR             R0, [R5,#0x1C]; this
52C432:  MOVS            R2, #0; void *
52C434:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C438:  STR             R6, [R5,#0x1C]
52C43A:  LDR.W           R0, [R4,#0x484]
52C43E:  BIC.W           R0, R0, #0x200
52C442:  STR.W           R0, [R4,#0x484]
52C446:  MOVS            R0, #1
52C448:  POP.W           {R11}
52C44C:  POP             {R4-R7,PC}
52C44E:  MOVS            R0, #0
52C450:  POP.W           {R11}
52C454:  POP             {R4-R7,PC}
