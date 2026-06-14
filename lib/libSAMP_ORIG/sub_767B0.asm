; =========================================================
; Game Engine Function: sub_767B0
; Address            : 0x767B0 - 0x767E6
; =========================================================

767B0:  PUSH            {R7,LR}
767B2:  MOV             R7, SP
767B4:  SUB             SP, SP, #8
767B6:  LDR             R1, =(__stack_chk_guard_ptr - 0x767C2)
767B8:  MOV             R2, R3; format
767BA:  ADD.W           R3, R7, #8; arg
767BE:  ADD             R1, PC; __stack_chk_guard_ptr
767C0:  LDR             R1, [R1]; __stack_chk_guard
767C2:  LDR             R1, [R1]
767C4:  STR             R1, [SP,#0x10+var_C]
767C6:  MOV.W           R1, #0x100; maxlen
767CA:  STR             R3, [SP,#0x10+var_10]
767CC:  BLX             vsnprintf
767D0:  LDR             R0, [SP,#0x10+var_C]
767D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x767D8)
767D4:  ADD             R1, PC; __stack_chk_guard_ptr
767D6:  LDR             R1, [R1]; __stack_chk_guard
767D8:  LDR             R1, [R1]
767DA:  CMP             R1, R0
767DC:  ITT EQ
767DE:  ADDEQ           SP, SP, #8
767E0:  POPEQ           {R7,PC}
767E2:  BLX             __stack_chk_fail
