; =========================================================
; Game Engine Function: sub_21AF58
; Address            : 0x21AF58 - 0x21AFA6
; =========================================================

21AF58:  PUSH            {R0-R5,R7,LR}
21AF5A:  ADD             R7, SP, #0x18
21AF5C:  MOV             R4, R0
21AF5E:  LDR             R0, =(__stack_chk_guard_ptr - 0x21AF66)
21AF60:  MOVS            R1, #0x28 ; '('
21AF62:  ADD             R0, PC; __stack_chk_guard_ptr
21AF64:  LDR             R0, [R0]; __stack_chk_guard
21AF66:  LDR             R0, [R0]
21AF68:  STR             R0, [SP,#0x18+var_C]
21AF6A:  LDRD.W          R0, R5, [R4]
21AF6E:  BL              sub_2154F2
21AF72:  LDR             R0, =0x1010122
21AF74:  STR             R0, [SP,#0x18+var_14]
21AF76:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x21AF7E); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
21AF78:  LDR             R1, [R4]
21AF7A:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
21AF7C:  ADDS            R0, #8
21AF7E:  STR             R0, [SP,#0x18+var_18]
21AF80:  LDR             R0, [R5,#8]
21AF82:  STR             R0, [SP,#0x18+var_10]
21AF84:  MOV             R0, SP
21AF86:  BL              sub_2154CC
21AF8A:  LDR             R0, [R4]
21AF8C:  MOVS            R1, #0x29 ; ')'
21AF8E:  BL              sub_2154F2
21AF92:  LDR             R0, [SP,#0x18+var_C]
21AF94:  LDR             R1, =(__stack_chk_guard_ptr - 0x21AF9A)
21AF96:  ADD             R1, PC; __stack_chk_guard_ptr
21AF98:  LDR             R1, [R1]; __stack_chk_guard
21AF9A:  LDR             R1, [R1]
21AF9C:  CMP             R1, R0
21AF9E:  IT EQ
21AFA0:  POPEQ           {R0-R5,R7,PC}
21AFA2:  BLX             __stack_chk_fail
