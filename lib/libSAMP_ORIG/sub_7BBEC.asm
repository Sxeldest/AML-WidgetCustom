; =========================================================
; Game Engine Function: sub_7BBEC
; Address            : 0x7BBEC - 0x7BC22
; =========================================================

7BBEC:  PUSH            {R7,LR}
7BBEE:  MOV             R7, SP
7BBF0:  SUB             SP, SP, #8
7BBF2:  LDR             R1, =(__stack_chk_guard_ptr - 0x7BBFE)
7BBF4:  MOV             R2, R3; format
7BBF6:  ADD.W           R3, R7, #8; arg
7BBFA:  ADD             R1, PC; __stack_chk_guard_ptr
7BBFC:  LDR             R1, [R1]; __stack_chk_guard
7BBFE:  LDR             R1, [R1]
7BC00:  STR             R1, [SP,#0x10+var_C]
7BC02:  MOV.W           R1, #0x100; maxlen
7BC06:  STR             R3, [SP,#0x10+var_10]
7BC08:  BLX             vsnprintf
7BC0C:  LDR             R0, [SP,#0x10+var_C]
7BC0E:  LDR             R1, =(__stack_chk_guard_ptr - 0x7BC14)
7BC10:  ADD             R1, PC; __stack_chk_guard_ptr
7BC12:  LDR             R1, [R1]; __stack_chk_guard
7BC14:  LDR             R1, [R1]
7BC16:  CMP             R1, R0
7BC18:  ITT EQ
7BC1A:  ADDEQ           SP, SP, #8
7BC1C:  POPEQ           {R7,PC}
7BC1E:  BLX             __stack_chk_fail
