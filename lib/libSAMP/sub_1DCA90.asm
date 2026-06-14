; =========================================================
; Game Engine Function: sub_1DCA90
; Address            : 0x1DCA90 - 0x1DCAD4
; =========================================================

1DCA90:  CMP             R2, #3
1DCA94:  LDREQ           R0, [R0,#0x8C]
1DCA98:  STREQ           R0, [R3]
1DCA9C:  BXEQ            LR
1DCAA0:  CMP             R2, #2
1DCAA4:  BEQ             loc_1DCAB8
1DCAA8:  CMP             R2, #1
1DCAAC:  BNE             loc_1DCAC8
1DCAB0:  VLDR            S0, [R0,#0x84]
1DCAB4:  B               loc_1DCABC
1DCAB8:  VLDR            S0, [R0,#0x88]
1DCABC:  VCVT.S32.F32    S0, S0
1DCAC0:  VSTR            S0, [R3]
1DCAC4:  BX              LR
1DCAC8:  MOV             R0, R1
1DCACC:  MOVW            R1, #0xA002
1DCAD0:  B               j_alSetError
