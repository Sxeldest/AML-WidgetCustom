; =========================================================
; Game Engine Function: sub_7CA98
; Address            : 0x7CA98 - 0x7CB3C
; =========================================================

7CA98:  PUSH            {R4,R6,R7,LR}
7CA9A:  ADD             R7, SP, #8
7CA9C:  VPUSH           {D8-D9}
7CAA0:  SUB             SP, SP, #0x10
7CAA2:  LDR             R1, =(off_114CA0 - 0x7CAAC)
7CAA4:  MOV             R4, R0
7CAA6:  LDR             R0, =(__stack_chk_guard_ptr - 0x7CAAE)
7CAA8:  ADD             R1, PC; off_114CA0
7CAAA:  ADD             R0, PC; __stack_chk_guard_ptr
7CAAC:  LDR             R1, [R1]; unk_116D60
7CAAE:  LDR             R0, [R0]; __stack_chk_guard
7CAB0:  LDR             R0, [R0]
7CAB2:  STR             R0, [SP,#0x28+var_1C]
7CAB4:  LDR             R0, [R4,#0x54]
7CAB6:  VLDR            S16, [R1]
7CABA:  LDR             R2, [R0]
7CABC:  LDR             R1, [R2,#8]
7CABE:  BLX             R1
7CAC0:  VMOV.F32        S18, #0.5
7CAC4:  LDR             R0, [R4,#0x54]
7CAC6:  VADD.F32        S2, S16, S16
7CACA:  ADD             R1, SP, #0x28+var_24
7CACC:  VLDR            S4, [R0,#0x14]
7CAD0:  VLDR            S6, [R0,#0x18]
7CAD4:  MOV             R0, R4
7CAD6:  VMUL.F32        S0, S16, S18
7CADA:  VADD.F32        S2, S2, S4
7CADE:  VADD.F32        S0, S0, S0
7CAE2:  VSTR            S2, [SP,#0x28+var_24]
7CAE6:  VADD.F32        S0, S0, S6
7CAEA:  VSTR            S0, [SP,#0x28+var_20]
7CAEE:  BL              sub_7C44C
7CAF2:  LDR             R0, [R4,#0x54]
7CAF4:  ADD             R1, SP, #0x28+var_24
7CAF6:  VLDR            S0, [R4,#0x14]
7CAFA:  VLDR            S2, [R4,#0x18]
7CAFE:  VLDR            S4, [R0,#0x14]
7CB02:  VLDR            S6, [R0,#0x18]
7CB06:  VSUB.F32        S0, S0, S4
7CB0A:  VSUB.F32        S2, S2, S6
7CB0E:  VMUL.F32        S0, S0, S18
7CB12:  VMUL.F32        S2, S2, S18
7CB16:  VSTR            S0, [SP,#0x28+var_24]
7CB1A:  VSTR            S2, [SP,#0x28+var_20]
7CB1E:  BL              sub_7C4A6
7CB22:  LDR             R0, [SP,#0x28+var_1C]
7CB24:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CB2A)
7CB26:  ADD             R1, PC; __stack_chk_guard_ptr
7CB28:  LDR             R1, [R1]; __stack_chk_guard
7CB2A:  LDR             R1, [R1]
7CB2C:  CMP             R1, R0
7CB2E:  ITTT EQ
7CB30:  ADDEQ           SP, SP, #0x10
7CB32:  VPOPEQ          {D8-D9}
7CB36:  POPEQ           {R4,R6,R7,PC}
7CB38:  BLX             __stack_chk_fail
