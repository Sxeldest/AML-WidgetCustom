; =========================================================
; Game Engine Function: sub_1024BC
; Address            : 0x1024BC - 0x10252A
; =========================================================

1024BC:  PUSH            {R4-R7,LR}
1024BE:  ADD             R7, SP, #0xC
1024C0:  PUSH.W          {R8-R11}
1024C4:  SUB             SP, SP, #0x14
1024C6:  MOV             R4, R0
1024C8:  LDR             R0, =(off_234A18 - 0x1024D6)
1024CA:  MOV.W           R8, #0
1024CE:  MOV.W           R9, #1
1024D2:  ADD             R0, PC; off_234A18
1024D4:  MOVS            R5, #0
1024D6:  LDR.W           R10, [R0]; dword_23DF00
1024DA:  ADDS            R6, R4, R5
1024DC:  LDR.W           R0, [R6,#0xAC]
1024E0:  CMP             R0, #2
1024E2:  ITT EQ
1024E4:  LDREQ           R0, [R6,#0x2C]
1024E6:  CMPEQ           R0, #0
1024E8:  BEQ             loc_1024F2
1024EA:  ADDS            R5, #4
1024EC:  CMP             R5, #0x40 ; '@'
1024EE:  BNE             loc_1024DA
1024F0:  B               loc_102522
1024F2:  LDR.W           R1, [R6,#0xF0]
1024F6:  LDR.W           R2, [R6,#0x130]
1024FA:  LDR.W           R3, [R6,#0x170]
1024FE:  LDR.W           R0, [R10]
102502:  LDR.W           R11, [R6,#0x230]
102506:  LDR.W           R12, [R6,#0x1B0]
10250A:  LDR.W           LR, [R6,#0x1F0]
10250E:  STMEA.W         SP, {R8,R12,LR}
102512:  STR.W           R11, [SP,#0x30+var_24]
102516:  BL              sub_101598
10251A:  STR             R0, [R6,#0x2C]
10251C:  STRB.W          R9, [R4,#0xEC]
102520:  B               loc_1024EA
102522:  ADD             SP, SP, #0x14
102524:  POP.W           {R8-R11}
102528:  POP             {R4-R7,PC}
