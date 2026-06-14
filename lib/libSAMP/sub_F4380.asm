; =========================================================
; Game Engine Function: sub_F4380
; Address            : 0xF4380 - 0xF4396
; =========================================================

F4380:  PUSH            {R4,R6,R7,LR}
F4382:  ADD             R7, SP, #8
F4384:  MOV             R4, R0
F4386:  LDR             R0, [R0,#4]
F4388:  CBZ             R0, loc_F4392
F438A:  BL              sub_F4A5C
F438E:  BLX             j__ZdlPv; operator delete(void *)
F4392:  MOV             R0, R4
F4394:  POP             {R4,R6,R7,PC}
