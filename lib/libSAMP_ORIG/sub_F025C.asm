; =========================================================
; Game Engine Function: sub_F025C
; Address            : 0xF025C - 0xF02AC
; =========================================================

F025C:  PUSH            {R4-R7,LR}
F025E:  ADD             R7, SP, #0xC
F0260:  PUSH.W          {R11}
F0264:  SUB             SP, SP, #8
F0266:  MOV             R6, R0
F0268:  LDR             R0, =(__stack_chk_guard_ptr - 0xF0272)
F026A:  MOV             R4, R2
F026C:  MOV             R5, R1
F026E:  ADD             R0, PC; __stack_chk_guard_ptr
F0270:  LDR             R0, [R0]; __stack_chk_guard
F0272:  LDR             R0, [R0]
F0274:  STR             R0, [SP,#0x18+var_14]
F0276:  MOV             R0, R3
F0278:  BLX             uselocale
F027C:  STR             R0, [SP,#0x18+var_18]
F027E:  MOV             R0, R6; s
F0280:  MOV             R1, R5; n
F0282:  MOV             R2, R4; ps
F0284:  BLX             mbrlen
F0288:  MOV             R4, R0
F028A:  MOV             R0, SP
F028C:  BL              sub_F61EC
F0290:  LDR             R0, [SP,#0x18+var_14]
F0292:  LDR             R1, =(__stack_chk_guard_ptr - 0xF0298)
F0294:  ADD             R1, PC; __stack_chk_guard_ptr
F0296:  LDR             R1, [R1]; __stack_chk_guard
F0298:  LDR             R1, [R1]
F029A:  CMP             R1, R0
F029C:  ITTTT EQ
F029E:  MOVEQ           R0, R4
F02A0:  ADDEQ           SP, SP, #8
F02A2:  POPEQ.W         {R11}
F02A6:  POPEQ           {R4-R7,PC}
F02A8:  BLX             __stack_chk_fail
