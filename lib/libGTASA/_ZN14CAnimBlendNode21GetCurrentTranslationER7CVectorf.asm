; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf
; Address            : 0x38ADE4 - 0x38AECC
; =========================================================

38ADE4:  MOVS            R3, #0
38ADE6:  VMOV            S0, R2
38ADEA:  STRD.W          R3, R3, [R1]
38ADEE:  STR             R3, [R1,#8]
38ADF0:  LDR             R3, [R0,#0x14]
38ADF2:  LDRB.W          R2, [R3,#0x2E]
38ADF6:  VLDR            S2, [R3,#0x18]
38ADFA:  VMUL.F32        S0, S2, S0
38ADFE:  LSLS            R2, R2, #0x1B
38AE00:  IT MI
38AE02:  VMOVMI.F32      S0, S2
38AE06:  VCMPE.F32       S0, #0.0
38AE0A:  VMRS            APSR_nzcv, FPSCR
38AE0E:  BLE             locret_38AECA
38AE10:  PUSH            {R4,R6,R7,LR}
38AE12:  ADD             R7, SP, #0x10+var_8
38AE14:  LDR             R2, [R0,#0x10]
38AE16:  LDRSH.W         R4, [R0,#0xA]
38AE1A:  LDRSH.W         R3, [R0,#8]
38AE1E:  LDRH.W          LR, [R2,#4]
38AE22:  LDR.W           R12, [R2,#8]
38AE26:  ADD.W           R2, R4, R4,LSL#2
38AE2A:  ANDS.W          LR, LR, #2
38AE2E:  MOV.W           R2, R2,LSL#2
38AE32:  IT NE
38AE34:  LSLNE           R2, R4, #5
38AE36:  ADD.W           R4, R3, R3,LSL#2
38AE3A:  MOV.W           R4, R4,LSL#2
38AE3E:  IT NE
38AE40:  LSLNE           R4, R3, #5
38AE42:  ADD.W           R3, R12, R4
38AE46:  VLDR            S2, [R3,#0x10]
38AE4A:  VCMP.F32        S2, #0.0
38AE4E:  VMRS            APSR_nzcv, FPSCR
38AE52:  BEQ             loc_38AE62
38AE54:  VLDR            S4, [R0,#0xC]
38AE58:  VSUB.F32        S4, S2, S4
38AE5C:  VDIV.F32        S2, S4, S2
38AE60:  B               loc_38AE66
38AE62:  VLDR            S2, =0.0
38AE66:  CMP.W           LR, #0
38AE6A:  POP.W           {R4,R6,R7,LR}
38AE6E:  IT EQ
38AE70:  BXEQ            LR
38AE72:  ADD.W           R0, R12, R2
38AE76:  VLDR            S10, [R3,#0x14]
38AE7A:  VLDR            S12, [R3,#0x18]
38AE7E:  VLDR            S4, [R0,#0x14]
38AE82:  VLDR            S6, [R0,#0x18]
38AE86:  VLDR            S8, [R0,#0x1C]
38AE8A:  VSUB.F32        S10, S10, S4
38AE8E:  VLDR            S14, [R3,#0x1C]
38AE92:  VSUB.F32        S12, S12, S6
38AE96:  VSUB.F32        S14, S14, S8
38AE9A:  VMUL.F32        S10, S2, S10
38AE9E:  VMUL.F32        S12, S2, S12
38AEA2:  VMUL.F32        S2, S2, S14
38AEA6:  VADD.F32        S4, S4, S10
38AEAA:  VADD.F32        S6, S6, S12
38AEAE:  VADD.F32        S2, S8, S2
38AEB2:  VMUL.F32        S4, S0, S4
38AEB6:  VMUL.F32        S6, S0, S6
38AEBA:  VMUL.F32        S0, S0, S2
38AEBE:  VSTR            S4, [R1]
38AEC2:  VSTR            S6, [R1,#4]
38AEC6:  VSTR            S0, [R1,#8]
38AECA:  BX              LR
