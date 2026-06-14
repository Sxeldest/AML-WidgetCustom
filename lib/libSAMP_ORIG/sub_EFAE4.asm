; =========================================================
; Game Engine Function: sub_EFAE4
; Address            : 0xEFAE4 - 0xEFB20
; =========================================================

EFAE4:  PUSH            {R2-R4,R6,R7,LR}
EFAE6:  ADD             R7, SP, #0x10
EFAE8:  MOV             R4, R0
EFAEA:  LDR             R0, =(__stack_chk_guard_ptr - 0xEFAF0)
EFAEC:  ADD             R0, PC; __stack_chk_guard_ptr
EFAEE:  LDR             R0, [R0]; __stack_chk_guard
EFAF0:  LDR             R0, [R0]
EFAF2:  STR             R0, [SP,#0x10+var_C]
EFAF4:  MOV             R0, R1
EFAF6:  BLX             uselocale
EFAFA:  STR             R0, [SP,#0x10+var_10]
EFAFC:  MOV             R0, R4; c
EFAFE:  BLX             wctob
EFB02:  MOV             R4, R0
EFB04:  MOV             R0, SP
EFB06:  BL              sub_F61EC
EFB0A:  LDR             R0, [SP,#0x10+var_C]
EFB0C:  LDR             R1, =(__stack_chk_guard_ptr - 0xEFB12)
EFB0E:  ADD             R1, PC; __stack_chk_guard_ptr
EFB10:  LDR             R1, [R1]; __stack_chk_guard
EFB12:  LDR             R1, [R1]
EFB14:  CMP             R1, R0
EFB16:  ITT EQ
EFB18:  MOVEQ           R0, R4
EFB1A:  POPEQ           {R2-R4,R6,R7,PC}
EFB1C:  BLX             __stack_chk_fail
