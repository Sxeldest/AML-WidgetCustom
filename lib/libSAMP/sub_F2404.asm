; =========================================================
; Game Engine Function: sub_F2404
; Address            : 0xF2404 - 0xF241A
; =========================================================

F2404:  PUSH            {R4,R6,R7,LR}
F2406:  ADD             R7, SP, #8
F2408:  MOV             R4, R0
F240A:  LDR             R0, [R0,#4]
F240C:  CBZ             R0, loc_F2416
F240E:  BL              sub_F2778
F2412:  BLX             j__ZdlPv; operator delete(void *)
F2416:  MOV             R0, R4
F2418:  POP             {R4,R6,R7,PC}
