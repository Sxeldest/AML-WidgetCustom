; =========================================================
; Game Engine Function: sub_208150
; Address            : 0x208150 - 0x2081A0
; =========================================================

208150:  PUSH            {R4-R7,LR}
208152:  ADD             R7, SP, #0xC
208154:  PUSH.W          {R11}
208158:  SUB             SP, SP, #8
20815A:  MOV             R6, R0
20815C:  LDR             R0, =(__stack_chk_guard_ptr - 0x208166)
20815E:  MOV             R4, R2
208160:  MOV             R5, R1
208162:  ADD             R0, PC; __stack_chk_guard_ptr
208164:  LDR             R0, [R0]; __stack_chk_guard
208166:  LDR             R0, [R0]
208168:  STR             R0, [SP,#0x18+var_14]
20816A:  MOV             R0, R3
20816C:  BL              sub_21FCA0
208170:  STR             R0, [SP,#0x18+var_18]
208172:  MOV             R0, R6; s
208174:  MOV             R1, R5; n
208176:  MOV             R2, R4; ps
208178:  BLX             mbrlen
20817C:  MOV             R4, R0
20817E:  MOV             R0, SP
208180:  BL              sub_20E0DC
208184:  LDR             R0, [SP,#0x18+var_14]
208186:  LDR             R1, =(__stack_chk_guard_ptr - 0x20818C)
208188:  ADD             R1, PC; __stack_chk_guard_ptr
20818A:  LDR             R1, [R1]; __stack_chk_guard
20818C:  LDR             R1, [R1]
20818E:  CMP             R1, R0
208190:  ITTTT EQ
208192:  MOVEQ           R0, R4
208194:  ADDEQ           SP, SP, #8
208196:  POPEQ.W         {R11}
20819A:  POPEQ           {R4-R7,PC}
20819C:  BLX             __stack_chk_fail
