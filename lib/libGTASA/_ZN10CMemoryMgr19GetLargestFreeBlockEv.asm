; =========================================================
; Game Engine Function: _ZN10CMemoryMgr19GetLargestFreeBlockEv
; Address            : 0x5D3004 - 0x5D300E
; =========================================================

5D3004:  LDR             R0, =(unk_A83D74 - 0x5D300A)
5D3006:  ADD             R0, PC; unk_A83D74
5D3008:  LDR             R0, [R0,#(dword_A83DA8 - 0xA83D74)]
5D300A:  LDR             R0, [R0]
5D300C:  BX              LR
