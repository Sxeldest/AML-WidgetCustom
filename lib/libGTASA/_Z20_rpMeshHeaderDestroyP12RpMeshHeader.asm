; =========================================================
; Game Engine Function: _Z20_rpMeshHeaderDestroyP12RpMeshHeader
; Address            : 0x217E24 - 0x217E4A
; =========================================================

217E24:  PUSH            {R4,R6,R7,LR}
217E26:  ADD             R7, SP, #8
217E28:  MOV             R4, R0
217E2A:  LDR             R0, [R4,#0x10]; unsigned int
217E2C:  CBZ             R0, loc_217E36
217E2E:  BLX             j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
217E32:  MOVS            R0, #0
217E34:  STR             R0, [R4,#0x10]
217E36:  LDR             R0, =(RwEngineInstance_ptr - 0x217E3C)
217E38:  ADD             R0, PC; RwEngineInstance_ptr
217E3A:  LDR             R0, [R0]; RwEngineInstance
217E3C:  LDR             R0, [R0]
217E3E:  LDR.W           R1, [R0,#0x130]
217E42:  MOV             R0, R4
217E44:  POP.W           {R4,R6,R7,LR}
217E48:  BX              R1
