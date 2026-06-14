; =========================================================
; Game Engine Function: _Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic
; Address            : 0x213994 - 0x213A98
; =========================================================

213994:  LDR             R2, [R0,#0x18]
213996:  CMP             R2, #0
213998:  IT EQ
21399A:  BXEQ            LR
21399C:  PUSH            {R4,R6,R7,LR}
21399E:  ADD             R7, SP, #0x10+var_8
2139A0:  LDRH.W          R1, [R0,#0x52]
2139A4:  LDRH.W          R4, [R0,#0x50]
2139A8:  LDR             R3, [R2,#0x18]
2139AA:  SXTH.W          R12, R1
2139AE:  CMP             R4, R1
2139B0:  SXTH.W          LR, R4
2139B4:  BEQ             loc_2139BE
2139B6:  CMP             R3, LR
2139B8:  IT GT
2139BA:  CMPGT           R3, R12
2139BC:  BGT             loc_2139E4
2139BE:  LDR             R2, [R2,#0x60]
2139C0:  CMP             R3, LR
2139C2:  IT GT
2139C4:  CMPGT           R3, R12
2139C6:  BGT             loc_2139CC
2139C8:  ADDS            R1, R2, #4
2139CA:  B               loc_2139D6
2139CC:  RSB.W           R1, LR, LR,LSL#3
2139D0:  ADD.W           R1, R2, R1,LSL#2
2139D4:  ADDS            R1, #4
2139D6:  VLD1.32         {D16-D17}, [R1]
2139DA:  ADD.W           R1, R0, #0x1C
2139DE:  VST1.32         {D16-D17}, [R1]
2139E2:  B               loc_213A82
2139E4:  LDR             R2, [R2,#0x60]
2139E6:  RSB.W           R1, LR, LR,LSL#3
2139EA:  RSB.W           R3, R12, R12,LSL#3
2139EE:  VLDR            S0, [R0,#0x58]
2139F2:  ADD.W           R1, R2, R1,LSL#2
2139F6:  VLDR            S2, [R0,#0x5C]
2139FA:  ADD.W           R2, R2, R3,LSL#2
2139FE:  VLDR            S4, [R1,#0x10]
213A02:  VMUL.F32        S0, S0, S2
213A06:  VLDR            S6, [R2,#0x10]
213A0A:  VSUB.F32        S2, S6, S4
213A0E:  VMUL.F32        S2, S0, S2
213A12:  VADD.F32        S2, S4, S2
213A16:  VSTR            S2, [R0,#0x28]
213A1A:  VLDR            S2, [R1,#4]
213A1E:  VLDR            S4, [R2,#4]
213A22:  VSUB.F32        S2, S4, S2
213A26:  VSTR            S2, [R0,#0x1C]
213A2A:  VMUL.F32        S2, S0, S2
213A2E:  VLDR            S4, [R1,#8]
213A32:  VLDR            S6, [R2,#8]
213A36:  VSUB.F32        S4, S6, S4
213A3A:  VSTR            S4, [R0,#0x20]
213A3E:  VMUL.F32        S4, S0, S4
213A42:  VLDR            S6, [R1,#0xC]
213A46:  VLDR            S8, [R2,#0xC]
213A4A:  VSTR            S2, [R0,#0x1C]
213A4E:  VSUB.F32        S6, S8, S6
213A52:  VSTR            S4, [R0,#0x20]
213A56:  VMUL.F32        S0, S0, S6
213A5A:  VSTR            S0, [R0,#0x24]
213A5E:  VLDR            S6, [R1,#4]
213A62:  VADD.F32        S2, S2, S6
213A66:  VSTR            S2, [R0,#0x1C]
213A6A:  VLDR            S2, [R1,#8]
213A6E:  VADD.F32        S2, S4, S2
213A72:  VSTR            S2, [R0,#0x20]
213A76:  VLDR            S2, [R1,#0xC]
213A7A:  VADD.F32        S0, S0, S2
213A7E:  VSTR            S0, [R0,#0x24]
213A82:  LDR             R1, [R0,#0x4C]
213A84:  LDRB            R2, [R0,#3]
213A86:  BIC.W           R1, R1, #2
213A8A:  STR             R1, [R0,#0x4C]
213A8C:  ORR.W           R1, R2, #1
213A90:  STRB            R1, [R0,#3]
213A92:  POP.W           {R4,R6,R7,LR}
213A96:  BX              LR
