; =========================================================
; Game Engine Function: sub_20F0BC
; Address            : 0x20F0BC - 0x20F104
; =========================================================

20F0BC:  PUSH            {R4-R7,LR}
20F0BE:  ADD             R7, SP, #0xC
20F0C0:  PUSH.W          {R11}
20F0C4:  SUB             SP, SP, #8
20F0C6:  STR             R2, [SP,#0x18+var_18]
20F0C8:  MOV             R5, R0
20F0CA:  LDR             R0, =(__stack_chk_guard_ptr - 0x20F0D4)
20F0CC:  MOV             R4, R1
20F0CE:  MOV             R6, SP
20F0D0:  ADD             R0, PC; __stack_chk_guard_ptr
20F0D2:  LDR             R0, [R0]; __stack_chk_guard
20F0D4:  LDR             R0, [R0]
20F0D6:  STR             R0, [SP,#0x18+var_14]
20F0D8:  CMP             R5, R4
20F0DA:  BEQ             loc_20F0E8
20F0DC:  LDRB.W          R1, [R5],#1
20F0E0:  MOV             R0, R6
20F0E2:  BL              sub_1F95F0
20F0E6:  B               loc_20F0D8
20F0E8:  LDR             R0, [SP,#0x18+var_18]
20F0EA:  LDR             R1, [SP,#0x18+var_14]
20F0EC:  LDR             R2, =(__stack_chk_guard_ptr - 0x20F0F2)
20F0EE:  ADD             R2, PC; __stack_chk_guard_ptr
20F0F0:  LDR             R2, [R2]; __stack_chk_guard
20F0F2:  LDR             R2, [R2]
20F0F4:  CMP             R2, R1
20F0F6:  ITTT EQ
20F0F8:  ADDEQ           SP, SP, #8
20F0FA:  POPEQ.W         {R11}
20F0FE:  POPEQ           {R4-R7,PC}
20F100:  BLX             __stack_chk_fail
