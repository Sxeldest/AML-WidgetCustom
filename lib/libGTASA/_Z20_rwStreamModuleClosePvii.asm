; =========================================================
; Game Engine Function: _Z20_rwStreamModuleClosePvii
; Address            : 0x1E5634 - 0x1E5660
; =========================================================

1E5634:  PUSH            {R4,R6,R7,LR}
1E5636:  ADD             R7, SP, #8
1E5638:  MOV             R4, R0
1E563A:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5642)
1E563C:  LDR             R1, =(dword_6BD0A8 - 0x1E5644)
1E563E:  ADD             R0, PC; RwEngineInstance_ptr
1E5640:  ADD             R1, PC; dword_6BD0A8
1E5642:  LDR             R0, [R0]; RwEngineInstance
1E5644:  LDR             R1, [R1]
1E5646:  LDR             R0, [R0]
1E5648:  LDR             R0, [R0,R1]
1E564A:  CMP             R0, #0
1E564C:  IT NE
1E564E:  BLXNE           j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1E5652:  LDR             R0, =(dword_6BD0AC - 0x1E5658)
1E5654:  ADD             R0, PC; dword_6BD0AC
1E5656:  LDR             R1, [R0]
1E5658:  SUBS            R1, #1
1E565A:  STR             R1, [R0]
1E565C:  MOV             R0, R4
1E565E:  POP             {R4,R6,R7,PC}
