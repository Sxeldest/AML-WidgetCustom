; =========================================================
; Game Engine Function: _ZN6CRadar32TransformRadarPointToScreenSpaceER9CVector2DRKS0_
; Address            : 0x43F5DC - 0x43F686
; =========================================================

43F5DC:  LDR             R2, =(gMobileMenu_ptr - 0x43F5E2)
43F5DE:  ADD             R2, PC; gMobileMenu_ptr
43F5E0:  LDR             R2, [R2]; gMobileMenu
43F5E2:  LDRB.W          R2, [R2,#(byte_6E00D8 - 0x6E006C)]
43F5E6:  CBZ             R2, loc_43F618
43F5E8:  LDR             R2, =(gMobileMenu_ptr - 0x43F5F2)
43F5EA:  VLDR            S0, [R1]
43F5EE:  ADD             R2, PC; gMobileMenu_ptr
43F5F0:  LDR             R2, [R2]; gMobileMenu
43F5F2:  VLDR            S2, [R2,#0x58]
43F5F6:  VLDR            S4, [R2,#0x5C]
43F5FA:  VMUL.F32        S0, S0, S2
43F5FE:  VADD.F32        S0, S4, S0
43F602:  VSTR            S0, [R0]
43F606:  VLDR            S2, [R2,#0x58]
43F60A:  VLDR            S4, [R1,#4]
43F60E:  VLDR            S0, [R2,#0x60]
43F612:  VMUL.F32        S2, S4, S2
43F616:  B               loc_43F67C
43F618:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43F61E)
43F61A:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43F61C:  LDR             R2, [R2]; CTouchInterface::m_pWidgets ...
43F61E:  LDR.W           R2, [R2,#(dword_6F3A18 - 0x6F3794)]
43F622:  CMP             R2, #0
43F624:  IT EQ
43F626:  BXEQ            LR
43F628:  VLDR            S0, [R2,#0x20]
43F62C:  VMOV.F32        S8, #0.5
43F630:  VLDR            S2, [R2,#0x28]
43F634:  VLDR            S6, [R1]
43F638:  VSUB.F32        S4, S2, S0
43F63C:  VADD.F32        S0, S0, S2
43F640:  VABS.F32        S4, S4
43F644:  VMUL.F32        S0, S0, S8
43F648:  VMUL.F32        S2, S6, S4
43F64C:  VMUL.F32        S2, S2, S8
43F650:  VADD.F32        S0, S0, S2
43F654:  VSTR            S0, [R0]
43F658:  VLDR            S0, [R2,#0x24]
43F65C:  VLDR            S2, [R2,#0x2C]
43F660:  VLDR            S6, [R1,#4]
43F664:  VSUB.F32        S4, S0, S2
43F668:  VADD.F32        S0, S0, S2
43F66C:  VABS.F32        S4, S4
43F670:  VMUL.F32        S0, S0, S8
43F674:  VMUL.F32        S2, S6, S4
43F678:  VMUL.F32        S2, S2, S8
43F67C:  VSUB.F32        S0, S0, S2
43F680:  VSTR            S0, [R0,#4]
43F684:  BX              LR
