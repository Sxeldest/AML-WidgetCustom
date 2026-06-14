; =========================================================
; Game Engine Function: _Z33RpMaterialSetFreeListCreateParamsii
; Address            : 0x217110 - 0x21711E
; =========================================================

217110:  LDR             R2, =(dword_683BC0 - 0x217118)
217112:  LDR             R3, =(dword_683BBC - 0x21711A)
217114:  ADD             R2, PC; dword_683BC0
217116:  ADD             R3, PC; dword_683BBC
217118:  STR             R1, [R2]
21711A:  STR             R0, [R3]
21711C:  BX              LR
