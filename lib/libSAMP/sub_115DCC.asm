; =========================================================
; Game Engine Function: sub_115DCC
; Address            : 0x115DCC - 0x115DDE
; =========================================================

115DCC:  PUSH            {R4,R6,R7,LR}
115DCE:  ADD             R7, SP, #8
115DD0:  MOV             R4, R0
115DD2:  LDR             R0, [R0,#4]; void *
115DD4:  CBZ             R0, loc_115DDA
115DD6:  BLX             j__ZdlPv; operator delete(void *)
115DDA:  MOV             R0, R4
115DDC:  POP             {R4,R6,R7,PC}
