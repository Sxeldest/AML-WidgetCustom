; =========================================================
; Game Engine Function: _Z12_rpMeshClosePvii
; Address            : 0x217E6C - 0x217E98
; =========================================================

217E6C:  PUSH            {R4,R6,R7,LR}
217E6E:  ADD             R7, SP, #8
217E70:  MOV             R4, R0
217E72:  LDR             R0, =(meshModule_ptr - 0x217E78)
217E74:  ADD             R0, PC; meshModule_ptr
217E76:  LDR             R0, [R0]; meshModule
217E78:  LDR             R1, [R0,#(dword_6BD600 - 0x6BD5FC)]
217E7A:  SUBS            R1, #1
217E7C:  STR             R1, [R0,#(dword_6BD600 - 0x6BD5FC)]
217E7E:  BNE             loc_217E94
217E80:  LDR             R0, =(dword_6BD604 - 0x217E86)
217E82:  ADD             R0, PC; dword_6BD604
217E84:  LDR             R0, [R0]
217E86:  CBZ             R0, loc_217E94
217E88:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
217E8C:  LDR             R0, =(dword_6BD604 - 0x217E94)
217E8E:  MOVS            R1, #0
217E90:  ADD             R0, PC; dword_6BD604
217E92:  STR             R1, [R0]
217E94:  MOV             R0, R4
217E96:  POP             {R4,R6,R7,PC}
