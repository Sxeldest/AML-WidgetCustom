; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoder17GetStreamLengthMsEv
; Address            : 0x3B9888 - 0x3B98BE
; =========================================================

3B9888:  LDRB            R1, [R0,#8]
3B988A:  CMP             R1, #0
3B988C:  ITT EQ
3B988E:  MOVEQ.W         R0, #0xFFFFFFFF
3B9892:  BXEQ            LR
3B9894:  LDR             R1, [R0,#0x28]
3B9896:  VLDR            S0, [R0,#0x38]
3B989A:  LSLS            R0, R1, #2
3B989C:  VCVT.F32.U32    S0, S0
3B98A0:  VMOV            S2, R0
3B98A4:  VCVT.F32.U32    S2, S2
3B98A8:  VDIV.F32        S0, S0, S2
3B98AC:  VLDR            S2, =1000.0
3B98B0:  VMUL.F32        S0, S0, S2
3B98B4:  VCVT.S32.F32    S0, S0
3B98B8:  VMOV            R0, S0
3B98BC:  BX              LR
