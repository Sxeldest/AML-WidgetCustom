; =========================================================
; Game Engine Function: sub_A62B8
; Address            : 0xA62B8 - 0xA6340
; =========================================================

A62B8:  SUB             SP, SP, #8
A62BA:  PUSH            {R4-R7,LR}
A62BC:  ADD             R7, SP, #0xC
A62BE:  PUSH.W          {R11}
A62C2:  SUB             SP, SP, #8
A62C4:  STRD.W          R2, R3, [R7,#var_s8]
A62C8:  MOV             R4, R1
A62CA:  MOV             R1, R0
A62CC:  LDR             R0, =(__stack_chk_guard_ptr - 0xA62D6)
A62CE:  ADD.W           R5, R7, #8
A62D2:  ADD             R0, PC; __stack_chk_guard_ptr
A62D4:  LDR             R0, [R0]; __stack_chk_guard
A62D6:  LDR             R0, [R0]
A62D8:  STR             R0, [SP,#0x18+var_14]
A62DA:  MOVS            R0, #0
A62DC:  STR             R5, [SP,#0x18+var_18]
A62DE:  BL              sub_95E08
A62E2:  LDR             R0, =(off_114D5C - 0xA62EE)
A62E4:  MOVW            R1, #0x19AC
A62E8:  MOVS            R3, #1
A62EA:  ADD             R0, PC; off_114D5C
A62EC:  LDR             R0, [R0]; dword_1ACF68
A62EE:  LDR             R0, [R0]
A62F0:  LDR             R1, [R0,R1]
A62F2:  LDRB.W          R2, [R1,#0x7F]
A62F6:  STRB.W          R3, [R1,#0x7C]
A62FA:  CBNZ            R2, loc_A6318
A62FC:  ADD.W           R6, R0, #0x2F40
A6300:  MOVW            R1, #0xC01
A6304:  MOV             R2, R4
A6306:  MOV             R3, R5
A6308:  MOV             R0, R6
A630A:  BL              sub_88724
A630E:  ADDS            R1, R6, R0
A6310:  MOV             R0, R6; s
A6312:  MOVS            R2, #1
A6314:  BL              sub_A5E84
A6318:  MOVS            R0, #1
A631A:  BL              sub_96230
A631E:  LDR             R0, [SP,#0x18+var_14]
A6320:  LDR             R1, =(__stack_chk_guard_ptr - 0xA6326)
A6322:  ADD             R1, PC; __stack_chk_guard_ptr
A6324:  LDR             R1, [R1]; __stack_chk_guard
A6326:  LDR             R1, [R1]
A6328:  CMP             R1, R0
A632A:  ITTTT EQ
A632C:  ADDEQ           SP, SP, #8
A632E:  POPEQ.W         {R11}
A6332:  POPEQ.W         {R4-R7,LR}
A6336:  ADDEQ           SP, SP, #8
A6338:  IT EQ
A633A:  BXEQ            LR
A633C:  BLX             __stack_chk_fail
