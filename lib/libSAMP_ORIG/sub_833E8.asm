; =========================================================
; Game Engine Function: sub_833E8
; Address            : 0x833E8 - 0x8344A
; =========================================================

833E8:  PUSH            {R4-R7,LR}
833EA:  ADD             R7, SP, #0xC
833EC:  PUSH.W          {R11}
833F0:  SUB             SP, SP, #0x10
833F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x833FC)
833F4:  MOVS            R4, #0
833F6:  MOV             R5, SP
833F8:  ADD             R0, PC; __stack_chk_guard_ptr
833FA:  LDR             R0, [R0]; __stack_chk_guard
833FC:  LDR             R0, [R0]
833FE:  STR             R0, [SP,#0x20+var_14]
83400:  STRD.W          R4, R4, [SP,#0x20+var_20]
83404:  STR             R4, [SP,#0x20+var_18]
83406:  LDR             R0, =(off_114D24 - 0x8340C)
83408:  ADD             R0, PC; off_114D24
8340A:  LDR             R6, [R0]; off_1ABF2C
8340C:  B               loc_83410
8340E:  ADDS            R4, #1
83410:  LDR             R2, [R6]
83412:  MOV             R0, R4
83414:  MOV             R1, R5
83416:  BLX             R2
83418:  CBZ             R0, loc_8342A
8341A:  LDR             R1, [SP,#0x20+var_18]
8341C:  LSLS            R2, R1, #0x1F
8341E:  BEQ             loc_8340E
83420:  LSLS            R1, R1, #0x1C
83422:  BMI             loc_8340E
83424:  LDR             R1, [SP,#0x20+var_20]
83426:  CMP             R1, #0
83428:  BEQ             loc_8340E
8342A:  CMP             R0, #0
8342C:  IT NE
8342E:  MOVNE           R0, #1
83430:  LDR             R1, [SP,#0x20+var_14]
83432:  LDR             R2, =(__stack_chk_guard_ptr - 0x83438)
83434:  ADD             R2, PC; __stack_chk_guard_ptr
83436:  LDR             R2, [R2]; __stack_chk_guard
83438:  LDR             R2, [R2]
8343A:  CMP             R2, R1
8343C:  ITTT EQ
8343E:  ADDEQ           SP, SP, #0x10
83440:  POPEQ.W         {R11}
83444:  POPEQ           {R4-R7,PC}
83446:  BLX             __stack_chk_fail
