; =========================================================
; Game Engine Function: _Z13GetPipelineIDP8RpAtomic
; Address            : 0x482534 - 0x48253E
; =========================================================

482534:  LDR             R1, =(dword_6AF47C - 0x48253A)
482536:  ADD             R1, PC; dword_6AF47C
482538:  LDR             R1, [R1]
48253A:  LDR             R0, [R0,R1]
48253C:  BX              LR
