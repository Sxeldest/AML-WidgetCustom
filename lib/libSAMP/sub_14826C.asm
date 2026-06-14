; =========================================================
; Game Engine Function: sub_14826C
; Address            : 0x14826C - 0x1482D2
; =========================================================

14826C:  PUSH            {R4,R5,R7,LR}
14826E:  ADD             R7, SP, #8
148270:  SUB             SP, SP, #0x40
148272:  MOV             R5, R0
148274:  LDR             R0, [R0]
148276:  MOV             R4, R1
148278:  CMP             R0, #1
14827A:  BEQ             loc_1482A6
14827C:  CMP             R0, #2
14827E:  BNE             loc_1482CE
148280:  LDRH            R0, [R5,#8]
148282:  CMP.W           R0, #0x3E8
148286:  BHI             loc_1482CE
148288:  LDR             R1, =(off_23496C - 0x14828E)
14828A:  ADD             R1, PC; off_23496C
14828C:  LDR             R1, [R1]; dword_23DEF4
14828E:  LDR             R1, [R1]
148290:  LDR.W           R1, [R1,#0x3B0]
148294:  LDR             R1, [R1,#0x10]
148296:  ADDS            R2, R1, R0
148298:  LDRB            R2, [R2,#4]
14829A:  CBZ             R2, loc_1482CE
14829C:  ADD.W           R0, R1, R0,LSL#2
1482A0:  LDR.W           R0, [R0,#0x3EC]
1482A4:  B               loc_1482B8
1482A6:  LDR             R0, =(off_234970 - 0x1482AC)
1482A8:  ADD             R0, PC; off_234970
1482AA:  LDR             R0, [R0]; dword_23DEF0
1482AC:  LDR             R0, [R0]
1482AE:  BL              sub_E35A0
1482B2:  LDR             R1, [R5,#4]
1482B4:  BL              sub_1056B4
1482B8:  CBZ             R0, loc_1482CE
1482BA:  MOV             R5, SP
1482BC:  MOV             R1, R5
1482BE:  BL              sub_F8910
1482C2:  MOV             R1, R4
1482C4:  MOV             R2, R5
1482C6:  MOV.W           R3, #0x3F800000
1482CA:  BL              sub_1482E0
1482CE:  ADD             SP, SP, #0x40 ; '@'
1482D0:  POP             {R4,R5,R7,PC}
