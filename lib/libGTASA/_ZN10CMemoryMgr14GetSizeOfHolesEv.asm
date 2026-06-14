; =========================================================
; Game Engine Function: _ZN10CMemoryMgr14GetSizeOfHolesEv
; Address            : 0x5D3014 - 0x5D302E
; =========================================================

5D3014:  PUSH            {R4,R6,R7,LR}
5D3016:  ADD             R7, SP, #8
5D3018:  LDR             R0, =(unk_A83D74 - 0x5D301E)
5D301A:  ADD             R0, PC; unk_A83D74 ; this
5D301C:  BLX.W           j__ZNK11CMemoryHeap14GetSizeOfHolesEv; CMemoryHeap::GetSizeOfHoles(void)
5D3020:  MOV             R4, R0
5D3022:  LDR             R0, =(dword_A83DBC - 0x5D3028)
5D3024:  ADD             R0, PC; dword_A83DBC ; this
5D3026:  BLX.W           j__ZNK11CMemoryHeap14GetSizeOfHolesEv; CMemoryHeap::GetSizeOfHoles(void)
5D302A:  ADD             R0, R4
5D302C:  POP             {R4,R6,R7,PC}
