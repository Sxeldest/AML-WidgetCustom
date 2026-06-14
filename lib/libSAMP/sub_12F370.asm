; =========================================================
; Game Engine Function: sub_12F370
; Address            : 0x12F370 - 0x12F3CC
; =========================================================

12F370:  PUSH            {R4,R5,R7,LR}
12F372:  ADD             R7, SP, #8
12F374:  SUB             SP, SP, #0x20
12F376:  MOV             R5, R0
12F378:  VLDR            S0, [R0,#0x14]
12F37C:  VLDR            S4, [R0,#0x2C]
12F380:  MOV             R4, R1
12F382:  VLDR            S2, [R0,#0x18]
12F386:  MOVS            R1, #1
12F388:  VLDR            S6, [R0,#0x30]
12F38C:  VADD.F32        S0, S4, S0
12F390:  LDR             R0, =(off_234BF0 - 0x12F39E)
12F392:  ADD             R3, SP, #0x28+var_20; int
12F394:  VADD.F32        S2, S6, S2
12F398:  ADD             R2, SP, #0x28+var_10; int
12F39A:  ADD             R0, PC; off_234BF0
12F39C:  LDR             R0, [R0]; unk_238FF8
12F39E:  VLD1.32         {D16-D17}, [R0]
12F3A2:  MOV.W           R0, #0x3F800000
12F3A6:  STRD.W          R1, R0, [SP,#0x28+var_28]; int
12F3AA:  ADD.W           R1, R5, #0x2C ; ','; int
12F3AE:  MOV             R0, R4; int
12F3B0:  VSTR            S2, [SP,#0x28+var_C]
12F3B4:  VSTR            S0, [SP,#0x28+var_10]
12F3B8:  VST1.64         {D16-D17}, [R3]
12F3BC:  BL              sub_12AB98
12F3C0:  MOV             R0, R5
12F3C2:  MOV             R1, R4
12F3C4:  BL              sub_12C0B6
12F3C8:  ADD             SP, SP, #0x20 ; ' '
12F3CA:  POP             {R4,R5,R7,PC}
