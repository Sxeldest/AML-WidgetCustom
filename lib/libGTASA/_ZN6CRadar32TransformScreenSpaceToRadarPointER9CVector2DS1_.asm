; =========================================================
; Game Engine Function: _ZN6CRadar32TransformScreenSpaceToRadarPointER9CVector2DS1_
; Address            : 0x4425F0 - 0x44262C
; =========================================================

4425F0:  LDR             R2, =(gMobileMenu_ptr - 0x4425FA)
4425F2:  VLDR            S0, [R0]
4425F6:  ADD             R2, PC; gMobileMenu_ptr
4425F8:  LDR             R2, [R2]; gMobileMenu
4425FA:  VLDR            S4, [R2,#0x5C]
4425FE:  VLDR            S2, [R2,#0x58]
442602:  VSUB.F32        S0, S0, S4
442606:  VDIV.F32        S0, S0, S2
44260A:  VSTR            S0, [R1]
44260E:  VLDR            S0, [R2,#0x58]
442612:  VLDR            S2, [R2,#0x60]
442616:  VLDR            S4, [R0,#4]
44261A:  VNEG.F32        S0, S0
44261E:  VSUB.F32        S2, S4, S2
442622:  VDIV.F32        S0, S2, S0
442626:  VSTR            S0, [R1,#4]
44262A:  BX              LR
