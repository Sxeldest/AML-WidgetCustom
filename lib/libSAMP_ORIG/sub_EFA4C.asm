; =========================================================
; Game Engine Function: sub_EFA4C
; Address            : 0xEFA4C - 0xEFA88
; =========================================================

EFA4C:  PUSH            {R2-R4,R6,R7,LR}
EFA4E:  ADD             R7, SP, #0x10
EFA50:  MOV             R4, R0
EFA52:  LDR             R0, =(__stack_chk_guard_ptr - 0xEFA58)
EFA54:  ADD             R0, PC; __stack_chk_guard_ptr
EFA56:  LDR             R0, [R0]; __stack_chk_guard
EFA58:  LDR             R0, [R0]
EFA5A:  STR             R0, [SP,#0x10+var_C]
EFA5C:  MOV             R0, R1
EFA5E:  BLX             uselocale
EFA62:  STR             R0, [SP,#0x10+var_10]
EFA64:  MOV             R0, R4; c
EFA66:  BLX             btowc
EFA6A:  MOV             R4, R0
EFA6C:  MOV             R0, SP
EFA6E:  BL              sub_F61EC
EFA72:  LDR             R0, [SP,#0x10+var_C]
EFA74:  LDR             R1, =(__stack_chk_guard_ptr - 0xEFA7A)
EFA76:  ADD             R1, PC; __stack_chk_guard_ptr
EFA78:  LDR             R1, [R1]; __stack_chk_guard
EFA7A:  LDR             R1, [R1]
EFA7C:  CMP             R1, R0
EFA7E:  ITT EQ
EFA80:  MOVEQ           R0, R4
EFA82:  POPEQ           {R2-R4,R6,R7,PC}
EFA84:  BLX             __stack_chk_fail
