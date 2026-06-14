; =========================================================
; Game Engine Function: _ZN5CFont8SetColorE5CRGBA
; Address            : 0x5AAFC8 - 0x5AB014
; =========================================================

5AAFC8:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AAFD0)
5AAFCA:  LDRB            R2, [R0]
5AAFCC:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AAFCE:  VLDR            S0, =255.0
5AAFD2:  LDR             R1, [R1]; CFont::Details ...
5AAFD4:  STRB            R2, [R1]; CFont::Details
5AAFD6:  LDRB            R2, [R0,#1]
5AAFD8:  STRB            R2, [R1,#(_ZN5CFont7DetailsE+1 - 0xA297B4)]; CFont::Details
5AAFDA:  VLDR            S2, [R1,#0x20]
5AAFDE:  LDRB            R2, [R0,#2]
5AAFE0:  STRB            R2, [R1,#(_ZN5CFont7DetailsE+2 - 0xA297B4)]; CFont::Details
5AAFE2:  VCMPE.F32       S2, S0
5AAFE6:  LDRB            R0, [R0,#3]
5AAFE8:  VMRS            APSR_nzcv, FPSCR
5AAFEC:  STRB            R0, [R1,#(_ZN5CFont7DetailsE+3 - 0xA297B4)]; CFont::Details
5AAFEE:  IT GE
5AAFF0:  BXGE            LR
5AAFF2:  VMOV            S4, R0
5AAFF6:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AB000)
5AAFF8:  VCVT.F32.U32    S4, S4
5AAFFC:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AAFFE:  LDR             R0, [R0]; CFont::Details ...
5AB000:  VMUL.F32        S2, S2, S4
5AB004:  VDIV.F32        S0, S2, S0
5AB008:  VCVT.U32.F32    S0, S0
5AB00C:  VMOV            R1, S0
5AB010:  STRB            R1, [R0,#(_ZN5CFont7DetailsE+3 - 0xA297B4)]; CFont::Details
5AB012:  BX              LR
