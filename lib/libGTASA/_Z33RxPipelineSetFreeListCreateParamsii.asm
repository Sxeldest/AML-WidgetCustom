; =========================================================
; Game Engine Function: _Z33RxPipelineSetFreeListCreateParamsii
; Address            : 0x1DE234 - 0x1DE242
; =========================================================

1DE234:  LDR             R2, =(dword_6826B4 - 0x1DE23C)
1DE236:  LDR             R3, =(dword_6826B0 - 0x1DE23E)
1DE238:  ADD             R2, PC; dword_6826B4
1DE23A:  ADD             R3, PC; dword_6826B0
1DE23C:  STR             R1, [R2]
1DE23E:  STR             R0, [R3]
1DE240:  BX              LR
