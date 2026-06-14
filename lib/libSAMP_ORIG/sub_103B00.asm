; =========================================================
; Game Engine Function: sub_103B00
; Address            : 0x103B00 - 0x103B4E
; =========================================================

103B00:  PUSH            {R0-R5,R7,LR}
103B02:  ADD             R7, SP, #0x18
103B04:  MOV             R4, R0
103B06:  LDR             R0, =(__stack_chk_guard_ptr - 0x103B0E)
103B08:  MOVS            R1, #0x28 ; '('
103B0A:  ADD             R0, PC; __stack_chk_guard_ptr
103B0C:  LDR             R0, [R0]; __stack_chk_guard
103B0E:  LDR             R0, [R0]
103B10:  STR             R0, [SP,#0x18+var_C]
103B12:  LDRD.W          R0, R5, [R4]
103B16:  BL              sub_FE09A
103B1A:  LDR             R0, =0x1010122
103B1C:  STR             R0, [SP,#0x18+var_14]
103B1E:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x103B26); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
103B20:  LDR             R1, [R4]
103B22:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
103B24:  ADDS            R0, #8
103B26:  STR             R0, [SP,#0x18+var_18]
103B28:  LDR             R0, [R5,#8]
103B2A:  STR             R0, [SP,#0x18+var_10]
103B2C:  MOV             R0, SP
103B2E:  BL              sub_FE074
103B32:  LDR             R0, [R4]
103B34:  MOVS            R1, #0x29 ; ')'
103B36:  BL              sub_FE09A
103B3A:  LDR             R0, [SP,#0x18+var_C]
103B3C:  LDR             R1, =(__stack_chk_guard_ptr - 0x103B42)
103B3E:  ADD             R1, PC; __stack_chk_guard_ptr
103B40:  LDR             R1, [R1]; __stack_chk_guard
103B42:  LDR             R1, [R1]
103B44:  CMP             R1, R0
103B46:  IT EQ
103B48:  POPEQ           {R0-R5,R7,PC}
103B4A:  BLX             __stack_chk_fail
