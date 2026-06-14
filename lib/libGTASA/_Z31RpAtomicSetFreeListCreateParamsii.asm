; =========================================================
; Game Engine Function: _Z31RpAtomicSetFreeListCreateParamsii
; Address            : 0x213C1C - 0x213C2A
; =========================================================

213C1C:  LDR             R2, =(dword_683B3C - 0x213C24)
213C1E:  LDR             R3, =(dword_683B38 - 0x213C26)
213C20:  ADD             R2, PC; dword_683B3C
213C22:  ADD             R3, PC; dword_683B38
213C24:  STR             R1, [R2]
213C26:  STR             R0, [R3]
213C28:  BX              LR
