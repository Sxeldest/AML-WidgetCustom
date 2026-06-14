; =========================================================
; Game Engine Function: sub_A74FC
; Address            : 0xA74FC - 0xA754A
; =========================================================

A74FC:  PUSH            {R7,LR}
A74FE:  MOV             R7, SP
A7500:  SUB             SP, SP, #0x10
A7502:  LDR             R0, =(off_114D5C - 0xA750A)
A7504:  MOVS            R2, #1
A7506:  ADD             R0, PC; off_114D5C
A7508:  LDR             R0, [R0]; dword_1ACF68
A750A:  LDR             R0, [R0]
A750C:  LDR             R1, =(__stack_chk_guard_ptr - 0xA7512)
A750E:  ADD             R1, PC; __stack_chk_guard_ptr
A7510:  LDR             R1, [R1]; __stack_chk_guard
A7512:  LDR             R1, [R1]
A7514:  STR             R1, [SP,#0x18+var_C]
A7516:  MOVW            R1, #0x19AC
A751A:  LDR             R0, [R0,R1]
A751C:  LDRB.W          R1, [R0,#0x7F]
A7520:  STRB.W          R2, [R0,#0x7C]
A7524:  CBNZ            R1, loc_A7534
A7526:  MOVS            R0, #0
A7528:  MOVS            R1, #0
A752A:  STRD.W          R0, R0, [SP,#0x18+var_14]
A752E:  ADD             R0, SP, #0x18+var_14
A7530:  BL              sub_8B104
A7534:  LDR             R0, [SP,#0x18+var_C]
A7536:  LDR             R1, =(__stack_chk_guard_ptr - 0xA753C)
A7538:  ADD             R1, PC; __stack_chk_guard_ptr
A753A:  LDR             R1, [R1]; __stack_chk_guard
A753C:  LDR             R1, [R1]
A753E:  CMP             R1, R0
A7540:  ITT EQ
A7542:  ADDEQ           SP, SP, #0x10
A7544:  POPEQ           {R7,PC}
A7546:  BLX             __stack_chk_fail
