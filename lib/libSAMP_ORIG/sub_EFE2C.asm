; =========================================================
; Game Engine Function: sub_EFE2C
; Address            : 0xEFE2C - 0xEFE7C
; =========================================================

EFE2C:  PUSH            {R4-R7,LR}
EFE2E:  ADD             R7, SP, #0xC
EFE30:  PUSH.W          {R11}
EFE34:  SUB             SP, SP, #8
EFE36:  MOV             R6, R0
EFE38:  LDR             R0, =(__stack_chk_guard_ptr - 0xEFE42)
EFE3A:  MOV             R4, R2
EFE3C:  MOV             R5, R1
EFE3E:  ADD             R0, PC; __stack_chk_guard_ptr
EFE40:  LDR             R0, [R0]; __stack_chk_guard
EFE42:  LDR             R0, [R0]
EFE44:  STR             R0, [SP,#0x18+var_14]
EFE46:  MOV             R0, R3
EFE48:  BLX             uselocale
EFE4C:  STR             R0, [SP,#0x18+var_18]
EFE4E:  MOV             R0, R6; s
EFE50:  MOV             R1, R5; wc
EFE52:  MOV             R2, R4; ps
EFE54:  BLX             wcrtomb
EFE58:  MOV             R4, R0
EFE5A:  MOV             R0, SP
EFE5C:  BL              sub_F61EC
EFE60:  LDR             R0, [SP,#0x18+var_14]
EFE62:  LDR             R1, =(__stack_chk_guard_ptr - 0xEFE68)
EFE64:  ADD             R1, PC; __stack_chk_guard_ptr
EFE66:  LDR             R1, [R1]; __stack_chk_guard
EFE68:  LDR             R1, [R1]
EFE6A:  CMP             R1, R0
EFE6C:  ITTTT EQ
EFE6E:  MOVEQ           R0, R4
EFE70:  ADDEQ           SP, SP, #8
EFE72:  POPEQ.W         {R11}
EFE76:  POPEQ           {R4-R7,PC}
EFE78:  BLX             __stack_chk_fail
