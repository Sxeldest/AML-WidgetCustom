; =========================================================
; Game Engine Function: _Z35RpAnimBlendClumpExtractAssociationsP7RpClump
; Address            : 0x390CD0 - 0x390CE6
; =========================================================

390CD0:  LDR             R1, =(ClumpOffset_ptr - 0x390CD8)
390CD2:  MOVS            R2, #0
390CD4:  ADD             R1, PC; ClumpOffset_ptr
390CD6:  LDR             R1, [R1]; ClumpOffset
390CD8:  LDR             R1, [R1]
390CDA:  LDR             R0, [R0,R1]
390CDC:  LDR             R1, [R0]
390CDE:  STR             R2, [R0]
390CE0:  SUBS            R0, R1, #4
390CE2:  STR             R2, [R1,#4]
390CE4:  BX              LR
