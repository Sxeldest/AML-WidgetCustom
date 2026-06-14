; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBike4FromERKS_
; Address            : 0x37552C - 0x3755BE
; =========================================================

37552C:  PUSH            {R4,R6,R7,LR}
37552E:  ADD             R7, SP, #8
375530:  MOV             R3, R0
375532:  LDR             R0, [R1,#0x38]; this
375534:  STR.W           R0, [R3,#0x38]!
375538:  VLDR            D16, [R1,#0xC]
37553C:  CMP             R0, #0
37553E:  LDR             R2, [R1,#0x14]
375540:  STR.W           R2, [R3,#-0x24]
375544:  VSTR            D16, [R3,#-0x2C]
375548:  VLDR            D16, [R1,#0x18]
37554C:  LDR             R2, [R1,#0x20]
37554E:  STR.W           R2, [R3,#-0x18]
375552:  VSTR            D16, [R3,#-0x20]
375556:  LDR             R2, [R1,#0x24]
375558:  STR.W           R2, [R3,#-0x14]
37555C:  LDR             R2, [R1,#0x28]
37555E:  STR.W           R2, [R3,#-0x10]
375562:  LDRB.W          R2, [R1,#0x36]
375566:  STRB.W          R2, [R3,#-2]
37556A:  LDRB.W          R2, [R1,#0x34]
37556E:  STRB.W          R2, [R3,#-4]
375572:  LDR             R2, [R1,#0x2C]
375574:  STR.W           R2, [R3,#-0xC]
375578:  LDR             R2, [R1,#0x30]
37557A:  STR.W           R2, [R3,#-8]
37557E:  LDRB.W          R4, [R3,#-3]
375582:  LDRB.W          R12, [R1,#0x35]
375586:  AND.W           LR, R4, #0xFE
37558A:  AND.W           R4, R12, #1
37558E:  ORR.W           R4, R4, LR
375592:  STRB.W          R4, [R3,#-3]
375596:  SUB.W           R4, R3, #8
37559A:  LDRB.W          R1, [R1,#0x37]
37559E:  STRB.W          R1, [R3,#-1]
3755A2:  BEQ             loc_3755AC
3755A4:  MOV             R1, R3; CEntity **
3755A6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3755AA:  LDR             R2, [R4]
3755AC:  CMP             R2, #0
3755AE:  IT EQ
3755B0:  POPEQ           {R4,R6,R7,PC}
3755B2:  MOV             R0, R2; this
3755B4:  MOV             R1, R4; CEntity **
3755B6:  POP.W           {R4,R6,R7,LR}
3755BA:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
