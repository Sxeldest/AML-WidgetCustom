; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif
; Address            : 0x514440 - 0x5144E2
; =========================================================

514440:  PUSH            {R4-R7,LR}
514442:  ADD             R7, SP, #0xC
514444:  PUSH.W          {R8-R11}
514448:  SUB             SP, SP, #4
51444A:  VPUSH           {D8}
51444E:  MOV             R5, R3
514450:  MOV             R8, R2
514452:  MOV             R6, R1
514454:  MOV             R4, R0
514456:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51445A:  LDR             R1, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514468)
51445C:  MOV.W           R10, #0
514460:  LDR             R0, [R7,#arg_0]
514462:  CMP             R6, #0
514464:  ADD             R1, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514466:  LDRD.W          R11, R9, [R7,#arg_4]
51446A:  STRD.W          R0, R5, [R4,#0x1C]
51446E:  MOV             R5, R4
514470:  LDR             R0, [R1]; `vtable for'CTaskComplexSmartFleeEntity ...
514472:  MOV.W           R1, #7
514476:  VLDR            S0, [R7,#arg_14]
51447A:  LDR             R2, [R7,#arg_10]
51447C:  ADD.W           R0, R0, #8
514480:  STRB.W          R10, [R4,#0x24]
514484:  STR             R2, [R4,#0x28]
514486:  VSTR            S0, [R4,#0x2C]
51448A:  STR             R1, [R4,#0x30]
51448C:  STRH.W          R10, [R4,#0x3C]
514490:  STRD.W          R10, R10, [R4,#0x34]
514494:  STR             R0, [R4]
514496:  VLDR            S16, [R7,#arg_C]
51449A:  STR.W           R6, [R5,#0xC]!
51449E:  BEQ             loc_5144AC
5144A0:  MOV             R0, R6; this
5144A2:  MOV             R1, R5; CEntity **
5144A4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5144A8:  LDR             R0, [R5]
5144AA:  B               loc_5144AE
5144AC:  MOVS            R0, #0; this
5144AE:  LDR             R1, =(_ZTV24CTaskComplexFleeAnyMeans_ptr - 0x5144BA)
5144B0:  CMP             R0, #0
5144B2:  STRB.W          R8, [R4,#0x40]
5144B6:  ADD             R1, PC; _ZTV24CTaskComplexFleeAnyMeans_ptr
5144B8:  STRD.W          R11, R9, [R4,#0x44]
5144BC:  VSTR            S16, [R4,#0x4C]
5144C0:  LDR             R1, [R1]; `vtable for'CTaskComplexFleeAnyMeans ...
5144C2:  STR.W           R10, [R4,#0x50]
5144C6:  ADD.W           R1, R1, #8
5144CA:  STR             R1, [R4]
5144CC:  ITT NE
5144CE:  MOVNE           R1, R5; CEntity **
5144D0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5144D4:  MOV             R0, R4
5144D6:  VPOP            {D8}
5144DA:  ADD             SP, SP, #4
5144DC:  POP.W           {R8-R11}
5144E0:  POP             {R4-R7,PC}
