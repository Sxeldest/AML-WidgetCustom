; =========================================================
; Game Engine Function: sub_F0170
; Address            : 0xF0170 - 0xF01C0
; =========================================================

F0170:  PUSH            {R4-R7,LR}
F0172:  ADD             R7, SP, #0xC
F0174:  PUSH.W          {R11}
F0178:  SUB             SP, SP, #8
F017A:  MOV             R6, R0
F017C:  LDR             R0, =(__stack_chk_guard_ptr - 0xF0186)
F017E:  MOV             R4, R2
F0180:  MOV             R5, R1
F0182:  ADD             R0, PC; __stack_chk_guard_ptr
F0184:  LDR             R0, [R0]; __stack_chk_guard
F0186:  LDR             R0, [R0]
F0188:  STR             R0, [SP,#0x18+var_14]
F018A:  MOV             R0, R3
F018C:  BLX             uselocale
F0190:  STR             R0, [SP,#0x18+var_18]
F0192:  MOV             R0, R6; pwc
F0194:  MOV             R1, R5; s
F0196:  MOV             R2, R4; n
F0198:  BLX             mbtowc
F019C:  MOV             R4, R0
F019E:  MOV             R0, SP
F01A0:  BL              sub_F61EC
F01A4:  LDR             R0, [SP,#0x18+var_14]
F01A6:  LDR             R1, =(__stack_chk_guard_ptr - 0xF01AC)
F01A8:  ADD             R1, PC; __stack_chk_guard_ptr
F01AA:  LDR             R1, [R1]; __stack_chk_guard
F01AC:  LDR             R1, [R1]
F01AE:  CMP             R1, R0
F01B0:  ITTTT EQ
F01B2:  MOVEQ           R0, R4
F01B4:  ADDEQ           SP, SP, #8
F01B6:  POPEQ.W         {R11}
F01BA:  POPEQ           {R4-R7,PC}
F01BC:  BLX             __stack_chk_fail
