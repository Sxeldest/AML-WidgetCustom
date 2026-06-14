; =========================================================
; Game Engine Function: sub_1DCAD4
; Address            : 0x1DCAD4 - 0x1DCB18
; =========================================================

1DCAD4:  CMP             R2, #3
1DCAD8:  LDREQ           R0, [R0,#0x8C]
1DCADC:  STREQ           R0, [R3]
1DCAE0:  BXEQ            LR
1DCAE4:  CMP             R2, #2
1DCAE8:  BEQ             loc_1DCAFC
1DCAEC:  CMP             R2, #1
1DCAF0:  BNE             loc_1DCB0C
1DCAF4:  VLDR            S0, [R0,#0x84]
1DCAF8:  B               loc_1DCB00
1DCAFC:  VLDR            S0, [R0,#0x88]
1DCB00:  VCVT.S32.F32    S0, S0
1DCB04:  VSTR            S0, [R3]
1DCB08:  BX              LR
1DCB0C:  MOV             R0, R1
1DCB10:  MOVW            R1, #0xA002
1DCB14:  B               j_alSetError
