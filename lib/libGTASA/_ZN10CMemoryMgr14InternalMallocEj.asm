; =========================================================
; Game Engine Function: _ZN10CMemoryMgr14InternalMallocEj
; Address            : 0x5D2D18 - 0x5D2D42
; =========================================================

5D2D18:  PUSH            {R4,R6,R7,LR}
5D2D1A:  ADD             R7, SP, #8
5D2D1C:  MOV             R4, R0
5D2D1E:  CMP.W           R4, #0x800
5D2D22:  BHI             loc_5D2D34
5D2D24:  LDR             R0, =(dword_A83DBC - 0x5D2D2C)
5D2D26:  MOV             R1, R4; unsigned int
5D2D28:  ADD             R0, PC; dword_A83DBC ; this
5D2D2A:  BLX.W           j__ZN11CMemoryHeap6MallocEj; CMemoryHeap::Malloc(uint)
5D2D2E:  CMP             R0, #0
5D2D30:  IT NE
5D2D32:  POPNE           {R4,R6,R7,PC}
5D2D34:  LDR             R0, =(unk_A83D74 - 0x5D2D3C)
5D2D36:  MOV             R1, R4; unsigned int
5D2D38:  ADD             R0, PC; unk_A83D74 ; this
5D2D3A:  POP.W           {R4,R6,R7,LR}
5D2D3E:  B.W             sub_18DC4C
