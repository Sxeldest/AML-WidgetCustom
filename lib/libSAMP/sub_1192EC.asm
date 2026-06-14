; =========================================================
; Game Engine Function: sub_1192EC
; Address            : 0x1192EC - 0x11933C
; =========================================================

1192EC:  PUSH            {R4,R5,R7,LR}
1192EE:  ADD             R7, SP, #8
1192F0:  MOV             R5, R1
1192F2:  MOV             R4, R0
1192F4:  LDR.W           R0, [R1,#0x10]!
1192F8:  ADDS            R2, R1, #4
1192FA:  LDR             R3, [R0,#8]
1192FC:  MOV             R0, R4
1192FE:  BLX             R3
119300:  VLDR            S0, [R4]
119304:  VCMP.F32        S0, #0.0
119308:  VMRS            APSR_nzcv, FPSCR
11930C:  ITTT EQ
11930E:  VLDREQ          S0, [R4,#4]
119312:  VCMPEQ.F32      S0, #0.0
119316:  VMRSEQ          APSR_nzcv, FPSCR
11931A:  BEQ             loc_11931E
11931C:  POP             {R4,R5,R7,PC}
11931E:  LDR             R0, [R5]
119320:  LDR             R1, [R0,#4]
119322:  MOV             R0, R5
119324:  BLX             R1
119326:  VLDR            S0, =512.0
11932A:  VMOV            S2, R0
11932E:  VMUL.F32        S0, S2, S0
119332:  VSTR            S0, [R4]
119336:  VSTR            S0, [R4,#4]
11933A:  POP             {R4,R5,R7,PC}
