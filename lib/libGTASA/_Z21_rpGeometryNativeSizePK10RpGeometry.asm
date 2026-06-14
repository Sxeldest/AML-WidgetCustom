; =========================================================
; Game Engine Function: _Z21_rpGeometryNativeSizePK10RpGeometry
; Address            : 0x220D1C - 0x220E62
; =========================================================

220D1C:  PUSH            {R4-R7,LR}
220D1E:  ADD             R7, SP, #0xC
220D20:  PUSH.W          {R11}
220D24:  MOV             R4, R0
220D26:  LDR             R0, [R4,#8]
220D28:  TST.W           R0, #0x1000000
220D2C:  BNE             loc_220D36
220D2E:  MOVS            R0, #0
220D30:  POP.W           {R11}
220D34:  POP             {R4-R7,PC}
220D36:  LDR             R1, [R4,#0x14]
220D38:  LDR             R2, [R4,#0x1C]
220D3A:  ADD.W           R3, R1, R1,LSL#1
220D3E:  CMP             R2, #1
220D40:  MOV.W           R5, R3,LSL#2
220D44:  BLT             loc_220D7C
220D46:  CMP             R1, #1
220D48:  BLT             loc_220D78
220D4A:  LDR             R3, [R4,#0x34]
220D4C:  MOVS            R6, #0
220D4E:  VLDR            S0, =63.998
220D52:  ADDS            R3, #4
220D54:  VLDR            S2, [R3,#-4]
220D58:  VCMPE.F32       S2, S0
220D5C:  VMRS            APSR_nzcv, FPSCR
220D60:  ITTT LE
220D62:  VLDRLE          S2, [R3]
220D66:  VCMPELE.F32     S2, S0
220D6A:  VMRSLE          APSR_nzcv, FPSCR
220D6E:  BGT             loc_220D80
220D70:  ADDS            R6, #1
220D72:  ADDS            R3, #8
220D74:  CMP             R6, R1
220D76:  BLT             loc_220D54
220D78:  MOVS            R3, #2
220D7A:  B               loc_220D82
220D7C:  MOVS            R6, #1
220D7E:  B               loc_220D8A
220D80:  MOVS            R3, #3
220D82:  LSLS            R2, R3
220D84:  MOVS            R6, #2
220D86:  MLA.W           R5, R2, R1, R5
220D8A:  LSLS            R2, R0, #0x1B
220D8C:  ITT MI
220D8E:  ADDMI.W         R5, R5, R1,LSL#2
220D92:  ADDMI           R6, #1
220D94:  LSLS            R0, R0, #0x1C
220D96:  MOV             R0, R4
220D98:  ITT MI
220D9A:  ADDMI.W         R5, R5, R1,LSL#2
220D9E:  ADDMI           R6, #1
220DA0:  BLX             j_RpSkinGeometryGetSkin
220DA4:  CMP             R0, #0
220DA6:  BEQ             loc_220E52
220DA8:  LDR             R0, [R0,#0x10]
220DAA:  ADDS            R6, #2
220DAC:  CMP             R0, #4
220DAE:  BNE             loc_220DCA
220DB0:  MOV             R0, R4
220DB2:  BLX             j_RpSkinGeometryGetSkin
220DB6:  BLX             j_RpSkinGetVertexBoneWeights
220DBA:  LDR             R4, [R4,#0x14]
220DBC:  CBZ             R4, loc_220DCE
220DBE:  VLDR            S0, =0.0
220DC2:  CMP             R4, #4
220DC4:  BCS             loc_220DD2
220DC6:  MOV             R1, R4
220DC8:  B               loc_220E26
220DCA:  LDR             R4, [R4,#0x14]
220DCC:  B               loc_220E4E
220DCE:  MOVS            R4, #0
220DD0:  B               loc_220E4E
220DD2:  ANDS.W          R2, R4, #3
220DD6:  MOV             R1, R4
220DD8:  IT EQ
220DDA:  MOVEQ           R2, #4
220DDC:  SUBS            R3, R4, R2
220DDE:  BEQ             loc_220E26
220DE0:  VMOV.I32        Q8, #0
220DE4:  ADD.W           R3, R0, R3,LSL#4
220DE8:  ADDS            R0, #0xC
220DEA:  MOV             R1, R4
220DEC:  VLD4.32         {D18,D20,D22,D24}, [R0]!
220DF0:  SUBS            R1, #4
220DF2:  CMP             R2, R1
220DF4:  VLD4.32         {D19,D21,D23,D25}, [R0]!
220DF8:  VMAX.F32        Q8, Q9, Q8
220DFC:  BNE             loc_220DEC
220DFE:  VEXT.8          Q9, Q8, Q8, #8
220E02:  MOV             R1, R2
220E04:  VMAX.F32        Q0, Q8, Q9
220E08:  VDUP.32         Q8, D0[1]
220E0C:  VCGT.F32        Q8, Q0, Q8
220E10:  VMOVN.I32       D16, Q8
220E14:  VMOV.U16        R0, D16[0]
220E18:  LSLS            R0, R0, #0x1F
220E1A:  IT NE
220E1C:  VMOVNE.F32      S1, S0
220E20:  MOV             R0, R3
220E22:  VMOV.F32        S0, S1
220E26:  ADDS            R0, #0xC
220E28:  VLDR            S2, [R0]
220E2C:  ADDS            R0, #0x10
220E2E:  SUBS            R1, #1
220E30:  VMAX.F32        D0, D1, D0
220E34:  BNE             loc_220E28
220E36:  VLDR            S2, =0.07
220E3A:  VCMPE.F32       S0, S2
220E3E:  VMRS            APSR_nzcv, FPSCR
220E42:  BLT             loc_220E4E
220E44:  ADD.W           R0, R4, R4,LSL#1
220E48:  ADD.W           R5, R5, R0,LSL#2
220E4C:  B               loc_220E52
220E4E:  ADD.W           R5, R5, R4,LSL#3
220E52:  ADD.W           R0, R6, R6,LSL#1
220E56:  ADD.W           R0, R5, R0,LSL#3
220E5A:  ADDS            R0, #4
220E5C:  POP.W           {R11}
220E60:  POP             {R4-R7,PC}
