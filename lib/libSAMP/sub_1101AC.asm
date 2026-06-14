; =========================================================
; Game Engine Function: sub_1101AC
; Address            : 0x1101AC - 0x1101C2
; =========================================================

1101AC:  PUSH            {R4,R6,R7,LR}
1101AE:  ADD             R7, SP, #8
1101B0:  MOV             R4, R0
1101B2:  LDR             R0, [R0,#4]
1101B4:  CBZ             R0, loc_1101BE
1101B6:  BL              sub_110388
1101BA:  BLX             j__ZdlPv; operator delete(void *)
1101BE:  MOV             R0, R4
1101C0:  POP             {R4,R6,R7,PC}
