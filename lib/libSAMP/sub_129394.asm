; =========================================================
; Game Engine Function: sub_129394
; Address            : 0x129394 - 0x12942C
; =========================================================

129394:  PUSH            {R4-R7,LR}
129396:  ADD             R7, SP, #0xC
129398:  PUSH.W          {R8-R10}
12939C:  LDR             R6, [R1,#0x10]
12939E:  MOV             R8, R0
1293A0:  MOVW            R0, #0x12BB
1293A4:  MOV             R5, R1
1293A6:  MOVW            R1, #0x3E5D
1293AA:  LDRH            R4, [R6,#0x26]
1293AC:  SUBS            R0, R4, R0
1293AE:  SUBS            R1, R4, R1
1293B0:  CLZ.W           R0, R0
1293B4:  CLZ.W           R1, R1
1293B8:  LSRS            R0, R0, #5
1293BA:  LSRS            R1, R1, #5
1293BC:  ORRS            R0, R1
1293BE:  BEQ             loc_129418
1293C0:  MOV             R0, R4
1293C2:  BL              sub_129074
1293C6:  LDR             R1, =(unk_B3CB4 - 0x1293D0)
1293C8:  EOR.W           R0, R0, #2
1293CC:  ADD             R1, PC; unk_B3CB4
1293CE:  LDRH.W          R0, [R1,R0,LSL#1]
1293D2:  STRH            R0, [R6,#0x26]
1293D4:  BL              sub_163768
1293D8:  LDRH            R1, [R6,#0x26]
1293DA:  LDR.W           R9, [R0,R1,LSL#2]
1293DE:  BL              sub_163768
1293E2:  LDR.W           R10, [R0,R4,LSL#2]
1293E6:  BL              sub_163768
1293EA:  LDRH            R1, [R6,#0x26]
1293EC:  LDR             R2, =(off_314158 - 0x1293F2)
1293EE:  ADD             R2, PC; off_314158
1293F0:  STR.W           R10, [R0,R1,LSL#2]
1293F4:  MOV             R0, R8
1293F6:  LDR             R2, [R2]
1293F8:  MOV             R1, R5
1293FA:  BLX             R2
1293FC:  MOV             R5, R0
1293FE:  CMP.W           R9, #0
129402:  BEQ             loc_12940E
129404:  BL              sub_163768
129408:  LDRH            R1, [R6,#0x26]
12940A:  STR.W           R9, [R0,R1,LSL#2]
12940E:  STRH            R4, [R6,#0x26]
129410:  MOV             R0, R5
129412:  POP.W           {R8-R10}
129416:  POP             {R4-R7,PC}
129418:  LDR             R0, =(off_314158 - 0x129420)
12941A:  MOV             R1, R5
12941C:  ADD             R0, PC; off_314158
12941E:  LDR             R2, [R0]
129420:  MOV             R0, R8
129422:  POP.W           {R8-R10}
129426:  POP.W           {R4-R7,LR}
12942A:  BX              R2
