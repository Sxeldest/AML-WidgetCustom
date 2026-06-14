; =========================================================
; Game Engine Function: _Z16_rwStringDestroyPc
; Address            : 0x1D4F4C - 0x1D4F62
; =========================================================

1D4F4C:  PUSH            {R7,LR}
1D4F4E:  MOV             R7, SP
1D4F50:  LDR             R1, =(RwEngineInstance_ptr - 0x1D4F56)
1D4F52:  ADD             R1, PC; RwEngineInstance_ptr
1D4F54:  LDR             R1, [R1]; RwEngineInstance
1D4F56:  LDR             R1, [R1]
1D4F58:  LDR.W           R1, [R1,#0x130]
1D4F5C:  BLX             R1
1D4F5E:  MOVS            R0, #1
1D4F60:  POP             {R7,PC}
