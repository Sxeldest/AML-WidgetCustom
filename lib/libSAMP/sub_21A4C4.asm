; =========================================================
; Game Engine Function: sub_21A4C4
; Address            : 0x21A4C4 - 0x21A4FE
; =========================================================

21A4C4:  PUSH            {R0-R4,R6,R7,LR}
21A4C6:  ADD             R7, SP, #0x18
21A4C8:  MOV             R4, R1
21A4CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A4D0)
21A4CC:  ADD             R1, PC; __stack_chk_guard_ptr
21A4CE:  LDR             R1, [R1]; __stack_chk_guard
21A4D0:  LDR             R1, [R1]
21A4D2:  STR             R1, [SP,#0x18+var_C]
21A4D4:  ADD.W           R1, R7, #8
21A4D8:  STR             R1, [SP,#0x18+var_10]
21A4DA:  STRD.W          R3, R1, [SP,#0x18+var_18]
21A4DE:  MOV             R1, R2
21A4E0:  MOVS            R2, #0
21A4E2:  MOV             R3, R4
21A4E4:  BLX             __vsnprintf_chk
21A4E8:  LDR             R1, [SP,#0x18+var_C]
21A4EA:  LDR             R2, =(__stack_chk_guard_ptr - 0x21A4F0)
21A4EC:  ADD             R2, PC; __stack_chk_guard_ptr
21A4EE:  LDR             R2, [R2]; __stack_chk_guard
21A4F0:  LDR             R2, [R2]
21A4F2:  CMP             R2, R1
21A4F4:  ITT EQ
21A4F6:  ADDEQ           SP, SP, #0x10
21A4F8:  POPEQ           {R4,R6,R7,PC}
21A4FA:  BLX             __stack_chk_fail
