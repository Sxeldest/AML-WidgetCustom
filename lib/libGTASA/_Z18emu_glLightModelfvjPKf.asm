; =========================================================
; Game Engine Function: _Z18emu_glLightModelfvjPKf
; Address            : 0x1B9BFC - 0x1B9C66
; =========================================================

1B9BFC:  MOVW            R2, #0xB53
1B9C00:  CMP             R0, R2
1B9C02:  BNE             locret_1B9C64
1B9C04:  LDR             R0, =(AmbientLightColor_ptr - 0x1B9C12)
1B9C06:  VMOV.F32        Q8, #1.5
1B9C0A:  VLD1.32         {D18-D19}, [R1]
1B9C0E:  ADD             R0, PC; AmbientLightColor_ptr
1B9C10:  VMUL.F32        Q0, Q9, Q8
1B9C14:  LDR             R0, [R0]; AmbientLightColor
1B9C16:  VLDR            S4, [R0]
1B9C1A:  VCMP.F32        S4, S0
1B9C1E:  VMRS            APSR_nzcv, FPSCR
1B9C22:  BNE             loc_1B9C50
1B9C24:  VLDR            S4, [R0,#4]
1B9C28:  VCMP.F32        S4, S1
1B9C2C:  VMRS            APSR_nzcv, FPSCR
1B9C30:  ITTT EQ
1B9C32:  VLDREQ          S4, [R0,#8]
1B9C36:  VCMPEQ.F32      S4, S2
1B9C3A:  VMRSEQ          APSR_nzcv, FPSCR
1B9C3E:  BNE             loc_1B9C50
1B9C40:  VLDR            S4, [R0,#0xC]
1B9C44:  VCMP.F32        S4, S3
1B9C48:  VMRS            APSR_nzcv, FPSCR
1B9C4C:  IT EQ
1B9C4E:  BXEQ            LR
1B9C50:  LDR             R0, =(AmbientLightColor_ptr - 0x1B9C58)
1B9C52:  LDR             R1, =(AmbientLightDirty_ptr - 0x1B9C5A)
1B9C54:  ADD             R0, PC; AmbientLightColor_ptr
1B9C56:  ADD             R1, PC; AmbientLightDirty_ptr
1B9C58:  LDR             R0, [R0]; AmbientLightColor
1B9C5A:  LDR             R1, [R1]; AmbientLightDirty
1B9C5C:  VST1.32         {D0-D1}, [R0]
1B9C60:  MOVS            R0, #1
1B9C62:  STRB            R0, [R1]
1B9C64:  BX              LR
