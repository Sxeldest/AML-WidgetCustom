; =========================================================
; Game Engine Function: _Z41RpAnimBlendClumpGetMainPartialAssociationP7RpClump
; Address            : 0x390AF4 - 0x390B42
; =========================================================

390AF4:  LDR             R1, =(ClumpOffset_ptr - 0x390AFA)
390AF6:  ADD             R1, PC; ClumpOffset_ptr
390AF8:  LDR             R1, [R1]; ClumpOffset
390AFA:  LDR             R1, [R1]
390AFC:  LDR             R0, [R0,R1]
390AFE:  LDR             R1, [R0]
390B00:  CMP             R1, #0
390B02:  ITT EQ
390B04:  MOVEQ           R0, #0
390B06:  BXEQ            LR
390B08:  VLDR            S0, =0.0
390B0C:  MOVS            R2, #0
390B0E:  B               loc_390B1A
390B10:  LDR             R1, [R1]
390B12:  CMP             R1, #0
390B14:  ITT EQ
390B16:  MOVEQ           R0, R2
390B18:  BXEQ            LR
390B1A:  LDRB.W          R0, [R1,#0x2A]
390B1E:  LSLS            R0, R0, #0x1B
390B20:  BPL             loc_390B10
390B22:  SUBS            R0, R1, #4
390B24:  VLDR            S2, [R0,#0x18]
390B28:  VCMPE.F32       S2, S0
390B2C:  VMRS            APSR_nzcv, FPSCR
390B30:  BLE             loc_390B10
390B32:  LDR             R1, [R1]
390B34:  VMOV.F32        S0, S2
390B38:  MOV             R2, R0
390B3A:  CMP             R1, #0
390B3C:  IT EQ
390B3E:  BXEQ            LR
390B40:  B               loc_390B1A
