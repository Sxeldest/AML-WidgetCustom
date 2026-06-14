; =========================================================
; Game Engine Function: sub_13A8A4
; Address            : 0x13A8A4 - 0x13A8E2
; =========================================================

13A8A4:  PUSH            {R4,R6,R7,LR}
13A8A6:  ADD             R7, SP, #8
13A8A8:  SUB             SP, SP, #8
13A8AA:  MOV             R4, R0
13A8AC:  LDR             R0, [R0,#0x54]
13A8AE:  LDR             R1, [R0]
13A8B0:  LDR             R1, [R1,#8]
13A8B2:  BLX             R1
13A8B4:  LDR             R0, [R4,#0x54]
13A8B6:  VMOV.F32        S4, #0.5
13A8BA:  VLDR            S0, [R4,#0x18]
13A8BE:  VLDR            S2, [R0,#0x18]
13A8C2:  LDR             R1, =(off_234B7C - 0x13A8CC)
13A8C4:  VSUB.F32        S0, S0, S2
13A8C8:  ADD             R1, PC; off_234B7C
13A8CA:  LDR             R1, [R1]; dword_238EC8
13A8CC:  LDR             R1, [R1]
13A8CE:  VMUL.F32        S0, S0, S4
13A8D2:  STR             R1, [SP,#0x10+var_10]
13A8D4:  MOV             R1, SP
13A8D6:  VSTR            S0, [SP,#0x10+var_C]
13A8DA:  BL              sub_12BD92
13A8DE:  ADD             SP, SP, #8
13A8E0:  POP             {R4,R6,R7,PC}
