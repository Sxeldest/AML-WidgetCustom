; =========================================================
; Game Engine Function: sub_20F10C
; Address            : 0x20F10C - 0x20F152
; =========================================================

20F10C:  PUSH            {R4-R7,LR}
20F10E:  ADD             R7, SP, #0xC
20F110:  PUSH.W          {R11}
20F114:  SUB             SP, SP, #8
20F116:  STR             R2, [SP,#0x18+var_18]
20F118:  MOV             R5, R0
20F11A:  LDR             R0, =(__stack_chk_guard_ptr - 0x20F124)
20F11C:  MOV             R4, R1
20F11E:  MOV             R6, SP
20F120:  ADD             R0, PC; __stack_chk_guard_ptr
20F122:  LDR             R0, [R0]; __stack_chk_guard
20F124:  LDR             R0, [R0]
20F126:  STR             R0, [SP,#0x18+var_14]
20F128:  CMP             R5, R4
20F12A:  BEQ             loc_20F136
20F12C:  LDM             R5!, {R1}
20F12E:  MOV             R0, R6
20F130:  BL              sub_1FA73C
20F134:  B               loc_20F128
20F136:  LDR             R0, [SP,#0x18+var_18]
20F138:  LDR             R1, [SP,#0x18+var_14]
20F13A:  LDR             R2, =(__stack_chk_guard_ptr - 0x20F140)
20F13C:  ADD             R2, PC; __stack_chk_guard_ptr
20F13E:  LDR             R2, [R2]; __stack_chk_guard
20F140:  LDR             R2, [R2]
20F142:  CMP             R2, R1
20F144:  ITTT EQ
20F146:  ADDEQ           SP, SP, #8
20F148:  POPEQ.W         {R11}
20F14C:  POPEQ           {R4-R7,PC}
20F14E:  BLX             __stack_chk_fail
