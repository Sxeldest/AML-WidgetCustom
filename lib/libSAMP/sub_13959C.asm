; =========================================================
; Game Engine Function: sub_13959C
; Address            : 0x13959C - 0x139622
; =========================================================

13959C:  PUSH            {R4-R7,LR}
13959E:  ADD             R7, SP, #0xC
1395A0:  PUSH.W          {R8}
1395A4:  MOV             R4, R0
1395A6:  MOV             R5, R1
1395A8:  LDR             R0, [R0,#4]
1395AA:  MOV.W           R8, #0xAA
1395AE:  LDR             R1, [R4,#8]
1395B0:  LDRD.W          R2, R3, [R4,#0x10]
1395B4:  SUBS            R6, R1, R0
1395B6:  MOV.W           R1, R6,ASR#2
1395BA:  MUL.W           R1, R1, R8
1395BE:  IT NE
1395C0:  SUBNE           R6, R1, #1
1395C2:  ADDS            R1, R3, R2
1395C4:  CMP             R6, R1
1395C6:  BNE             loc_1395D6
1395C8:  MOV             R0, R4
1395CA:  BL              sub_139624
1395CE:  LDRD.W          R1, R2, [R4,#0x10]
1395D2:  LDR             R0, [R4,#4]
1395D4:  ADD             R1, R2
1395D6:  MOV             R2, #0xC0C0C0C1
1395DE:  UMULL.W         R2, R3, R1, R2
1395E2:  LSRS            R2, R3, #7
1395E4:  MOVS            R3, #0
1395E6:  MLS.W           R1, R2, R8, R1
1395EA:  LDR.W           R0, [R0,R2,LSL#2]
1395EE:  LDRH            R2, [R5]
1395F0:  ADD.W           R1, R1, R1,LSL#1
1395F4:  STRH.W          R2, [R0,R1,LSL#3]
1395F8:  ADD.W           R0, R0, R1,LSL#3
1395FC:  VLDR            D16, [R5,#4]
139600:  LDR             R2, [R5,#0xC]
139602:  STR             R2, [R0,#0xC]
139604:  VSTR            D16, [R0,#4]
139608:  LDRD.W          R1, R2, [R5,#0x10]
13960C:  STRD.W          R3, R3, [R5,#4]
139610:  STR             R3, [R5,#0xC]
139612:  STRD.W          R1, R2, [R0,#0x10]
139616:  LDR             R0, [R4,#0x14]
139618:  ADDS            R0, #1
13961A:  STR             R0, [R4,#0x14]
13961C:  POP.W           {R8}
139620:  POP             {R4-R7,PC}
