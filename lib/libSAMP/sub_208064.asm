; =========================================================
; Game Engine Function: sub_208064
; Address            : 0x208064 - 0x2080B4
; =========================================================

208064:  PUSH            {R4-R7,LR}
208066:  ADD             R7, SP, #0xC
208068:  PUSH.W          {R11}
20806C:  SUB             SP, SP, #8
20806E:  MOV             R6, R0
208070:  LDR             R0, =(__stack_chk_guard_ptr - 0x20807A)
208072:  MOV             R4, R2
208074:  MOV             R5, R1
208076:  ADD             R0, PC; __stack_chk_guard_ptr
208078:  LDR             R0, [R0]; __stack_chk_guard
20807A:  LDR             R0, [R0]
20807C:  STR             R0, [SP,#0x18+var_14]
20807E:  MOV             R0, R3
208080:  BL              sub_21FCA0
208084:  STR             R0, [SP,#0x18+var_18]
208086:  MOV             R0, R6
208088:  MOV             R1, R5
20808A:  MOV             R2, R4
20808C:  BL              sub_220308
208090:  MOV             R4, R0
208092:  MOV             R0, SP
208094:  BL              sub_20E0DC
208098:  LDR             R0, [SP,#0x18+var_14]
20809A:  LDR             R1, =(__stack_chk_guard_ptr - 0x2080A0)
20809C:  ADD             R1, PC; __stack_chk_guard_ptr
20809E:  LDR             R1, [R1]; __stack_chk_guard
2080A0:  LDR             R1, [R1]
2080A2:  CMP             R1, R0
2080A4:  ITTTT EQ
2080A6:  MOVEQ           R0, R4
2080A8:  ADDEQ           SP, SP, #8
2080AA:  POPEQ.W         {R11}
2080AE:  POPEQ           {R4-R7,PC}
2080B0:  BLX             __stack_chk_fail
