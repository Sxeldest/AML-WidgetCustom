; =========================================================
; Game Engine Function: sub_1161B8
; Address            : 0x1161B8 - 0x116230
; =========================================================

1161B8:  PUSH            {R4,R5,R7,LR}
1161BA:  ADD             R7, SP, #8
1161BC:  VPUSH           {D8}
1161C0:  SUB             SP, SP, #0x10
1161C2:  MOV             R4, R0
1161C4:  LDR             R0, [R1]
1161C6:  MOV             R5, R1
1161C8:  LDR             R2, [R0,#0x5C]
1161CA:  ADD             R0, SP, #0x20+var_18
1161CC:  BLX             R2
1161CE:  LDR             R0, [SP,#0x20+var_18]
1161D0:  MOV             R1, R5
1161D2:  STR             R0, [R4]
1161D4:  LDR             R0, [R5]
1161D6:  LDR             R2, [R0,#0x5C]
1161D8:  ADD             R0, SP, #0x20+var_18
1161DA:  BLX             R2
1161DC:  LDR             R0, [SP,#0x20+var_14]
1161DE:  MOV             R1, R5
1161E0:  STR             R0, [R4,#4]
1161E2:  LDR             R0, [R5]
1161E4:  LDR             R2, [R0,#0x5C]
1161E6:  ADD             R0, SP, #0x20+var_18
1161E8:  BLX             R2
1161EA:  LDR             R0, [R5]
1161EC:  MOV             R1, R5
1161EE:  VLDR            S16, [SP,#0x20+var_18]
1161F2:  LDR             R2, [R0,#0x58]
1161F4:  MOV             R0, SP
1161F6:  BLX             R2
1161F8:  VLDR            S0, [SP,#0x20+var_20]
1161FC:  MOV             R1, R5
1161FE:  LDR             R0, [R5]
116200:  VADD.F32        S0, S16, S0
116204:  LDR             R2, [R0,#0x5C]
116206:  ADD             R0, SP, #0x20+var_18
116208:  VSTR            S0, [R4,#8]
11620C:  BLX             R2
11620E:  LDR             R0, [R5]
116210:  MOV             R1, R5
116212:  VLDR            S16, [SP,#0x20+var_14]
116216:  LDR             R2, [R0,#0x58]
116218:  MOV             R0, SP
11621A:  BLX             R2
11621C:  VLDR            S0, [SP,#0x20+var_1C]
116220:  VADD.F32        S0, S16, S0
116224:  VSTR            S0, [R4,#0xC]
116228:  ADD             SP, SP, #0x10
11622A:  VPOP            {D8}
11622E:  POP             {R4,R5,R7,PC}
