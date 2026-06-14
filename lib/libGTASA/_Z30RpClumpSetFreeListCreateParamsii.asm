; =========================================================
; Game Engine Function: _Z30RpClumpSetFreeListCreateParamsii
; Address            : 0x213C34 - 0x213C42
; =========================================================

213C34:  LDR             R2, =(dword_683B44 - 0x213C3C)
213C36:  LDR             R3, =(dword_683B40 - 0x213C3E)
213C38:  ADD             R2, PC; dword_683B44
213C3A:  ADD             R3, PC; dword_683B40
213C3C:  STR             R1, [R2]
213C3E:  STR             R0, [R3]
213C40:  BX              LR
