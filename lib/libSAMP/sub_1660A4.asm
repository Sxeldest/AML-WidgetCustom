; =========================================================
; Game Engine Function: sub_1660A4
; Address            : 0x1660A4 - 0x16614C
; =========================================================

1660A4:  PUSH            {R4-R7,LR}
1660A6:  ADD             R7, SP, #0xC
1660A8:  PUSH.W          {R11}
1660AC:  SUB             SP, SP, #0x18; float
1660AE:  MOV             R6, R0
1660B0:  LDR             R0, =(dword_381B58 - 0x1660BA)
1660B2:  MOVW            R5, #0x18C4
1660B6:  ADD             R0, PC; dword_381B58
1660B8:  LDR             R0, [R0]
1660BA:  ADD             R0, R5
1660BC:  CBZ             R3, loc_1660E6
1660BE:  CMP             R2, #0
1660C0:  IT EQ
1660C2:  MOVEQ.W         R2, #0xFFFFFFFF
1660C6:  CMP             R2, R1
1660C8:  BLS             loc_166138
1660CA:  SUBS            R4, R2, R1
1660CC:  MOV             R3, R1
1660CE:  LDRB            R5, [R3]
1660D0:  CMP             R5, #0x23 ; '#'
1660D2:  BEQ             loc_1660D8
1660D4:  CBNZ            R5, loc_1660DE
1660D6:  B               loc_1660E8
1660D8:  LDRB            R5, [R3,#1]
1660DA:  CMP             R5, #0x23 ; '#'
1660DC:  BEQ             loc_1660E8
1660DE:  SUBS            R4, #1
1660E0:  ADD.W           R3, R3, #1
1660E4:  BNE             loc_1660CE
1660E6:  MOV             R3, R2
1660E8:  VLDR            S0, [R0,#4]
1660EC:  CMP             R3, R1
1660EE:  BEQ             loc_16613C
1660F0:  VMOV            R2, S0; int
1660F4:  LDR             R4, [R0]
1660F6:  MOVS            R0, #0
1660F8:  STRD.W          R1, R3, [SP,#0x28+var_24]; int
1660FC:  MOVW            R3, #0xFFFF
166100:  VLDR            S2, [R7,#arg_0]
166104:  STR             R0, [SP,#0x28+var_1C]; int
166106:  ADD             R0, SP, #0x28+var_18; int
166108:  MOVT            R3, #0x7F7F; int
16610C:  MOV             R1, R4; int
16610E:  VSTR            S2, [SP,#0x28+var_28]
166112:  BL              sub_178B18
166116:  VLDR            S0, =0.95
16611A:  VLDR            S2, [SP,#0x28+var_18]
16611E:  LDR             R0, [SP,#0x28+var_14]
166120:  VADD.F32        S0, S2, S0
166124:  VCVT.S32.F32    S0, S0
166128:  VCVT.F32.S32    S0, S0
16612C:  VSTR            S0, [SP,#0x28+var_18]
166130:  LDR             R1, [SP,#0x28+var_18]
166132:  STRD.W          R1, R0, [R6]
166136:  B               loc_166144
166138:  VLDR            S0, [R0,#4]
16613C:  MOVS            R0, #0
16613E:  VSTR            S0, [R6,#4]
166142:  STR             R0, [R6]
166144:  ADD             SP, SP, #0x18
166146:  POP.W           {R11}
16614A:  POP             {R4-R7,PC}
