; =========================================================
; Game Engine Function: sub_1A9BFC
; Address            : 0x1A9BFC - 0x1A9C24
; =========================================================

1A9BFC:  PUSH            {R7,LR}
1A9BFE:  MOV             R7, SP
1A9C00:  LDR             R0, =(unk_A83D74 - 0x1A9C06)
1A9C02:  ADD             R0, PC; unk_A83D74 ; this
1A9C04:  BLX             j__ZN11CMemoryHeapC2Ev; CMemoryHeap::CMemoryHeap(void)
1A9C08:  LDR             R0, =(dword_A83DBC - 0x1A9C0E)
1A9C0A:  ADD             R0, PC; dword_A83DBC ; this
1A9C0C:  BLX             j__ZN11CMemoryHeapC2Ev; CMemoryHeap::CMemoryHeap(void)
1A9C10:  LDR             R0, =(dword_A83E04 - 0x1A9C16)
1A9C12:  ADD             R0, PC; dword_A83E04 ; this
1A9C14:  BLX             j__ZN11CMemoryHeapC2Ev; CMemoryHeap::CMemoryHeap(void)
1A9C18:  LDR             R0, =(_ZN10CMemoryMgr9m_idStackE_ptr - 0x1A9C20)
1A9C1A:  MOVS            R1, #0
1A9C1C:  ADD             R0, PC; _ZN10CMemoryMgr9m_idStackE_ptr
1A9C1E:  LDR             R0, [R0]; CMemoryMgr::m_idStack ...
1A9C20:  STR             R1, [R0,#(dword_A83E9C - 0xA83E5C)]
1A9C22:  POP             {R7,PC}
