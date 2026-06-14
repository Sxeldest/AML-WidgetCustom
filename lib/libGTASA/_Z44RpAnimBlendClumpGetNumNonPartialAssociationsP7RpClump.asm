; =========================================================
; Game Engine Function: _Z44RpAnimBlendClumpGetNumNonPartialAssociationsP7RpClump
; Address            : 0x390CA4 - 0x390CCA
; =========================================================

390CA4:  LDR             R1, =(ClumpOffset_ptr - 0x390CAA)
390CA6:  ADD             R1, PC; ClumpOffset_ptr
390CA8:  LDR             R1, [R1]; ClumpOffset
390CAA:  LDR             R1, [R1]
390CAC:  LDR             R0, [R0,R1]
390CAE:  LDR             R1, [R0]
390CB0:  MOVS            R0, #0
390CB2:  CMP             R1, #0
390CB4:  IT EQ
390CB6:  BXEQ            LR
390CB8:  MOVS            R2, #1
390CBA:  LDRH            R3, [R1,#0x2A]
390CBC:  LDR             R1, [R1]
390CBE:  BIC.W           R3, R2, R3,LSR#4
390CC2:  CMP             R1, #0
390CC4:  ADD             R0, R3
390CC6:  BNE             loc_390CBA
390CC8:  BX              LR
