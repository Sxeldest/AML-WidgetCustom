; =========================================================
; Game Engine Function: _Z13SetPipelineIDP8RpAtomicj
; Address            : 0x482544 - 0x482550
; =========================================================

482544:  LDR             R2, =(dword_6AF47C - 0x48254A)
482546:  ADD             R2, PC; dword_6AF47C
482548:  LDR             R2, [R2]
48254A:  STR             R1, [R0,R2]
48254C:  MOV             R0, R1
48254E:  BX              LR
