; =========================================================
; Game Engine Function: _Z18emu_glLightModelivjPKi
; Address            : 0x1B9C78 - 0x1B9CEE
; =========================================================

1B9C78:  MOVW            R2, #0xB53
1B9C7C:  CMP             R0, R2
1B9C7E:  BNE             locret_1B9CEC
1B9C80:  VLD1.32         {D16-D17}, [R1]
1B9C84:  VMOV.I32        Q9, #0x30000000
1B9C88:  VCVT.F32.S32    Q8, Q8
1B9C8C:  LDR             R0, =(AmbientLightColor_ptr - 0x1B9C92)
1B9C8E:  ADD             R0, PC; AmbientLightColor_ptr
1B9C90:  VMUL.F32        Q8, Q8, Q9
1B9C94:  LDR             R0, [R0]; AmbientLightColor
1B9C96:  VMOV.F32        Q9, #1.5
1B9C9A:  VLDR            S4, [R0]
1B9C9E:  VMUL.F32        Q0, Q8, Q9
1B9CA2:  VCMP.F32        S4, S0
1B9CA6:  VMRS            APSR_nzcv, FPSCR
1B9CAA:  BNE             loc_1B9CD8
1B9CAC:  VLDR            S4, [R0,#4]
1B9CB0:  VCMP.F32        S4, S1
1B9CB4:  VMRS            APSR_nzcv, FPSCR
1B9CB8:  ITTT EQ
1B9CBA:  VLDREQ          S4, [R0,#8]
1B9CBE:  VCMPEQ.F32      S4, S2
1B9CC2:  VMRSEQ          APSR_nzcv, FPSCR
1B9CC6:  BNE             loc_1B9CD8
1B9CC8:  VLDR            S4, [R0,#0xC]
1B9CCC:  VCMP.F32        S4, S3
1B9CD0:  VMRS            APSR_nzcv, FPSCR
1B9CD4:  IT EQ
1B9CD6:  BXEQ            LR
1B9CD8:  LDR             R0, =(AmbientLightColor_ptr - 0x1B9CE0)
1B9CDA:  LDR             R1, =(AmbientLightDirty_ptr - 0x1B9CE2)
1B9CDC:  ADD             R0, PC; AmbientLightColor_ptr
1B9CDE:  ADD             R1, PC; AmbientLightDirty_ptr
1B9CE0:  LDR             R0, [R0]; AmbientLightColor
1B9CE2:  LDR             R1, [R1]; AmbientLightDirty
1B9CE4:  VST1.32         {D0-D1}, [R0]
1B9CE8:  MOVS            R0, #1
1B9CEA:  STRB            R0, [R1]
1B9CEC:  BX              LR
