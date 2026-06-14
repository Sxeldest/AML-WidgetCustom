; =========================================================
; Game Engine Function: _Z13_rpLightClosePvii
; Address            : 0x216FB8 - 0x217004
; =========================================================

216FB8:  PUSH            {R4-R7,LR}
216FBA:  ADD             R7, SP, #0xC
216FBC:  PUSH.W          {R8}
216FC0:  MOV             R4, R0
216FC2:  LDR             R0, =(RwEngineInstance_ptr - 0x216FCC)
216FC4:  LDR             R5, =(dword_6BD5C8 - 0x216FD2)
216FC6:  MOVS            R2, #0
216FC8:  ADD             R0, PC; RwEngineInstance_ptr
216FCA:  MOV.W           R8, #0
216FCE:  ADD             R5, PC; dword_6BD5C8
216FD0:  LDR             R6, [R0]; RwEngineInstance
216FD2:  LDR             R0, [R5]
216FD4:  LDR             R1, [R6]
216FD6:  LDR             R0, [R1,R0]
216FD8:  LDR             R1, =(sub_217014+1 - 0x216FDE)
216FDA:  ADD             R1, PC; sub_217014
216FDC:  BLX             j__Z20RwFreeListForAllUsedP10RwFreeListPFvPvS1_ES1_; RwFreeListForAllUsed(RwFreeList *,void (*)(void *,void *),void *)
216FE0:  LDR             R0, [R5]
216FE2:  LDR             R1, [R6]
216FE4:  LDR             R0, [R1,R0]
216FE6:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
216FEA:  LDR             R2, =(dword_6BD5CC - 0x216FF4)
216FEC:  LDR             R0, [R5]
216FEE:  LDR             R1, [R6]
216FF0:  ADD             R2, PC; dword_6BD5CC
216FF2:  STR.W           R8, [R1,R0]
216FF6:  LDR             R0, [R2]
216FF8:  SUBS            R0, #1
216FFA:  STR             R0, [R2]
216FFC:  MOV             R0, R4
216FFE:  POP.W           {R8}
217002:  POP             {R4-R7,PC}
