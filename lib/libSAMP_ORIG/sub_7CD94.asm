; =========================================================
; Game Engine Function: sub_7CD94
; Address            : 0x7CD94 - 0x7CE38
; =========================================================

7CD94:  PUSH            {R4,R6,R7,LR}
7CD96:  ADD             R7, SP, #8
7CD98:  VPUSH           {D8-D9}
7CD9C:  SUB             SP, SP, #0x10
7CD9E:  LDR             R1, =(off_114CA0 - 0x7CDA8)
7CDA0:  MOV             R4, R0
7CDA2:  LDR             R0, =(__stack_chk_guard_ptr - 0x7CDAA)
7CDA4:  ADD             R1, PC; off_114CA0
7CDA6:  ADD             R0, PC; __stack_chk_guard_ptr
7CDA8:  LDR             R1, [R1]; unk_116D60
7CDAA:  LDR             R0, [R0]; __stack_chk_guard
7CDAC:  LDR             R0, [R0]
7CDAE:  STR             R0, [SP,#0x28+var_1C]
7CDB0:  LDR             R0, [R4,#0x54]
7CDB2:  VLDR            S16, [R1]
7CDB6:  LDR             R2, [R0]
7CDB8:  LDR             R1, [R2,#8]
7CDBA:  BLX             R1
7CDBC:  VMOV.F32        S18, #0.5
7CDC0:  LDR             R0, [R4,#0x54]
7CDC2:  VADD.F32        S2, S16, S16
7CDC6:  ADD             R1, SP, #0x28+var_24
7CDC8:  VLDR            S4, [R0,#0x14]
7CDCC:  VLDR            S6, [R0,#0x18]
7CDD0:  MOV             R0, R4
7CDD2:  VMUL.F32        S0, S16, S18
7CDD6:  VADD.F32        S2, S2, S4
7CDDA:  VADD.F32        S0, S0, S0
7CDDE:  VSTR            S2, [SP,#0x28+var_24]
7CDE2:  VADD.F32        S0, S0, S6
7CDE6:  VSTR            S0, [SP,#0x28+var_20]
7CDEA:  BL              sub_7C44C
7CDEE:  LDR             R0, [R4,#0x54]
7CDF0:  ADD             R1, SP, #0x28+var_24
7CDF2:  VLDR            S0, [R4,#0x14]
7CDF6:  VLDR            S2, [R4,#0x18]
7CDFA:  VLDR            S4, [R0,#0x14]
7CDFE:  VLDR            S6, [R0,#0x18]
7CE02:  VSUB.F32        S0, S0, S4
7CE06:  VSUB.F32        S2, S2, S6
7CE0A:  VMUL.F32        S0, S0, S18
7CE0E:  VMUL.F32        S2, S2, S18
7CE12:  VSTR            S0, [SP,#0x28+var_24]
7CE16:  VSTR            S2, [SP,#0x28+var_20]
7CE1A:  BL              sub_7C4A6
7CE1E:  LDR             R0, [SP,#0x28+var_1C]
7CE20:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CE26)
7CE22:  ADD             R1, PC; __stack_chk_guard_ptr
7CE24:  LDR             R1, [R1]; __stack_chk_guard
7CE26:  LDR             R1, [R1]
7CE28:  CMP             R1, R0
7CE2A:  ITTT EQ
7CE2C:  ADDEQ           SP, SP, #0x10
7CE2E:  VPOPEQ          {D8-D9}
7CE32:  POPEQ           {R4,R6,R7,PC}
7CE34:  BLX             __stack_chk_fail
