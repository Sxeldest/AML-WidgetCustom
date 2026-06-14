; =========================================================
; Game Engine Function: _ZN6CCover17FindDirFromVectorE7CVector
; Address            : 0x4D598C - 0x4D59C8
; =========================================================

4D598C:  PUSH            {R7,LR}
4D598E:  MOV             R7, SP
4D5990:  EOR.W           R0, R0, #0x80000000; y
4D5994:  BLX             atan2f
4D5998:  VMOV            S2, R0
4D599C:  VLDR            S0, =6.2832
4D59A0:  VCMPE.F32       S2, #0.0
4D59A4:  VMRS            APSR_nzcv, FPSCR
4D59A8:  VADD.F32        S4, S2, S0
4D59AC:  IT GT
4D59AE:  VMOVGT.F32      S4, S2
4D59B2:  VLDR            S2, =255.0
4D59B6:  VMUL.F32        S2, S4, S2
4D59BA:  VDIV.F32        S0, S2, S0
4D59BE:  VCVT.U32.F32    S0, S0
4D59C2:  VMOV            R0, S0
4D59C6:  POP             {R7,PC}
