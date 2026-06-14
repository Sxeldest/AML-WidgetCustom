; =========================================================
; Game Engine Function: _Z19IsVecIn3dAngledAreaR7CVectorfffffff
; Address            : 0x33E584 - 0x33E5D8
; =========================================================

33E584:  PUSH            {R7,LR}
33E586:  MOV             R7, SP
33E588:  SUB             SP, SP, #8; float
33E58A:  VLDR            S0, [R7,#0x10]
33E58E:  VMOV            S4, R3
33E592:  VLDR            S2, [R0,#8]
33E596:  VMIN.F32        D3, D2, D0
33E59A:  VCMPE.F32       S2, S6
33E59E:  VMRS            APSR_nzcv, FPSCR
33E5A2:  BLT             loc_33E5D2
33E5A4:  VMAX.F32        D0, D2, D0
33E5A8:  VCMPE.F32       S2, S0
33E5AC:  VMRS            APSR_nzcv, FPSCR
33E5B0:  BGT             loc_33E5D2
33E5B2:  VLDR            S4, [R7,#8]
33E5B6:  VLDR            S2, [R7,#0xC]
33E5BA:  VMOV            R3, S4; float
33E5BE:  VLDR            S0, [R7,#0x14]
33E5C2:  VSTR            S2, [SP,#0x10+var_10]
33E5C6:  VSTR            S0, [SP,#0x10+var_C]
33E5CA:  BLX             j__Z19IsVecIn2dAngledAreaR7CVectorfffff; IsVecIn2dAngledArea(CVector &,float,float,float,float,float)
33E5CE:  ADD             SP, SP, #8
33E5D0:  POP             {R7,PC}
33E5D2:  MOVS            R0, #0
33E5D4:  ADD             SP, SP, #8
33E5D6:  POP             {R7,PC}
