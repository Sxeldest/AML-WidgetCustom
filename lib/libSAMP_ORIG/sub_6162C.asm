; =========================================================
; Game Engine Function: sub_6162C
; Address            : 0x6162C - 0x6164C
; =========================================================

6162C:  PUSH            {R4,R6,R7,LR}
6162E:  ADD             R7, SP, #8
61630:  MOV             R4, R0
61632:  LDR             R0, =(off_11764C - 0x61638)
61634:  ADD             R0, PC; off_11764C
61636:  LDR             R2, [R0]
61638:  MOV             R0, R4
6163A:  BLX             R2
6163C:  LDR             R0, =(off_114B0C - 0x61642)
6163E:  ADD             R0, PC; off_114B0C
61640:  LDR             R0, [R0]; dword_1A44F8
61642:  LDR             R0, [R0]
61644:  STR.W           R0, [R4,#0x84]
61648:  MOVS            R0, #0
6164A:  POP             {R4,R6,R7,PC}
