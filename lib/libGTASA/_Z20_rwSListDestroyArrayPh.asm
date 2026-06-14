; =========================================================
; Game Engine Function: _Z20_rwSListDestroyArrayPh
; Address            : 0x1E2C14 - 0x1E2C2A
; =========================================================

1E2C14:  PUSH            {R7,LR}
1E2C16:  MOV             R7, SP
1E2C18:  LDR             R1, =(RwEngineInstance_ptr - 0x1E2C1E)
1E2C1A:  ADD             R1, PC; RwEngineInstance_ptr
1E2C1C:  LDR             R1, [R1]; RwEngineInstance
1E2C1E:  LDR             R1, [R1]
1E2C20:  LDR.W           R1, [R1,#0x130]
1E2C24:  BLX             R1
1E2C26:  MOVS            R0, #1
1E2C28:  POP             {R7,PC}
