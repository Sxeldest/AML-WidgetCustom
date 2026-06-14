; =========================================================
; Game Engine Function: _ZNK18CEventKnockOffBike5CloneEv
; Address            : 0x37A560 - 0x37A650
; =========================================================

37A560:  PUSH            {R4-R7,LR}
37A562:  ADD             R7, SP, #0xC
37A564:  PUSH.W          {R8-R11}
37A568:  SUB             SP, SP, #4
37A56A:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A572)
37A56C:  MOVS            R3, #0
37A56E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A570:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A572:  LDR             R1, [R1]; CPools::ms_pEventPool
37A574:  LDRD.W          R12, R4, [R1,#8]
37A578:  ADDS            R4, #1
37A57A:  STR             R4, [R1,#0xC]
37A57C:  CMP             R4, R12
37A57E:  BNE             loc_37A58A
37A580:  MOVS            R4, #0
37A582:  LSLS            R2, R3, #0x1F
37A584:  STR             R4, [R1,#0xC]
37A586:  BNE             loc_37A5BA
37A588:  MOVS            R3, #1
37A58A:  LDR             R5, [R1,#4]
37A58C:  LDRSB           R2, [R5,R4]
37A58E:  CMP.W           R2, #0xFFFFFFFF
37A592:  BGT             loc_37A578
37A594:  AND.W           R2, R2, #0x7F
37A598:  STRB            R2, [R5,R4]
37A59A:  LDR             R2, [R1,#4]
37A59C:  LDR             R3, [R1,#0xC]
37A59E:  LDRB            R5, [R2,R3]
37A5A0:  AND.W           R4, R5, #0x80
37A5A4:  ADDS            R5, #1
37A5A6:  AND.W           R5, R5, #0x7F
37A5AA:  ORRS            R5, R4
37A5AC:  STRB            R5, [R2,R3]
37A5AE:  LDR             R2, [R1]
37A5B0:  LDR             R1, [R1,#0xC]
37A5B2:  ADD.W           R1, R1, R1,LSL#4
37A5B6:  ADD.W           R4, R2, R1,LSL#2
37A5BA:  LDR             R1, =(_ZTV18CEventKnockOffBike_ptr - 0x37A5CA)
37A5BC:  MOV.W           R11, #0
37A5C0:  LDRD.W          R12, LR, [R0,#0x24]
37A5C4:  MOV             R5, R4
37A5C6:  ADD             R1, PC; _ZTV18CEventKnockOffBike_ptr
37A5C8:  LDRD.W          R9, R3, [R0,#0x2C]
37A5CC:  LDR             R2, [R0,#0x38]
37A5CE:  LDR             R1, [R1]; `vtable for'CEventKnockOffBike ...
37A5D0:  LDRB.W          R8, [R0,#0x35]
37A5D4:  CMP             R2, #0
37A5D6:  ADD.W           R1, R1, #8
37A5DA:  LDRB.W          R10, [R0,#0x36]
37A5DE:  LDRB.W          R6, [R0,#0x34]
37A5E2:  STRB.W          R11, [R4,#8]
37A5E6:  STRD.W          R1, R11, [R4]
37A5EA:  LDR             R1, [R0,#0x14]
37A5EC:  STR             R1, [R4,#0x14]
37A5EE:  VLDR            D16, [R0,#0xC]
37A5F2:  VSTR            D16, [R4,#0xC]
37A5F6:  VLDR            D16, [R0,#0x18]
37A5FA:  LDR             R0, [R0,#0x20]
37A5FC:  STR.W           R3, [R5,#0x30]!
37A600:  SUB.W           R1, R5, #0x10
37A604:  STRB            R6, [R5,#4]
37A606:  STM.W           R1, {R0,R12,LR}
37A60A:  AND.W           R1, R8, #3
37A60E:  STR.W           R9, [R5,#-4]
37A612:  VSTR            D16, [R5,#-0x18]
37A616:  LDRB            R0, [R5,#5]
37A618:  STRB.W          R10, [R5,#6]
37A61C:  AND.W           R0, R0, #0xFC
37A620:  STRB.W          R11, [R5,#7]
37A624:  ORR.W           R0, R0, R1
37A628:  MOV             R1, R5
37A62A:  STRB            R0, [R5,#5]
37A62C:  STR.W           R2, [R1,#8]!; CEntity **
37A630:  BEQ             loc_37A63A
37A632:  MOV             R0, R2; this
37A634:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A638:  LDR             R3, [R5]
37A63A:  CMP             R3, #0
37A63C:  ITTT NE
37A63E:  MOVNE           R0, R3; this
37A640:  MOVNE           R1, R5; CEntity **
37A642:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A646:  MOV             R0, R4
37A648:  ADD             SP, SP, #4
37A64A:  POP.W           {R8-R11}
37A64E:  POP             {R4-R7,PC}
