; =========================================================
; Game Engine Function: _Z13_rpClumpClosePvii
; Address            : 0x213B8C - 0x213BFE
; =========================================================

213B8C:  PUSH            {R4-R7,LR}
213B8E:  ADD             R7, SP, #0xC
213B90:  PUSH.W          {R8}
213B94:  MOV             R4, R0
213B96:  LDR             R0, =(RwEngineInstance_ptr - 0x213BA0)
213B98:  LDR             R6, =(dword_6BD598 - 0x213BA6)
213B9A:  MOVS            R2, #0
213B9C:  ADD             R0, PC; RwEngineInstance_ptr
213B9E:  MOV.W           R8, #0
213BA2:  ADD             R6, PC; dword_6BD598
213BA4:  LDR             R5, [R0]; RwEngineInstance
213BA6:  LDR             R0, [R6]
213BA8:  LDR             R1, [R5]
213BAA:  ADD             R0, R1
213BAC:  LDR             R1, =(j__Z14RpClumpDestroyP7RpClump_0+1 - 0x213BB4); RpClumpDestroy(RpClump *) ...
213BAE:  LDR             R0, [R0,#4]
213BB0:  ADD             R1, PC; RpClumpDestroy(RpClump *)
213BB2:  BLX             j__Z20RwFreeListForAllUsedP10RwFreeListPFvPvS1_ES1_; RwFreeListForAllUsed(RwFreeList *,void (*)(void *,void *),void *)
213BB6:  LDR             R0, [R6]
213BB8:  LDR             R2, [R5]
213BBA:  LDR             R1, =(j__Z15RpAtomicDestroyP8RpAtomic_0+1 - 0x213BC2); RpAtomicDestroy(RpAtomic *) ...
213BBC:  LDR             R0, [R2,R0]
213BBE:  ADD             R1, PC; RpAtomicDestroy(RpAtomic *)
213BC0:  MOVS            R2, #0
213BC2:  BLX             j__Z20RwFreeListForAllUsedP10RwFreeListPFvPvS1_ES1_; RwFreeListForAllUsed(RwFreeList *,void (*)(void *,void *),void *)
213BC6:  LDR             R0, [R6]
213BC8:  LDR             R1, [R5]
213BCA:  LDR             R0, [R1,R0]
213BCC:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
213BD0:  LDR             R0, [R6]
213BD2:  LDR             R1, [R5]
213BD4:  ADD             R0, R1
213BD6:  LDR             R0, [R0,#4]
213BD8:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
213BDC:  LDR             R0, [R6]
213BDE:  LDR             R1, [R5]
213BE0:  LDR             R2, =(dword_6BD59C - 0x213BEA)
213BE2:  STR.W           R8, [R1,R0]
213BE6:  ADD             R2, PC; dword_6BD59C
213BE8:  LDR             R1, [R5]
213BEA:  ADD             R0, R1
213BEC:  STR.W           R8, [R0,#4]
213BF0:  LDR             R0, [R2]
213BF2:  SUBS            R0, #1
213BF4:  STR             R0, [R2]
213BF6:  MOV             R0, R4
213BF8:  POP.W           {R8}
213BFC:  POP             {R4-R7,PC}
