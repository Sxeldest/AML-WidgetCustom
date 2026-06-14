; =========================================================
; Game Engine Function: _Z19ClassSerializeErrorii
; Address            : 0x483CE0 - 0x483D14
; =========================================================

483CE0:  PUSH            {R7,LR}
483CE2:  MOV             R7, SP
483CE4:  SUB             SP, SP, #0x88
483CE6:  MOV             R3, R0
483CE8:  LDR             R0, =(__stack_chk_guard_ptr - 0x483CF2)
483CEA:  MOV             R2, R1
483CEC:  LDR             R1, =(aErrorClassDIsN - 0x483CF4); "ERROR - class %d is not type %d seriali"...
483CEE:  ADD             R0, PC; __stack_chk_guard_ptr
483CF0:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
483CF2:  LDR             R0, [R0]; __stack_chk_guard
483CF4:  LDR             R0, [R0]
483CF6:  STR             R0, [SP,#0x90+var_C]
483CF8:  ADD             R0, SP, #0x90+var_8C
483CFA:  BL              sub_5E6BC0
483CFE:  LDR             R0, =(__stack_chk_guard_ptr - 0x483D06)
483D00:  LDR             R1, [SP,#0x90+var_C]
483D02:  ADD             R0, PC; __stack_chk_guard_ptr
483D04:  LDR             R0, [R0]; __stack_chk_guard
483D06:  LDR             R0, [R0]
483D08:  SUBS            R0, R0, R1
483D0A:  ITT EQ
483D0C:  ADDEQ           SP, SP, #0x88
483D0E:  POPEQ           {R7,PC}
483D10:  BLX             __stack_chk_fail
