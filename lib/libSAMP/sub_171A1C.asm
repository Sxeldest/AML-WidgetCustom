; =========================================================
; Game Engine Function: sub_171A1C
; Address            : 0x171A1C - 0x171AC8
; =========================================================

171A1C:  VLDR            S8, [R1,#0xC]
171A20:  VMOV.F32        S14, #-1.0
171A24:  VLDR            S2, [R1,#0x14]
171A28:  VCMP.F32        S1, #0.0
171A2C:  VLDR            S6, [R1,#0x10]
171A30:  VLDR            S4, [R1,#0x18]
171A34:  VADD.F32        S10, S8, S2
171A38:  VMRS            APSR_nzcv, FPSCR
171A3C:  VADD.F32        S12, S6, S4
171A40:  VADD.F32        S4, S10, S14
171A44:  VADD.F32        S2, S12, S14
171A48:  ITT EQ
171A4A:  VMOVEQ.F32      S12, S2
171A4E:  VMOVEQ.F32      S10, S4
171A52:  CMP             R2, #3; switch 4 cases
171A54:  BHI             def_171A5A; jumptable 00171A5A default case
171A56:  ADR.W           R1, jpt_171A5A
171A5A:  TBB.W           [PC,R2]; switch jump
171A5E:  DCB 2; jump table for switch statement
171A5F:  DCB 0x12
171A60:  DCB 0x1B
171A61:  DCB 0x24
171A62:  VADD.F32        S4, S6, S1; jumptable 00171A5A case 0
171A66:  VSUB.F32        S2, S10, S0
171A6A:  VSUB.F32        S6, S6, S1
171A6E:  B               loc_171AA0
171A70:  VLDR            S2, =-3.4028e38; jumptable 00171A5A default case
171A74:  VLDR            S0, =3.4028e38
171A78:  VMOV.F32        S4, S2
171A7C:  VMOV.F32        S6, S0
171A80:  B               loc_171AB6
171A82:  VSUB.F32        S4, S12, S0; jumptable 00171A5A case 1
171A86:  VADD.F32        S6, S6, S0
171A8A:  VADD.F32        S2, S10, S1
171A8E:  VSUB.F32        S0, S10, S1
171A92:  B               loc_171AB6
171A94:  VSUB.F32        S2, S10, S0; jumptable 00171A5A case 2
171A98:  VADD.F32        S4, S12, S1
171A9C:  VSUB.F32        S6, S12, S1
171AA0:  VADD.F32        S0, S8, S0
171AA4:  B               loc_171AB6
171AA6:  VSUB.F32        S4, S12, S0; jumptable 00171A5A case 3
171AAA:  VADD.F32        S6, S6, S0
171AAE:  VADD.F32        S2, S8, S1
171AB2:  VSUB.F32        S0, S8, S1
171AB6:  VSTR            S0, [R0]
171ABA:  VSTR            S6, [R0,#4]
171ABE:  VSTR            S2, [R0,#8]
171AC2:  VSTR            S4, [R0,#0xC]
171AC6:  BX              LR
