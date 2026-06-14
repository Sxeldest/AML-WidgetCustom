; =========================================================
; Game Engine Function: sub_12837C
; Address            : 0x12837C - 0x1283FA
; =========================================================

12837C:  PUSH            {R4-R7,LR}
12837E:  ADD             R7, SP, #0xC
128380:  PUSH.W          {R8,R9,R11}
128384:  LDRH.W          R8, [R0,#0x26]
128388:  MOV             R4, R0
12838A:  MOVW            R0, #0x31C6
12838E:  CMP             R8, R0
128390:  BNE             loc_1283E8
128392:  MOVW            R0, #0x1D7
128396:  STRH            R0, [R4,#0x26]
128398:  BL              sub_163768
12839C:  MOV             R5, R0
12839E:  BL              sub_163768
1283A2:  LDR             R1, =(off_31410C - 0x1283B0)
1283A4:  MOVW            R9, #0xC718
1283A8:  LDR.W           R2, [R5,R9]
1283AC:  ADD             R1, PC; off_31410C
1283AE:  LDR.W           R3, [R0,#0x75C]
1283B2:  LDR             R1, [R1]
1283B4:  STR.W           R3, [R5,R9]
1283B8:  STR.W           R2, [R0,#0x75C]
1283BC:  MOV             R0, R4
1283BE:  BLX             R1
1283C0:  MOV             R5, R0
1283C2:  BL              sub_163768
1283C6:  MOV             R6, R0
1283C8:  BL              sub_163768
1283CC:  LDR.W           R1, [R6,R9]
1283D0:  LDR.W           R2, [R0,#0x75C]
1283D4:  STR.W           R2, [R6,R9]
1283D8:  STR.W           R1, [R0,#0x75C]
1283DC:  MOV             R0, R5
1283DE:  STRH.W          R8, [R4,#0x26]
1283E2:  POP.W           {R8,R9,R11}
1283E6:  POP             {R4-R7,PC}
1283E8:  LDR             R0, =(off_31410C - 0x1283EE)
1283EA:  ADD             R0, PC; off_31410C
1283EC:  LDR             R1, [R0]
1283EE:  MOV             R0, R4
1283F0:  POP.W           {R8,R9,R11}
1283F4:  POP.W           {R4-R7,LR}
1283F8:  BX              R1
