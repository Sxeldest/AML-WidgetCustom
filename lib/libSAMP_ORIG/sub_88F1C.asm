; =========================================================
; Game Engine Function: sub_88F1C
; Address            : 0x88F1C - 0x88F58
; =========================================================

88F1C:  SUB             SP, SP, #8
88F1E:  PUSH            {R7,LR}
88F20:  MOV             R7, SP
88F22:  SUB             SP, SP, #8
88F24:  STRD.W          R2, R3, [R7,#8]
88F28:  LDR             R2, =(__stack_chk_guard_ptr - 0x88F2E)
88F2A:  ADD             R2, PC; __stack_chk_guard_ptr
88F2C:  LDR             R2, [R2]; __stack_chk_guard
88F2E:  LDR             R2, [R2]
88F30:  STR             R2, [SP,#0x18+var_14]
88F32:  ADD.W           R2, R7, #8; arg
88F36:  STR             R2, [SP,#0x18+var_18]
88F38:  BL              sub_88F60
88F3C:  LDR             R0, [SP,#0x18+var_14]
88F3E:  LDR             R1, =(__stack_chk_guard_ptr - 0x88F44)
88F40:  ADD             R1, PC; __stack_chk_guard_ptr
88F42:  LDR             R1, [R1]; __stack_chk_guard
88F44:  LDR             R1, [R1]
88F46:  CMP             R1, R0
88F48:  ITTTT EQ
88F4A:  ADDEQ           SP, SP, #8
88F4C:  POPEQ.W         {R7,LR}
88F50:  ADDEQ           SP, SP, #8
88F52:  BXEQ            LR
88F54:  BLX             __stack_chk_fail
