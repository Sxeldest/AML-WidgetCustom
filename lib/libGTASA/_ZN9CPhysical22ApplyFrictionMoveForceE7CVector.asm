; =========================================================
; Game Engine Function: _ZN9CPhysical22ApplyFrictionMoveForceE7CVector
; Address            : 0x3FEABC - 0x3FEB20
; =========================================================

3FEABC:  LDR.W           R12, [R0,#0x44]
3FEAC0:  TST.W           R12, #0x60
3FEAC4:  IT NE
3FEAC6:  BXNE            LR
3FEAC8:  VMOV.F32        S0, #1.0
3FEACC:  VLDR            S8, [R0,#0x90]
3FEAD0:  VMOV            S10, R3
3FEAD4:  MOVS.W          R3, R12,LSL#24
3FEAD8:  VLDR            S2, [R0,#0x60]
3FEADC:  VMOV            S12, R2
3FEAE0:  VLDR            S4, [R0,#0x64]
3FEAE4:  VLDR            S6, [R0,#0x68]
3FEAE8:  VDIV.F32        S0, S0, S8
3FEAEC:  VLDR            S8, =0.0
3FEAF0:  VMUL.F32        S12, S0, S12
3FEAF4:  IT PL
3FEAF6:  VMOVPL.F32      S8, S10
3FEAFA:  VMOV            S10, R1
3FEAFE:  VMUL.F32        S10, S0, S10
3FEB02:  VMUL.F32        S0, S8, S0
3FEB06:  VADD.F32        S4, S12, S4
3FEB0A:  VADD.F32        S2, S2, S10
3FEB0E:  VADD.F32        S0, S0, S6
3FEB12:  VSTR            S2, [R0,#0x60]
3FEB16:  VSTR            S4, [R0,#0x64]
3FEB1A:  VSTR            S0, [R0,#0x68]
3FEB1E:  BX              LR
