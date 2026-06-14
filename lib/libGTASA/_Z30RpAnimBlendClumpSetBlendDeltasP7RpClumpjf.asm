; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpSetBlendDeltasP7RpClumpjf
; Address            : 0x390938 - 0x39096A
; =========================================================

390938:  LDR             R3, =(ClumpOffset_ptr - 0x39093E)
39093A:  ADD             R3, PC; ClumpOffset_ptr
39093C:  LDR             R3, [R3]; ClumpOffset
39093E:  LDR             R3, [R3]
390940:  LDR             R0, [R0,R3]
390942:  LDR             R0, [R0]
390944:  CMP             R0, #0
390946:  IT EQ
390948:  BXEQ            LR
39094A:  VMOV            S0, R2
39094E:  LDR             R2, [R0]
390950:  CBZ             R1, loc_39095E
390952:  LDRH            R3, [R0,#0x2A]
390954:  TST             R3, R1
390956:  IT NE
390958:  VSTRNE          S0, [R0,#0x18]
39095C:  B               loc_390962
39095E:  VSTR            S0, [R0,#0x18]
390962:  CMP             R2, #0
390964:  MOV             R0, R2
390966:  BNE             loc_39094E
390968:  BX              LR
