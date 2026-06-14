; =========================================================
; Game Engine Function: sub_12956C
; Address            : 0x12956C - 0x12960C
; =========================================================

12956C:  PUSH            {R4-R7,LR}
12956E:  ADD             R7, SP, #0xC
129570:  PUSH.W          {R8-R11}
129574:  SUB             SP, SP, #4
129576:  LDRH            R5, [R0]
129578:  MOV             R4, R0
12957A:  MOVW            R0, #0x12BB
12957E:  MOV             R6, R1
129580:  SUBS            R0, R5, R0
129582:  MOVW            R1, #0x3E5D
129586:  CLZ.W           R0, R0
12958A:  SUBS            R1, R5, R1
12958C:  CLZ.W           R1, R1
129590:  LDR.W           R9, [R7,#arg_0]
129594:  LSRS            R0, R0, #5
129596:  MOV             R8, R3
129598:  LSRS            R1, R1, #5
12959A:  MOV             R10, R2
12959C:  ORRS            R0, R1
12959E:  BEQ             loc_1295F8
1295A0:  MOV             R0, R5
1295A2:  BL              sub_129074
1295A6:  LDR             R1, =(unk_B3CB4 - 0x1295B0)
1295A8:  EOR.W           R0, R0, #2
1295AC:  ADD             R1, PC; unk_B3CB4
1295AE:  LDRH.W          R0, [R1,R0,LSL#1]
1295B2:  STRH            R0, [R4]
1295B4:  BL              sub_163768
1295B8:  LDRH            R1, [R4]
1295BA:  LDR.W           R0, [R0,R1,LSL#2]
1295BE:  STR             R0, [SP,#0x20+var_20]
1295C0:  BL              sub_163768
1295C4:  LDR.W           R11, [R0,R5,LSL#2]
1295C8:  BL              sub_163768
1295CC:  LDRH            R1, [R4]
1295CE:  MOV             R2, R9
1295D0:  STR.W           R11, [R0,R1,LSL#2]
1295D4:  MOV             R0, R10
1295D6:  MOV             R1, R8
1295D8:  LDR             R3, [R6]
1295DA:  LDR             R6, [SP,#0x20+var_20]
1295DC:  BLX             R3
1295DE:  MOV             R8, R0
1295E0:  CBZ             R6, loc_1295EC
1295E2:  BL              sub_163768
1295E6:  LDRH            R1, [R4]
1295E8:  STR.W           R6, [R0,R1,LSL#2]
1295EC:  STRH            R5, [R4]
1295EE:  MOV             R0, R8
1295F0:  ADD             SP, SP, #4
1295F2:  POP.W           {R8-R11}
1295F6:  POP             {R4-R7,PC}
1295F8:  LDR             R3, [R6]
1295FA:  MOV             R0, R10
1295FC:  MOV             R1, R8
1295FE:  MOV             R2, R9
129600:  ADD             SP, SP, #4
129602:  POP.W           {R8-R11}
129606:  POP.W           {R4-R7,LR}
12960A:  BX              R3
