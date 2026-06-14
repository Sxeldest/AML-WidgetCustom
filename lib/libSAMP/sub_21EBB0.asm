; =========================================================
; Game Engine Function: sub_21EBB0
; Address            : 0x21EBB0 - 0x21EBE4
; =========================================================

21EBB0:  PUSH            {R3-R7,LR}
21EBB2:  ADD             R7, SP, #0x10
21EBB4:  STR             R2, [SP,#0x10+var_8]
21EBB6:  MOV             R3, R1
21EBB8:  LDR             R1, =(__stack_chk_guard_ptr - 0x21EBC2)
21EBBA:  MOV             R2, R3
21EBBC:  MOVS            R3, #0
21EBBE:  ADD             R1, PC; __stack_chk_guard_ptr
21EBC0:  LDR             R1, [R1]; __stack_chk_guard
21EBC2:  LDR             R1, [R1]
21EBC4:  STR             R1, [SP,#0x10+var_4]
21EBC6:  ADD             R1, SP, #0x10+var_8
21EBC8:  STR             R1, [SP,#0x10+var_10]
21EBCA:  MOVS            R1, #0
21EBCC:  BLX             sub_221E78
21EBD0:  LDR             R0, [SP,#0x10+var_4]
21EBD2:  LDR             R1, =(__stack_chk_guard_ptr - 0x21EBD8)
21EBD4:  ADD             R1, PC; __stack_chk_guard_ptr
21EBD6:  LDR             R1, [R1]; __stack_chk_guard
21EBD8:  LDR             R1, [R1]
21EBDA:  CMP             R1, R0
21EBDC:  IT EQ
21EBDE:  POPEQ           {R0-R3,R7,PC}
21EBE0:  BLX             __stack_chk_fail
