; =========================================================
; Game Engine Function: sub_98A0C
; Address            : 0x98A0C - 0x98C7E
; =========================================================

98A0C:  PUSH            {R4-R7,LR}
98A0E:  ADD             R7, SP, #0xC
98A10:  PUSH.W          {R8,R9,R11}
98A14:  LDR             R5, =(dword_1ACF68 - 0x98A1E)
98A16:  MOVW            R4, #0x1AB4
98A1A:  ADD             R5, PC; dword_1ACF68
98A1C:  LDR             R3, [R5]
98A1E:  LDR             R2, [R3,R4]
98A20:  CMP             R2, R0
98A22:  BEQ             loc_98A2A
98A24:  POP.W           {R8,R9,R11}
98A28:  POP             {R4-R7,PC}
98A2A:  ADD             R3, R4
98A2C:  LDRB.W          R2, [R3,#0x7D]
98A30:  CMP             R2, #0
98A32:  BEQ             loc_98A24
98A34:  LDR.W           R2, [R3,#0x94]
98A38:  CMP             R2, #0
98A3A:  ITT EQ
98A3C:  LDREQ.W         R2, [R3,#0xE4]
98A40:  CMPEQ           R2, #0
98A42:  BNE             loc_98A24
98A44:  LDR.W           R2, [R3,#0x84]
98A48:  CMP             R2, #0
98A4A:  ITT EQ
98A4C:  LDREQ           R2, [R3,#0x58]
98A4E:  CMPEQ           R2, #0
98A50:  BNE             loc_98A24
98A52:  LDR.W           LR, [R3,#0x88]
98A56:  AND.W           R4, R1, #5
98A5A:  VLDR            S4, [R0,#0x318]
98A5E:  VLDR            S6, [R0,#0x320]
98A62:  CMP.W           LR, #0
98A66:  BEQ             loc_98A74
98A68:  VLDR            S2, [R0,#0x314]
98A6C:  MOV             R12, LR
98A6E:  VLDR            S0, [R0,#0x31C]
98A72:  B               loc_98AF2
98A74:  CMP             R4, #0
98A76:  BEQ             loc_98A24
98A78:  VLDR            S8, [R0,#0x34]
98A7C:  ANDS.W          R12, R1, #4
98A80:  VLDR            S2, [R0,#0x24]
98A84:  VSUB.F32        S12, S6, S4
98A88:  VADD.F32        S8, S8, S8
98A8C:  VLDR            S0, [R0,#0x1C]
98A90:  VLDR            S10, [R0,#0x50]
98A94:  MOV.W           R4, #0
98A98:  MOV.W           R12, R12,LSR#1
98A9C:  VADD.F32        S2, S8, S2
98AA0:  VLDR            S8, =0.0
98AA4:  IT EQ
98AA6:  VMOVEQ.F32      S12, S8
98AAA:  VSUB.F32        S4, S4, S12
98AAE:  VSUB.F32        S6, S6, S12
98AB2:  VCMP.F32        S0, S2
98AB6:  VMRS            APSR_nzcv, FPSCR
98ABA:  IT GE
98ABC:  VMOVGE.F32      S2, S0
98AC0:  VSUB.F32        S0, S2, S10
98AC4:  STRB.W          R4, [R3,#0x7D]
98AC8:  MOVS            R4, #1
98ACA:  LDRB.W          R2, [R3,#0x65]
98ACE:  STRD.W          R1, R4, [R3,#0x80]
98AD2:  STRB.W          R2, [R3,#0x64]
98AD6:  STR.W           R12, [R3,#0x90]
98ADA:  VSTR            S4, [R0,#0x318]
98ADE:  VSTR            S6, [R0,#0x320]
98AE2:  VMOV.F32        S2, S0
98AE6:  VSTR            S0, [R0,#0x314]
98AEA:  VSTR            S0, [R0,#0x31C]
98AEE:  LDR.W           LR, [R3,#0x88]
98AF2:  CBZ             R4, loc_98B64
98AF4:  CMP.W           LR, #1
98AF8:  BNE             loc_98B64
98AFA:  VSUB.F32        S2, S6, S4
98AFE:  VLDR            S0, =-0.0
98B02:  ANDS.W          R8, R1, #4
98B06:  IT EQ
98B08:  VMOVEQ.F32      S2, S0
98B0C:  VLDR            S0, [R0,#0x50]
98B10:  VADD.F32        S6, S6, S2
98B14:  VADD.F32        S2, S4, S2
98B18:  MOVS            R4, #0
98B1A:  VNEG.F32        S0, S0
98B1E:  LDR             R6, [R3,#0x58]
98B20:  STRB.W          R4, [R3,#0x7D]
98B24:  MOV.W           LR, #1
98B28:  LDR             R4, [R3]
98B2A:  CMP.W           R8, #0
98B2E:  LDRB.W          R2, [R3,#0x65]
98B32:  STRD.W          R1, LR, [R3,#0x80]
98B36:  STR.W           LR, [R3,#0x88]
98B3A:  IT NE
98B3C:  MOVNE.W         R12, #3
98B40:  STRB.W          R2, [R3,#0x64]
98B44:  ADD.W           R2, R4, R6,LSL#4
98B48:  STR.W           R12, [R3,#0x90]
98B4C:  VSTR            S2, [R2,#0x318]
98B50:  VMOV.F32        S2, S0
98B54:  VSTR            S0, [R2,#0x314]
98B58:  VSTR            S0, [R2,#0x31C]
98B5C:  VSTR            S6, [R2,#0x320]
98B60:  LDR.W           LR, [R3,#0x88]
98B64:  ANDS.W          R8, R1, #0xA
98B68:  BEQ             loc_98C00
98B6A:  CMP.W           LR, #2
98B6E:  BNE             loc_98C00
98B70:  VLDR            S8, [R0,#0x38]
98B74:  VSUB.F32        S12, S0, S2
98B78:  VLDR            S6, [R0,#0x28]
98B7C:  ANDS.W          R6, R1, #8
98B80:  VADD.F32        S8, S8, S8
98B84:  VLDR            S4, [R0,#0x20]
98B88:  LDR             R2, [R5]
98B8A:  MOVW            R4, #0x1AB4
98B8E:  VLDR            S10, [R0,#0x54]
98B92:  MOV.W           R9, #2
98B96:  VADD.F32        S6, S8, S6
98B9A:  VLDR            S8, =0.0
98B9E:  IT EQ
98BA0:  VMOVEQ.F32      S12, S8
98BA4:  LDR.W           LR, [R2,R4]
98BA8:  ADD             R2, R4
98BAA:  VSUB.F32        S0, S0, S12
98BAE:  MOVS            R4, #0
98BB0:  VSUB.F32        S2, S2, S12
98BB4:  ADD.W           R11, R2, #0x80
98BB8:  VCMP.F32        S4, S6
98BBC:  VMRS            APSR_nzcv, FPSCR
98BC0:  IT GE
98BC2:  VMOVGE.F32      S6, S4
98BC6:  VSUB.F32        S4, S6, S10
98BCA:  CMP             R6, #0
98BCC:  STRB.W          R4, [R2,#0x7D]
98BD0:  IT NE
98BD2:  MOVNE           R12, R4
98BD4:  LDR             R4, [R2,#0x58]
98BD6:  MOVS            R6, #1
98BD8:  STM.W           R11, {R1,R6,R9}
98BDC:  LDRB.W          R6, [R2,#0x65]
98BE0:  STR.W           R12, [R2,#0x90]
98BE4:  STRB.W          R6, [R2,#0x64]
98BE8:  ADD.W           R2, LR, R4,LSL#4
98BEC:  VSTR            S2, [R2,#0x314]
98BF0:  VSTR            S4, [R2,#0x318]
98BF4:  VSTR            S0, [R2,#0x31C]
98BF8:  VSTR            S4, [R2,#0x320]
98BFC:  LDR.W           LR, [R3,#0x88]
98C00:  CMP.W           R8, #0
98C04:  BEQ.W           loc_98A24
98C08:  CMP.W           LR, #3
98C0C:  BNE.W           loc_98A24
98C10:  LDR             R2, [R5]
98C12:  MOVW            R3, #0x1AB4
98C16:  VLDR            S6, [R0,#0x54]
98C1A:  VSUB.F32        S4, S0, S2
98C1E:  ANDS.W          R0, R1, #8
98C22:  VLDR            S8, =-0.0
98C26:  LDR             R6, [R2,R3]
98C28:  IT EQ
98C2A:  VMOVEQ.F32      S4, S8
98C2E:  ADD             R2, R3
98C30:  VNEG.F32        S6, S6
98C34:  MOV.W           R0, #0
98C38:  VADD.F32        S0, S0, S4
98C3C:  STRB.W          R0, [R2,#0x7D]
98C40:  VADD.F32        S2, S2, S4
98C44:  MOV.W           R0, #1
98C48:  IT NE
98C4A:  MOVNE           R12, R0
98C4C:  LDR             R5, [R2,#0x58]
98C4E:  STRD.W          R1, R0, [R2,#0x80]
98C52:  MOVS            R3, #3
98C54:  LDRB.W          R0, [R2,#0x65]
98C58:  STRB.W          R0, [R2,#0x64]
98C5C:  ADD.W           R0, R6, R5,LSL#4
98C60:  STR.W           R12, [R2,#0x90]
98C64:  STR.W           R3, [R2,#0x88]
98C68:  VSTR            S2, [R0,#0x314]
98C6C:  VSTR            S6, [R0,#0x318]
98C70:  VSTR            S0, [R0,#0x31C]
98C74:  VSTR            S6, [R0,#0x320]
98C78:  POP.W           {R8,R9,R11}
98C7C:  POP             {R4-R7,PC}
