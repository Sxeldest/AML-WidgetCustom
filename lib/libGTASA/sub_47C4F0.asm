; =========================================================
; Game Engine Function: sub_47C4F0
; Address            : 0x47C4F0 - 0x47C5B4
; =========================================================

47C4F0:  PUSH            {R4-R7,LR}
47C4F2:  ADD             R7, SP, #0xC
47C4F4:  PUSH.W          {R8-R11}
47C4F8:  SUB             SP, SP, #0x24
47C4FA:  LDR             R6, [R7,#arg_0]
47C4FC:  STR             R1, [SP,#0x40+var_40]
47C4FE:  CMP             R6, #1
47C500:  BLT             loc_47C5AC
47C502:  LDR             R1, [R0,#0x5C]
47C504:  STR             R1, [SP,#0x40+var_34]
47C506:  LDR.W           R10, [R0,#0x120]
47C50A:  LDR.W           R0, [R0,#0x1A4]
47C50E:  LDRD.W          R4, R1, [R0,#8]
47C512:  STR             R1, [SP,#0x40+var_20]
47C514:  LDR             R1, [R0,#0x10]
47C516:  STR             R1, [SP,#0x40+var_38]
47C518:  LDR             R0, [R0,#0x14]
47C51A:  STR             R0, [SP,#0x40+var_3C]
47C51C:  LDRD.W          R11, R8, [SP,#0x40+var_3C]
47C520:  MOV             R1, R3
47C522:  ADDS            R0, R1, #4
47C524:  MOV             R3, R2
47C526:  STR             R0, [SP,#0x40+var_24]
47C528:  ADDS            R0, R3, #1
47C52A:  STR             R0, [SP,#0x40+var_28]
47C52C:  SUBS            R0, R6, #1
47C52E:  STR             R0, [SP,#0x40+var_2C]
47C530:  LDR             R0, [SP,#0x40+var_34]
47C532:  STR             R6, [SP,#0x40+var_30]
47C534:  CMP             R0, #0
47C536:  BEQ             loc_47C5A0
47C538:  LDR             R0, [SP,#0x40+var_40]
47C53A:  LDRD.W          R2, R6, [R0]
47C53E:  LDR             R5, [R0,#8]
47C540:  LDR.W           R6, [R6,R3,LSL#2]
47C544:  LDR.W           LR, [R2,R3,LSL#2]
47C548:  LDR.W           R5, [R5,R3,LSL#2]
47C54C:  LDR.W           R12, [R1]
47C550:  LDR             R1, [SP,#0x40+var_34]
47C552:  LDRB.W          R2, [R5],#1
47C556:  SUBS            R1, #1
47C558:  LDRB.W          R3, [LR],#1
47C55C:  LDR.W           R9, [R4,R2,LSL#2]
47C560:  ADD.W           R0, R9, R3
47C564:  MOV             R9, R4
47C566:  LDRB.W          R4, [R6],#1
47C56A:  LDRB.W          R0, [R10,R0]
47C56E:  STRB.W          R0, [R12]
47C572:  LDR.W           R0, [R11,R4,LSL#2]
47C576:  LDR.W           R2, [R8,R2,LSL#2]
47C57A:  ADD             R0, R2
47C57C:  ADD.W           R0, R3, R0,ASR#16
47C580:  LDRB.W          R0, [R10,R0]
47C584:  STRB.W          R0, [R12,#1]
47C588:  LDR             R0, [SP,#0x40+var_20]
47C58A:  LDR.W           R0, [R0,R4,LSL#2]
47C58E:  MOV             R4, R9
47C590:  ADD             R0, R3
47C592:  LDRB.W          R0, [R10,R0]
47C596:  STRB.W          R0, [R12,#2]
47C59A:  ADD.W           R12, R12, #4
47C59E:  BNE             loc_47C552
47C5A0:  LDR             R0, [SP,#0x40+var_30]
47C5A2:  LDR             R3, [SP,#0x40+var_24]
47C5A4:  LDRD.W          R6, R2, [SP,#0x40+var_2C]
47C5A8:  CMP             R0, #2
47C5AA:  BGE             loc_47C520
47C5AC:  ADD             SP, SP, #0x24 ; '$'
47C5AE:  POP.W           {R8-R11}
47C5B2:  POP             {R4-R7,PC}
