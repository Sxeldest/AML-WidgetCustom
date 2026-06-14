; =========================================================
; Game Engine Function: sub_F72BC
; Address            : 0xF72BC - 0xF7302
; =========================================================

F72BC:  PUSH            {R4-R7,LR}
F72BE:  ADD             R7, SP, #0xC
F72C0:  PUSH.W          {R11}
F72C4:  SUB             SP, SP, #8
F72C6:  STR             R2, [SP,#0x18+var_18]
F72C8:  MOV             R5, R0
F72CA:  LDR             R0, =(__stack_chk_guard_ptr - 0xF72D4)
F72CC:  MOV             R4, R1
F72CE:  MOV             R6, SP
F72D0:  ADD             R0, PC; __stack_chk_guard_ptr
F72D2:  LDR             R0, [R0]; __stack_chk_guard
F72D4:  LDR             R0, [R0]
F72D6:  STR             R0, [SP,#0x18+var_14]
F72D8:  CMP             R5, R4
F72DA:  BEQ             loc_F72E6
F72DC:  LDM             R5!, {R1}
F72DE:  MOV             R0, R6
F72E0:  BL              sub_E2658
F72E4:  B               loc_F72D8
F72E6:  LDR             R0, [SP,#0x18+var_18]
F72E8:  LDR             R1, [SP,#0x18+var_14]
F72EA:  LDR             R2, =(__stack_chk_guard_ptr - 0xF72F0)
F72EC:  ADD             R2, PC; __stack_chk_guard_ptr
F72EE:  LDR             R2, [R2]; __stack_chk_guard
F72F0:  LDR             R2, [R2]
F72F2:  CMP             R2, R1
F72F4:  ITTT EQ
F72F6:  ADDEQ           SP, SP, #8
F72F8:  POPEQ.W         {R11}
F72FC:  POPEQ           {R4-R7,PC}
F72FE:  BLX             __stack_chk_fail
