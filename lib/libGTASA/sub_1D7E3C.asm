; =========================================================
; Game Engine Function: sub_1D7E3C
; Address            : 0x1D7E3C - 0x1D7E56
; =========================================================

1D7E3C:  PUSH            {R4,R6,R7,LR}
1D7E3E:  ADD             R7, SP, #8
1D7E40:  MOV             R4, R0
1D7E42:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7E48)
1D7E44:  ADD             R0, PC; RwEngineInstance_ptr
1D7E46:  LDR             R0, [R0]; RwEngineInstance
1D7E48:  LDR             R0, [R0]
1D7E4A:  LDR.W           R2, [R0,#0x130]
1D7E4E:  MOV             R0, R1
1D7E50:  BLX             R2
1D7E52:  MOV             R0, R4
1D7E54:  POP             {R4,R6,R7,PC}
