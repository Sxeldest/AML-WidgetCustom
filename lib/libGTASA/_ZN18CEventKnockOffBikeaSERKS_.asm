; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeaSERKS_
; Address            : 0x3755BE - 0x375658
; =========================================================

3755BE:  PUSH            {R4-R7,LR}
3755C0:  ADD             R7, SP, #0xC
3755C2:  PUSH.W          {R11}
3755C6:  MOV             R3, R1
3755C8:  MOV             R6, R0
3755CA:  LDR             R0, [R3,#0x38]; this
3755CC:  MOV             R1, R6
3755CE:  STR.W           R0, [R1,#0x38]!; CEntity **
3755D2:  VLDR            D16, [R3,#0xC]
3755D6:  CMP             R0, #0
3755D8:  LDR             R2, [R3,#0x14]
3755DA:  STR.W           R2, [R1,#-0x24]
3755DE:  VSTR            D16, [R1,#-0x2C]
3755E2:  VLDR            D16, [R3,#0x18]
3755E6:  LDR             R2, [R3,#0x20]
3755E8:  STR.W           R2, [R1,#-0x18]
3755EC:  VSTR            D16, [R1,#-0x20]
3755F0:  LDR             R2, [R3,#0x24]
3755F2:  STR.W           R2, [R1,#-0x14]
3755F6:  LDR             R2, [R3,#0x28]
3755F8:  STR.W           R2, [R1,#-0x10]
3755FC:  LDRB.W          R2, [R3,#0x36]
375600:  STRB.W          R2, [R1,#-2]
375604:  LDRB.W          R2, [R3,#0x34]
375608:  STRB.W          R2, [R1,#-4]
37560C:  LDR             R2, [R3,#0x2C]
37560E:  STR.W           R2, [R1,#-0xC]
375612:  LDR             R2, [R3,#0x30]
375614:  STR.W           R2, [R1,#-8]
375618:  LDRB.W          R5, [R1,#-3]
37561C:  LDRB.W          R4, [R3,#0x35]
375620:  AND.W           R5, R5, #0xFE
375624:  AND.W           R4, R4, #1
375628:  ORR.W           R5, R5, R4
37562C:  STRB.W          R5, [R1,#-3]
375630:  SUB.W           R5, R1, #8
375634:  LDRB.W          R3, [R3,#0x37]
375638:  STRB.W          R3, [R1,#-1]
37563C:  BEQ             loc_375644
37563E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375642:  LDR             R2, [R5]
375644:  CMP             R2, #0
375646:  ITTT NE
375648:  MOVNE           R0, R2; this
37564A:  MOVNE           R1, R5; CEntity **
37564C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375650:  MOV             R0, R6
375652:  POP.W           {R11}
375656:  POP             {R4-R7,PC}
