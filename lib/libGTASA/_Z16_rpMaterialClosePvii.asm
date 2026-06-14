; =========================================================
; Game Engine Function: _Z16_rpMaterialClosePvii
; Address            : 0x2171A0 - 0x2171DC
; =========================================================

2171A0:  PUSH            {R4,R6,R7,LR}
2171A2:  ADD             R7, SP, #8
2171A4:  MOV             R4, R0
2171A6:  LDR             R0, =(RwEngineInstance_ptr - 0x2171AE)
2171A8:  LDR             R1, =(dword_6BD5F4 - 0x2171B0)
2171AA:  ADD             R0, PC; RwEngineInstance_ptr
2171AC:  ADD             R1, PC; dword_6BD5F4
2171AE:  LDR             R0, [R0]; RwEngineInstance
2171B0:  LDR             R1, [R1]
2171B2:  LDR             R0, [R0]
2171B4:  LDR             R0, [R0,R1]
2171B6:  CBZ             R0, loc_2171CE
2171B8:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
2171BC:  LDR             R0, =(RwEngineInstance_ptr - 0x2171C6)
2171BE:  MOVS            R2, #0
2171C0:  LDR             R1, =(dword_6BD5F4 - 0x2171C8)
2171C2:  ADD             R0, PC; RwEngineInstance_ptr
2171C4:  ADD             R1, PC; dword_6BD5F4
2171C6:  LDR             R0, [R0]; RwEngineInstance
2171C8:  LDR             R1, [R1]
2171CA:  LDR             R0, [R0]
2171CC:  STR             R2, [R0,R1]
2171CE:  LDR             R0, =(dword_6BD5F8 - 0x2171D4)
2171D0:  ADD             R0, PC; dword_6BD5F8
2171D2:  LDR             R1, [R0]
2171D4:  SUBS            R1, #1
2171D6:  STR             R1, [R0]
2171D8:  MOV             R0, R4
2171DA:  POP             {R4,R6,R7,PC}
