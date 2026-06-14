; =========================================================
; Game Engine Function: _Z16psPathnameCreatePKc
; Address            : 0x5E4DD4 - 0x5E4E3A
; =========================================================

5E4DD4:  PUSH            {R4-R7,LR}
5E4DD6:  ADD             R7, SP, #0xC
5E4DD8:  PUSH.W          {R11}
5E4DDC:  MOV             R5, R0
5E4DDE:  LDR             R0, =(RwEngineInstance_ptr - 0x5E4DE4)
5E4DE0:  ADD             R0, PC; RwEngineInstance_ptr
5E4DE2:  LDR             R0, [R0]; RwEngineInstance
5E4DE4:  LDR             R0, [R0]
5E4DE6:  LDR.W           R1, [R0,#0x118]
5E4DEA:  MOV             R0, R5
5E4DEC:  BLX             R1
5E4DEE:  ADDS            R0, #1; byte_count
5E4DF0:  BLX.W           j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
5E4DF4:  MOV             R4, R0
5E4DF6:  CBZ             R4, loc_5E4E32
5E4DF8:  LDR             R0, =(RwEngineInstance_ptr - 0x5E4E00)
5E4DFA:  MOV             R1, R5
5E4DFC:  ADD             R0, PC; RwEngineInstance_ptr
5E4DFE:  LDR             R6, [R0]; RwEngineInstance
5E4E00:  LDR             R0, [R6]
5E4E02:  LDR.W           R2, [R0,#0xF8]
5E4E06:  MOV             R0, R4
5E4E08:  BLX             R2
5E4E0A:  LDR             R0, [R6]
5E4E0C:  MOVS            R1, #0x2F ; '/'
5E4E0E:  LDR.W           R2, [R0,#0x10C]
5E4E12:  MOV             R0, R4
5E4E14:  BLX             R2
5E4E16:  CBZ             R0, loc_5E4E32
5E4E18:  LDR             R1, =(RwEngineInstance_ptr - 0x5E4E20)
5E4E1A:  MOVS            R6, #0x5C ; '\'
5E4E1C:  ADD             R1, PC; RwEngineInstance_ptr
5E4E1E:  LDR             R5, [R1]; RwEngineInstance
5E4E20:  STRB            R6, [R0]
5E4E22:  MOVS            R1, #0x2F ; '/'
5E4E24:  LDR             R0, [R5]
5E4E26:  LDR.W           R2, [R0,#0x10C]
5E4E2A:  MOV             R0, R4
5E4E2C:  BLX             R2
5E4E2E:  CMP             R0, #0
5E4E30:  BNE             loc_5E4E20
5E4E32:  MOV             R0, R4
5E4E34:  POP.W           {R11}
5E4E38:  POP             {R4-R7,PC}
