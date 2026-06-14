; =========================================================
; Game Engine Function: sub_88B28
; Address            : 0x88B28 - 0x88C0C
; =========================================================

88B28:  PUSH            {R4-R7,LR}
88B2A:  ADD             R7, SP, #0xC
88B2C:  PUSH.W          {R11}
88B30:  VPUSH           {D8-D9}
88B34:  VMOV            S18, R1
88B38:  LDRD.W          R6, R5, [R7,#arg_0]
88B3C:  VMOV            S16, R2
88B40:  MOV             R4, R3
88B42:  VCMP.F32        S18, #0.0
88B46:  VMRS            APSR_nzcv, FPSCR
88B4A:  BNE             loc_88B62
88B4C:  VSTR            S16, [R5]
88B50:  VSTR            S16, [R6]
88B54:  VSTR            S16, [R4]
88B58:  VPOP            {D8-D9}
88B5C:  POP.W           {R11}
88B60:  POP             {R4-R7,PC}
88B62:  MOV.W           R1, #0x3F800000; y
88B66:  BLX             fmodf
88B6A:  VLDR            S0, =0.16667
88B6E:  VMOV            S2, R0
88B72:  VMOV.F32        S4, #1.0
88B76:  VDIV.F32        S0, S2, S0
88B7A:  VCVT.S32.F32    S2, S0
88B7E:  VMOV            R0, S2
88B82:  VCVT.F32.S32    S2, S2
88B86:  VSUB.F32        S6, S0, S2
88B8A:  VMOV.F32        S2, S4
88B8E:  VSUB.F32        S0, S4, S18
88B92:  VMLS.F32        S2, S18, S6
88B96:  CMP             R0, #4; switch 5 cases
88B98:  VMUL.F32        S0, S0, S16
88B9C:  VMUL.F32        S2, S2, S16
88BA0:  BHI             def_88BAE; jumptable 00088BAE default case
88BA2:  VSUB.F32        S6, S4, S6
88BA6:  VMLS.F32        S4, S18, S6
88BAA:  VMUL.F32        S4, S4, S16
88BAE:  TBB.W           [PC,R0]; switch jump
88BB2:  DCB 3; jump table for switch statement
88BB3:  DCB 0x11
88BB4:  DCB 0x18
88BB5:  DCB 0x1F
88BB6:  DCB 0x26
88BB7:  ALIGN 2
88BB8:  VSTR            S16, [R4]; jumptable 00088BAE case 0
88BBC:  VSTR            S4, [R6]
88BC0:  VSTR            S0, [R5]
88BC4:  B               loc_88B58
88BC6:  VSTR            S16, [R4]; jumptable 00088BAE default case
88BCA:  VSTR            S0, [R6]
88BCE:  VSTR            S2, [R5]
88BD2:  B               loc_88B58
88BD4:  VSTR            S2, [R4]; jumptable 00088BAE case 1
88BD8:  VSTR            S16, [R6]
88BDC:  VSTR            S0, [R5]
88BE0:  B               loc_88B58
88BE2:  VSTR            S0, [R4]; jumptable 00088BAE case 2
88BE6:  VSTR            S16, [R6]
88BEA:  VSTR            S4, [R5]
88BEE:  B               loc_88B58
88BF0:  VSTR            S0, [R4]; jumptable 00088BAE case 3
88BF4:  VSTR            S2, [R6]
88BF8:  VSTR            S16, [R5]
88BFC:  B               loc_88B58
88BFE:  VSTR            S4, [R4]; jumptable 00088BAE case 4
88C02:  VSTR            S0, [R6]
88C06:  VSTR            S16, [R5]
88C0A:  B               loc_88B58
