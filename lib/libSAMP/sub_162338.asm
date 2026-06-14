; =========================================================
; Game Engine Function: sub_162338
; Address            : 0x162338 - 0x16234E
; =========================================================

162338:  PUSH            {R4,R6,R7,LR}
16233A:  ADD             R7, SP, #8
16233C:  MOV             R4, R0
16233E:  LDR             R0, [R0,#4]
162340:  CBZ             R0, loc_16234A
162342:  BL              sub_162424
162346:  BLX             j__ZdlPv; operator delete(void *)
16234A:  MOV             R0, R4
16234C:  POP             {R4,R6,R7,PC}
