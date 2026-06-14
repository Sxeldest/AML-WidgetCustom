; =========================================================
; Game Engine Function: _Z19_rpMeshHeaderCreatej
; Address            : 0x217E50 - 0x217E68
; =========================================================

217E50:  PUSH            {R7,LR}
217E52:  MOV             R7, SP
217E54:  LDR             R1, =(RwEngineInstance_ptr - 0x217E5A)
217E56:  ADD             R1, PC; RwEngineInstance_ptr
217E58:  LDR             R1, [R1]; RwEngineInstance
217E5A:  LDR             R1, [R1]
217E5C:  LDR.W           R1, [R1,#0x12C]
217E60:  BLX             R1
217E62:  MOVS            R1, #0
217E64:  STR             R1, [R0,#0x10]
217E66:  POP             {R7,PC}
