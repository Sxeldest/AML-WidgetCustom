; =========================================================
; Game Engine Function: _ZN5CFont12SetDropColorE5CRGBA
; Address            : 0x5AB218 - 0x5AB270
; =========================================================

5AB218:  LDR             R1, =(_ZN5CFont7DetailsE_ptr - 0x5AB220)
5AB21A:  LDRB            R2, [R0]
5AB21C:  ADD             R1, PC; _ZN5CFont7DetailsE_ptr
5AB21E:  VLDR            S0, =255.0
5AB222:  LDR             R1, [R1]; CFont::Details ...
5AB224:  STRB.W          R2, [R1,#(byte_A297EB - 0xA297B4)]
5AB228:  LDRB            R2, [R0,#1]
5AB22A:  STRB.W          R2, [R1,#(byte_A297EC - 0xA297B4)]
5AB22E:  VLDR            S2, [R1,#0x20]
5AB232:  LDRB            R2, [R0,#2]
5AB234:  STRB.W          R2, [R1,#(byte_A297ED - 0xA297B4)]
5AB238:  VCMPE.F32       S2, S0
5AB23C:  LDRB            R0, [R0,#3]
5AB23E:  VMRS            APSR_nzcv, FPSCR
5AB242:  STRB.W          R0, [R1,#(byte_A297EE - 0xA297B4)]
5AB246:  IT GE
5AB248:  BXGE            LR
5AB24A:  LDR             R0, =(_ZN5CFont7DetailsE_ptr - 0x5AB250)
5AB24C:  ADD             R0, PC; _ZN5CFont7DetailsE_ptr
5AB24E:  LDR             R0, [R0]; CFont::Details ...
5AB250:  LDRB            R1, [R0,#(_ZN5CFont7DetailsE+3 - 0xA297B4)]; CFont::Details
5AB252:  VMOV            S4, R1
5AB256:  VCVT.F32.U32    S4, S4
5AB25A:  VMUL.F32        S2, S2, S4
5AB25E:  VDIV.F32        S0, S2, S0
5AB262:  VCVT.U32.F32    S0, S0
5AB266:  VMOV            R1, S0
5AB26A:  STRB.W          R1, [R0,#(byte_A297EE - 0xA297B4)]
5AB26E:  BX              LR
