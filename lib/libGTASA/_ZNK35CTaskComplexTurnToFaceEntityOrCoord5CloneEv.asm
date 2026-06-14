; =========================================================
; Game Engine Function: _ZNK35CTaskComplexTurnToFaceEntityOrCoord5CloneEv
; Address            : 0x528358 - 0x5283E2
; =========================================================

528358:  PUSH            {R4-R7,LR}
52835A:  ADD             R7, SP, #0xC
52835C:  PUSH.W          {R11}
528360:  VPUSH           {D8-D9}
528364:  MOV             R5, R0
528366:  MOVS            R0, #word_28; this
528368:  LDRB            R6, [R5,#0x10]
52836A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52836E:  MOV             R4, R0
528370:  CBZ             R6, loc_5283A4
528372:  MOV             R0, R4; this
528374:  VLDR            S16, [R5,#0x20]
528378:  VLDR            S18, [R5,#0x24]
52837C:  LDR             R5, [R5,#0xC]
52837E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528382:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x52838E)
528384:  MOVS            R1, #1
528386:  STRB            R1, [R4,#0x10]
528388:  MOV             R1, R4
52838A:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
52838C:  CMP             R5, #0
52838E:  LDR             R0, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
528390:  ADD.W           R0, R0, #8
528394:  STR             R0, [R4]
528396:  STR.W           R5, [R1,#0xC]!; CEntity **
52839A:  BEQ             loc_5283CE
52839C:  MOV             R0, R5; this
52839E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5283A2:  B               loc_5283CE
5283A4:  MOV             R0, R4; this
5283A6:  VLDR            S16, [R5,#0x20]
5283AA:  VLDR            S18, [R5,#0x24]
5283AE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5283B2:  LDR             R0, =(_ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr - 0x5283BC)
5283B4:  MOVS            R1, #0
5283B6:  STR             R1, [R4,#0xC]
5283B8:  ADD             R0, PC; _ZTV35CTaskComplexTurnToFaceEntityOrCoord_ptr
5283BA:  STRB            R1, [R4,#0x10]
5283BC:  LDR             R0, [R0]; `vtable for'CTaskComplexTurnToFaceEntityOrCoord ...
5283BE:  ADDS            R0, #8
5283C0:  STR             R0, [R4]
5283C2:  VLDR            D16, [R5,#0x14]
5283C6:  LDR             R0, [R5,#0x1C]
5283C8:  STR             R0, [R4,#0x1C]
5283CA:  VSTR            D16, [R4,#0x14]
5283CE:  VSTR            S16, [R4,#0x20]
5283D2:  MOV             R0, R4
5283D4:  VSTR            S18, [R4,#0x24]
5283D8:  VPOP            {D8-D9}
5283DC:  POP.W           {R11}
5283E0:  POP             {R4-R7,PC}
