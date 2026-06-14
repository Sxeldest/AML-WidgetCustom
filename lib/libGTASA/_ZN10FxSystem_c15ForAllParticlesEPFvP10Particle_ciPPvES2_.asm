; =========================================================
; Game Engine Function: _ZN10FxSystem_c15ForAllParticlesEPFvP10Particle_ciPPvES2_
; Address            : 0x36EF6E - 0x36EFE2
; =========================================================

36EF6E:  PUSH            {R4-R7,LR}
36EF70:  ADD             R7, SP, #0xC
36EF72:  PUSH.W          {R8-R10}
36EF76:  SUB             SP, SP, #8
36EF78:  MOV             R5, R0
36EF7A:  STR             R2, [SP,#0x20+var_1C]
36EF7C:  LDR             R0, [R5,#8]
36EF7E:  MOV             R9, R1
36EF80:  LDRSB.W         R1, [R0,#0x1B]
36EF84:  CMP             R1, #1
36EF86:  BLT             loc_36EFD4
36EF88:  ADD.W           R8, SP, #0x20+var_1C
36EF8C:  MOVS            R6, #0
36EF8E:  MOV.W           R10, #0
36EF92:  LDR             R1, [R0,#0x1C]
36EF94:  LDR.W           R1, [R1,R6,LSL#2]
36EF98:  LDR             R4, [R1,#0x20]
36EF9A:  CBNZ            R4, loc_36EFA4
36EF9C:  B               loc_36EFC8
36EF9E:  LDR             R0, [R0,#0x1C]
36EFA0:  LDR.W           R1, [R0,R6,LSL#2]
36EFA4:  LDRSB.W         R1, [R1,#4]
36EFA8:  CMP             R1, #0
36EFAA:  ITT EQ
36EFAC:  LDREQ           R0, [R4,#0x28]
36EFAE:  CMPEQ           R0, R5
36EFB0:  BEQ             loc_36EFBC
36EFB2:  LDR             R4, [R4,#4]
36EFB4:  LDR             R0, [R5,#8]
36EFB6:  CMP             R4, #0
36EFB8:  BNE             loc_36EF9E
36EFBA:  B               loc_36EFC8
36EFBC:  MOV             R0, R4
36EFBE:  MOV             R2, R8
36EFC0:  BLX             R9
36EFC2:  ADD.W           R10, R10, #1
36EFC6:  B               loc_36EFB2
36EFC8:  LDRSB.W         R1, [R0,#0x1B]
36EFCC:  ADDS            R6, #1
36EFCE:  CMP             R6, R1
36EFD0:  BLT             loc_36EF92
36EFD2:  B               loc_36EFD8
36EFD4:  MOV.W           R10, #0
36EFD8:  MOV             R0, R10
36EFDA:  ADD             SP, SP, #8
36EFDC:  POP.W           {R8-R10}
36EFE0:  POP             {R4-R7,PC}
