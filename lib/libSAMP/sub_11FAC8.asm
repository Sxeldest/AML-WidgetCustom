; =========================================================
; Game Engine Function: sub_11FAC8
; Address            : 0x11FAC8 - 0x11FADE
; =========================================================

11FAC8:  PUSH            {R4,R6,R7,LR}
11FACA:  ADD             R7, SP, #8
11FACC:  MOV             R4, R0
11FACE:  LDR             R0, [R0,#4]
11FAD0:  CBZ             R0, loc_11FADA
11FAD2:  BL              sub_11FD18
11FAD6:  BLX             j__ZdlPv; operator delete(void *)
11FADA:  MOV             R0, R4
11FADC:  POP             {R4,R6,R7,PC}
