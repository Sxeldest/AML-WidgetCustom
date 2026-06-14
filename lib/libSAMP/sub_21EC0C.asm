; =========================================================
; Game Engine Function: sub_21EC0C
; Address            : 0x21EC0C - 0x21EC4C
; =========================================================

21EC0C:  PUSH            {R2-R4,R6,R7,LR}
21EC0E:  ADD             R7, SP, #0x10
21EC10:  MOV             R4, R0
21EC12:  LDR             R0, =(__stack_chk_guard_ptr - 0x21EC1A)
21EC14:  CMP             R4, #0
21EC16:  ADD             R0, PC; __stack_chk_guard_ptr
21EC18:  LDR             R0, [R0]; __stack_chk_guard
21EC1A:  LDR             R0, [R0]
21EC1C:  STR             R0, [SP,#0x10+var_C]
21EC1E:  IT EQ
21EC20:  MOVEQ           R4, #1
21EC22:  MOV             R0, SP; memptr
21EC24:  MOVS            R1, #0x10; alignment
21EC26:  MOV             R2, R4; size
21EC28:  BLX             posix_memalign
21EC2C:  CBZ             R0, loc_21EC36
21EC2E:  MOV             R0, R4
21EC30:  BL              sub_21EC54
21EC34:  B               loc_21EC38
21EC36:  LDR             R0, [SP,#0x10+var_10]
21EC38:  LDR             R1, [SP,#0x10+var_C]
21EC3A:  LDR             R2, =(__stack_chk_guard_ptr - 0x21EC40)
21EC3C:  ADD             R2, PC; __stack_chk_guard_ptr
21EC3E:  LDR             R2, [R2]; __stack_chk_guard
21EC40:  LDR             R2, [R2]
21EC42:  CMP             R2, R1
21EC44:  IT EQ
21EC46:  POPEQ           {R2-R4,R6,R7,PC}
21EC48:  BLX             __stack_chk_fail
