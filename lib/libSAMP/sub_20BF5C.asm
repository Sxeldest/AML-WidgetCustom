; =========================================================
; Game Engine Function: sub_20BF5C
; Address            : 0x20BF5C - 0x20BFB0
; =========================================================

20BF5C:  PUSH            {R4-R7,LR}
20BF5E:  ADD             R7, SP, #0xC
20BF60:  PUSH.W          {R8}
20BF64:  SUB             SP, SP, #8
20BF66:  MOV             R4, R0
20BF68:  LDR             R0, =(__stack_chk_guard_ptr - 0x20BF72)
20BF6A:  MOV             R8, R3
20BF6C:  MOV             R5, R2
20BF6E:  ADD             R0, PC; __stack_chk_guard_ptr
20BF70:  MOV             R6, R1
20BF72:  LDR             R0, [R0]; __stack_chk_guard
20BF74:  LDR             R0, [R0]
20BF76:  STR             R0, [SP,#0x18+var_14]
20BF78:  LDR             R0, [R7,#arg_0]
20BF7A:  BL              sub_21FCA0
20BF7E:  STR             R0, [SP,#0x18+var_18]
20BF80:  MOV             R0, R4
20BF82:  MOV             R1, R6
20BF84:  MOV             R2, R5
20BF86:  MOV             R3, R8
20BF88:  BL              sub_21FF8C
20BF8C:  MOV             R4, R0
20BF8E:  MOV             R0, SP
20BF90:  BL              sub_20E0DC
20BF94:  LDR             R0, [SP,#0x18+var_14]
20BF96:  LDR             R1, =(__stack_chk_guard_ptr - 0x20BF9C)
20BF98:  ADD             R1, PC; __stack_chk_guard_ptr
20BF9A:  LDR             R1, [R1]; __stack_chk_guard
20BF9C:  LDR             R1, [R1]
20BF9E:  CMP             R1, R0
20BFA0:  ITTTT EQ
20BFA2:  MOVEQ           R0, R4
20BFA4:  ADDEQ           SP, SP, #8
20BFA6:  POPEQ.W         {R8}
20BFAA:  POPEQ           {R4-R7,PC}
20BFAC:  BLX             __stack_chk_fail
