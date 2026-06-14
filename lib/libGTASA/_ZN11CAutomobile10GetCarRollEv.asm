; =========================================================
; Game Engine Function: _ZN11CAutomobile10GetCarRollEv
; Address            : 0x55FDE0 - 0x55FE38
; =========================================================

55FDE0:  PUSH            {R7,LR}
55FDE2:  MOV             R7, SP
55FDE4:  LDR             R0, [R0,#0x14]
55FDE6:  VLDR            S0, [R0]
55FDEA:  VLDR            S2, [R0,#4]
55FDEE:  VMUL.F32        S0, S0, S0
55FDF2:  VMUL.F32        S2, S2, S2
55FDF6:  VADD.F32        S0, S0, S2
55FDFA:  VLDR            S2, [R0,#0x28]
55FDFE:  VCMPE.F32       S2, #0.0
55FE02:  VMRS            APSR_nzcv, FPSCR
55FE06:  VSQRT.F32       S0, S0
55FE0A:  VNEG.F32        S4, S0
55FE0E:  IT LT
55FE10:  VMOVLT.F32      S0, S4
55FE14:  LDR             R0, [R0,#8]; y
55FE16:  VMOV            R1, S0; x
55FE1A:  BLX             atan2f
55FE1E:  VLDR            S0, =180.0
55FE22:  VMOV            S2, R0
55FE26:  VMUL.F32        S0, S2, S0
55FE2A:  VLDR            S2, =3.1416
55FE2E:  VDIV.F32        S0, S0, S2
55FE32:  VMOV            R0, S0
55FE36:  POP             {R7,PC}
