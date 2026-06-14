; =========================================================
; Game Engine Function: sub_F8342
; Address            : 0xF8342 - 0xF838E
; =========================================================

F8342:  PUSH            {R4,R6,R7,LR}
F8344:  ADD             R7, SP, #8
F8346:  LDR             R1, [R1]
F8348:  MOV             R4, R0
F834A:  LDR             R0, [R0]
F834C:  STR             R1, [R4]
F834E:  SUBS            R1, #4
F8350:  DMB.W           ISH
F8354:  LDREX.W         R2, [R1]
F8358:  ADDS            R2, #1
F835A:  STREX.W         R3, R2, [R1]
F835E:  CMP             R3, #0
F8360:  BNE             loc_F8354
F8362:  SUBS            R1, R0, #4
F8364:  DMB.W           ISH
F8368:  DMB.W           ISH
F836C:  LDREX.W         R2, [R1]
F8370:  SUBS            R2, #1
F8372:  STREX.W         R3, R2, [R1]
F8376:  CMP             R3, #0
F8378:  BNE             loc_F836C
F837A:  CMP.W           R2, #0xFFFFFFFF
F837E:  DMB.W           ISH
F8382:  ITT LE
F8384:  SUBLE           R0, #0xC; void *
F8386:  BLXLE           j__ZdlPv; operator delete(void *)
F838A:  MOV             R0, R4
F838C:  POP             {R4,R6,R7,PC}
