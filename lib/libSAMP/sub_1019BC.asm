; =========================================================
; Game Engine Function: sub_1019BC
; Address            : 0x1019BC - 0x101A16
; =========================================================

1019BC:  PUSH            {R4,R5,R7,LR}
1019BE:  ADD             R7, SP, #8
1019C0:  SUB             SP, SP, #0x10
1019C2:  MOV             R4, R0
1019C4:  LDR             R0, [R0,#4]
1019C6:  CBZ             R0, loc_101A12
1019C8:  LDR             R0, [R4,#8]
1019CA:  MOV             R5, R1
1019CC:  BL              sub_108324
1019D0:  CBZ             R0, loc_101A12
1019D2:  VLDR            S0, [R5]
1019D6:  VLDR            S2, [R5,#4]
1019DA:  VCVT.F64.F32    D16, S0
1019DE:  LDR             R1, [R4,#8]
1019E0:  VMOV            R2, R3, D16
1019E4:  VLDR            S4, [R5,#8]
1019E8:  VCVT.F64.F32    D17, S2
1019EC:  LDR             R0, =(unk_B341E - 0x1019F2)
1019EE:  ADD             R0, PC; unk_B341E
1019F0:  VCVT.F64.F32    D16, S4
1019F4:  VSTR            D17, [SP,#0x18+var_18]
1019F8:  VSTR            D16, [SP,#0x18+var_10]
1019FC:  BL              sub_107188
101A00:  LDR             R0, [R5]
101A02:  STR.W           R0, [R4,#0x2B4]
101A06:  LDR             R0, [R5,#4]
101A08:  STR.W           R0, [R4,#0x2B8]
101A0C:  LDR             R0, [R5,#8]
101A0E:  STR.W           R0, [R4,#0x2BC]
101A12:  ADD             SP, SP, #0x10
101A14:  POP             {R4,R5,R7,PC}
