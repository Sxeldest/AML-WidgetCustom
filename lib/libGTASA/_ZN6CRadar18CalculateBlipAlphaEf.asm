; =========================================================
; Game Engine Function: _ZN6CRadar18CalculateBlipAlphaEf
; Address            : 0x44156C - 0x4415C0
; =========================================================

44156C:  VMOV.F32        S0, #6.0
441570:  VMOV            S2, R0
441574:  MOVS            R0, #0xFF
441576:  VCMPE.F32       S2, S0
44157A:  VMRS            APSR_nzcv, FPSCR
44157E:  BGE             loc_4415BC
441580:  LDR             R1, =(gMobileMenu_ptr - 0x441586)
441582:  ADD             R1, PC; gMobileMenu_ptr
441584:  LDR             R1, [R1]; gMobileMenu
441586:  LDRB.W          R1, [R1,#(byte_6E00D8 - 0x6E006C)]
44158A:  CBNZ            R1, loc_4415BC
44158C:  VDIV.F32        S0, S2, S0
441590:  VLDR            S2, =255.0
441594:  VMUL.F32        S0, S0, S2
441598:  VLDR            S2, =70.0
44159C:  VCVT.U32.F32    S0, S0
4415A0:  VMOV            R0, S0
4415A4:  RSB.W           R0, R0, #0xFF
4415A8:  VMOV            S0, R0
4415AC:  VCVT.F32.U32    S0, S0
4415B0:  VMAX.F32        D0, D0, D1
4415B4:  VCVT.U32.F32    S0, S0
4415B8:  VMOV            R0, S0
4415BC:  UXTB            R0, R0
4415BE:  BX              LR
