; =========================================================
; Game Engine Function: sub_E733A
; Address            : 0xE733A - 0xE7374
; =========================================================

E733A:  PUSH            {R4,R5,R7,LR}
E733C:  ADD             R7, SP, #8
E733E:  MOV             R4, R1
E7340:  MOV             R5, R0
E7342:  LDRD.W          R1, R0, [R0]; src
E7346:  LDR             R3, [R4,#4]
E7348:  SUBS            R2, R0, R1; n
E734A:  SUBS            R0, R3, R2; dest
E734C:  CMP             R2, #1
E734E:  STR             R0, [R4,#4]
E7350:  BLT             loc_E7358
E7352:  BLX             j_memcpy
E7356:  LDR             R0, [R4,#4]
E7358:  LDR             R1, [R5]
E735A:  STR             R0, [R5]
E735C:  STR             R1, [R4,#4]
E735E:  LDR             R0, [R4,#8]
E7360:  LDR             R1, [R5,#4]
E7362:  STR             R0, [R5,#4]
E7364:  STR             R1, [R4,#8]
E7366:  LDR             R0, [R4,#0xC]
E7368:  LDR             R1, [R5,#8]
E736A:  STR             R0, [R5,#8]
E736C:  LDR             R0, [R4,#4]
E736E:  STR             R1, [R4,#0xC]
E7370:  STR             R0, [R4]
E7372:  POP             {R4,R5,R7,PC}
