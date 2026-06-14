; =========================================================
; Game Engine Function: sub_137568
; Address            : 0x137568 - 0x1375CC
; =========================================================

137568:  PUSH            {R4,R5,R7,LR}
13756A:  ADD             R7, SP, #8
13756C:  SUB             SP, SP, #0x20
13756E:  VLDR            S0, [R0,#0x14]
137572:  MOV             R5, R0
137574:  VLDR            S4, [R0,#0x2C]
137578:  MOV             R4, R1
13757A:  VLDR            S2, [R0,#0x18]
13757E:  MOVS            R1, #1
137580:  VLDR            S6, [R0,#0x30]
137584:  VADD.F32        S0, S4, S0
137588:  ADR             R0, dword_1375D0
13758A:  ADD             R3, SP, #0x28+var_20; int
13758C:  VADD.F32        S2, S6, S2
137590:  VLD1.64         {D16-D17}, [R0]
137594:  MOV.W           R0, #0x3F800000
137598:  ADD             R2, SP, #0x28+var_10; int
13759A:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
13759E:  ADD.W           R1, R5, #0x2C ; ','; int
1375A2:  MOV             R0, R4; int
1375A4:  VST1.64         {D16-D17}, [R3]
1375A8:  VSTR            S0, [SP,#0x28+var_10]
1375AC:  VSTR            S2, [SP,#0x28+var_C]
1375B0:  BL              sub_12AB98
1375B4:  LDR             R0, [R5,#0x54]
1375B6:  LDR             R1, [R0]
1375B8:  LDR             R2, [R1,#4]
1375BA:  MOV             R1, R4
1375BC:  BLX             R2
1375BE:  LDR             R0, [R5,#0x58]
1375C0:  LDR             R1, [R0]
1375C2:  LDR             R2, [R1,#4]
1375C4:  MOV             R1, R4
1375C6:  BLX             R2
1375C8:  ADD             SP, SP, #0x20 ; ' '
1375CA:  POP             {R4,R5,R7,PC}
