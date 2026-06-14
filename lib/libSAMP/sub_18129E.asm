; =========================================================
; Game Engine Function: sub_18129E
; Address            : 0x18129E - 0x18131E
; =========================================================

18129E:  PUSH            {R4-R7,LR}
1812A0:  ADD             R7, SP, #0xC
1812A2:  PUSH.W          {R8-R11}
1812A6:  SUB             SP, SP, #0x2C
1812A8:  ADD.W           LR, R7, #0x1C
1812AC:  LDR             R5, [R7,#arg_C]
1812AE:  LDRD.W          R11, R8, [R7,#arg_20]
1812B2:  LDRD.W          R4, R10, [R7,#arg_0]
1812B6:  LDM.W           LR, {R6,R12,LR}
1812BA:  CBZ             R2, loc_1812F0
1812BC:  LDR.W           R9, [R0]
1812C0:  MOV             R6, R5
1812C2:  LDR.W           R12, [R2]
1812C6:  LDR             R2, [R2,#0xC]
1812C8:  LDR.W           R5, [R9,#0x54]
1812CC:  STMEA.W         SP, {R3,R4,R10}
1812D0:  LDR             R3, [R7,#arg_8]
1812D2:  STRD.W          R3, R6, [SP,#0x48+var_3C]
1812D6:  LDR             R3, [R7,#arg_10]
1812D8:  STR             R3, [SP,#0x48+var_34]
1812DA:  LDR             R3, [R7,#arg_14]
1812DC:  STR             R3, [SP,#0x48+var_30]
1812DE:  LDR             R3, [R7,#arg_18]
1812E0:  STR             R3, [SP,#0x48+var_2C]
1812E2:  MOV             R3, R12
1812E4:  STRD.W          LR, R11, [SP,#0x48+var_28]
1812E8:  STR.W           R8, [SP,#0x48+var_20]
1812EC:  BLX             R5
1812EE:  B               loc_181316
1812F0:  LDR             R2, [R0]
1812F2:  LDR.W           R9, [R2,#0x54]
1812F6:  LDR             R2, [R7,#arg_8]
1812F8:  STRD.W          R2, R5, [SP,#0x48+var_3C]
1812FC:  LDR             R2, [R7,#arg_10]
1812FE:  STMEA.W         SP, {R3,R4,R10}
181302:  ADD             R3, SP, #0x48+var_34
181304:  STM.W           R3, {R2,R6,R12}
181308:  MOVS            R2, #0
18130A:  MOVS            R3, #0
18130C:  STRD.W          LR, R11, [SP,#0x48+var_28]
181310:  STR.W           R8, [SP,#0x48+var_20]
181314:  BLX             R9
181316:  ADD             SP, SP, #0x2C ; ','
181318:  POP.W           {R8-R11}
18131C:  POP             {R4-R7,PC}
