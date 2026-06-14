; =========================================================
; Game Engine Function: _ZN6CRadar15LimitRadarPointER9CVector2D
; Address            : 0x43F710 - 0x43F75E
; =========================================================

43F710:  VLDR            S0, [R0]
43F714:  VLDR            S4, [R0,#4]
43F718:  VMUL.F32        S6, S0, S0
43F71C:  LDR             R1, =(gMobileMenu_ptr - 0x43F726)
43F71E:  VMUL.F32        S2, S4, S4
43F722:  ADD             R1, PC; gMobileMenu_ptr
43F724:  LDR             R1, [R1]; gMobileMenu
43F726:  LDRB.W          R1, [R1,#(byte_6E00D8 - 0x6E006C)]
43F72A:  VADD.F32        S2, S6, S2
43F72E:  CMP             R1, #0
43F730:  VSQRT.F32       S2, S2
43F734:  BNE             loc_43F758
43F736:  VMOV.F32        S6, #1.0
43F73A:  VCMPE.F32       S2, S6
43F73E:  VMRS            APSR_nzcv, FPSCR
43F742:  BLE             loc_43F758
43F744:  VDIV.F32        S6, S6, S2
43F748:  VMUL.F32        S0, S0, S6
43F74C:  VMUL.F32        S4, S6, S4
43F750:  VSTR            S0, [R0]
43F754:  VSTR            S4, [R0,#4]
43F758:  VMOV            R0, S2
43F75C:  BX              LR
