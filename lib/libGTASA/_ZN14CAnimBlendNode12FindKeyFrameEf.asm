; =========================================================
; Game Engine Function: _ZN14CAnimBlendNode12FindKeyFrameEf
; Address            : 0x38AF38 - 0x38B182
; =========================================================

38AF38:  PUSH            {R4-R7,LR}
38AF3A:  ADD             R7, SP, #0xC
38AF3C:  PUSH.W          {R8}
38AF40:  VPUSH           {D8}
38AF44:  MOV             R8, R0
38AF46:  MOVS            R0, #0
38AF48:  LDR.W           R12, [R8,#0x10]
38AF4C:  LDRSH.W         R2, [R12,#6]
38AF50:  CMP             R2, #1
38AF52:  BLT.W           loc_38B0E4
38AF56:  STR.W           R0, [R8,#8]
38AF5A:  LDRH.W          R0, [R12,#6]
38AF5E:  CMP             R0, #1
38AF60:  BNE             loc_38AFA0
38AF62:  MOVS            R0, #0
38AF64:  STR.W           R0, [R8,#0xC]
38AF68:  LDRB.W          R0, [R12,#4]
38AF6C:  LSLS            R0, R0, #0x1F
38AF6E:  BEQ.W           loc_38B0E2
38AF72:  LDR.W           R0, [R12,#8]
38AF76:  VMOV.F32        S16, #1.0
38AF7A:  VLDR            S0, [R0]
38AF7E:  VLDR            S2, [R0,#4]
38AF82:  VMUL.F32        S0, S0, S0
38AF86:  VLDR            S4, [R0,#8]
38AF8A:  VMUL.F32        S2, S2, S2
38AF8E:  VLDR            S6, [R0,#0xC]
38AF92:  VMUL.F32        S4, S4, S4
38AF96:  VADD.F32        S0, S0, S2
38AF9A:  VMUL.F32        S2, S6, S6
38AF9E:  B               loc_38B0A6
38AFA0:  MOVS            R0, #1
38AFA2:  VMOV            S0, R1
38AFA6:  STRH.W          R0, [R8,#8]
38AFAA:  MOVS            R1, #0x14
38AFAC:  LDRH.W          R4, [R12,#4]
38AFB0:  LDR.W           R3, [R12,#8]
38AFB4:  TST.W           R4, #2
38AFB8:  IT NE
38AFBA:  MOVNE           R1, #0x20 ; ' '
38AFBC:  UBFX.W          LR, R4, #1, #1
38AFC0:  ADDS            R6, R3, R1
38AFC2:  VLDR            S2, [R6,#0x10]
38AFC6:  VCMPE.F32       S2, S0
38AFCA:  VMRS            APSR_nzcv, FPSCR
38AFCE:  BGE             loc_38B032
38AFD0:  MOVS            R0, #1
38AFD2:  MOVS            R1, #0
38AFD4:  MOVS            R2, #1
38AFD6:  LDRSH.W         R5, [R12,#6]
38AFDA:  ADDS            R2, #1
38AFDC:  CMP             R2, R5
38AFDE:  BLT             loc_38AFF4
38AFE0:  LDR.W           R0, [R8,#0x14]
38AFE4:  LDRB.W          R0, [R0,#0x2E]
38AFE8:  LSLS            R0, R0, #0x1E
38AFEA:  BPL.W           loc_38B0EE
38AFEE:  MOVS            R0, #0
38AFF0:  STRH.W          R0, [R8,#8]
38AFF4:  MOV             R1, R0
38AFF6:  ADDS            R0, R1, #1
38AFF8:  STRH.W          R0, [R8,#8]
38AFFC:  VSUB.F32        S0, S0, S2
38B000:  STRH.W          R1, [R8,#0xA]
38B004:  SXTH            R2, R0
38B006:  ADD.W           R6, R2, R2,LSL#2
38B00A:  LDRH.W          R4, [R12,#4]
38B00E:  LDR.W           R3, [R12,#8]
38B012:  LSLS            R6, R6, #2
38B014:  TST.W           R4, #2
38B018:  IT NE
38B01A:  LSLNE           R6, R2, #5
38B01C:  ADD             R6, R3
38B01E:  VLDR            S2, [R6,#0x10]
38B022:  UBFX.W          LR, R4, #1, #1
38B026:  VCMPE.F32       S0, S2
38B02A:  VMRS            APSR_nzcv, FPSCR
38B02E:  BGT             loc_38AFD6
38B030:  B               loc_38B034
38B032:  MOVS            R1, #0
38B034:  VSUB.F32        S0, S2, S0
38B038:  VSTR            S0, [R8,#0xC]
38B03C:  LDRH.W          R2, [R12,#4]
38B040:  TST.W           R2, #1
38B044:  BEQ             loc_38B0E2
38B046:  ANDS.W          R2, R2, #2
38B04A:  SXTH            R1, R1
38B04C:  ADD.W           R2, R1, R1,LSL#2
38B050:  SXTH            R0, R0
38B052:  LDR.W           R3, [R12,#8]
38B056:  VMOV.F32        S16, #1.0
38B05A:  MOV.W           R2, R2,LSL#2
38B05E:  IT NE
38B060:  LSLNE           R2, R1, #5
38B062:  ADD.W           R1, R0, R0,LSL#2
38B066:  MOV.W           R1, R1,LSL#2
38B06A:  IT NE
38B06C:  LSLNE           R1, R0, #5
38B06E:  ADDS            R0, R3, R1
38B070:  VLDR            S0, [R0]
38B074:  VLDR            S2, [R0,#4]
38B078:  VLDR            S4, [R0,#8]
38B07C:  VLDR            S6, [R0,#0xC]
38B080:  ADDS            R0, R3, R2
38B082:  VLDR            S8, [R0]
38B086:  VLDR            S10, [R0,#4]
38B08A:  VMUL.F32        S0, S8, S0
38B08E:  VLDR            S12, [R0,#8]
38B092:  VMUL.F32        S2, S10, S2
38B096:  VLDR            S14, [R0,#0xC]
38B09A:  VMUL.F32        S4, S12, S4
38B09E:  VADD.F32        S0, S0, S2
38B0A2:  VMUL.F32        S2, S14, S6
38B0A6:  VADD.F32        S0, S0, S4
38B0AA:  VADD.F32        S0, S0, S2
38B0AE:  VMIN.F32        D0, D0, D8
38B0B2:  VMOV            R0, S0; x
38B0B6:  BLX             acosf
38B0BA:  VMOV            S0, R0; x
38B0BE:  STR.W           R0, [R8]
38B0C2:  VCMP.F32        S0, #0.0
38B0C6:  VMRS            APSR_nzcv, FPSCR
38B0CA:  BEQ             loc_38B0DA
38B0CC:  BLX             sinf
38B0D0:  VMOV            S0, R0
38B0D4:  VDIV.F32        S0, S16, S0
38B0D8:  B               loc_38B0DE
38B0DA:  VLDR            S0, =0.0
38B0DE:  VSTR            S0, [R8,#4]
38B0E2:  MOVS            R0, #1
38B0E4:  VPOP            {D8}
38B0E8:  POP.W           {R8}
38B0EC:  POP             {R4-R7,PC}
38B0EE:  LSLS            R0, R4, #0x1F
38B0F0:  BEQ             loc_38B17A
38B0F2:  SXTH            R0, R1
38B0F4:  MOVS.W          R2, LR,LSL#31
38B0F8:  ADD.W           R1, R0, R0,LSL#2
38B0FC:  VLDR            S0, [R6]
38B100:  VLDR            S2, [R6,#4]
38B104:  VMOV.F32        S16, #1.0
38B108:  MOV.W           R1, R1,LSL#2
38B10C:  VLDR            S4, [R6,#8]
38B110:  VLDR            S6, [R6,#0xC]
38B114:  IT NE
38B116:  LSLNE           R1, R0, #5
38B118:  ADDS            R0, R3, R1
38B11A:  VLDR            S8, [R0]
38B11E:  VLDR            S10, [R0,#4]
38B122:  VMUL.F32        S0, S8, S0
38B126:  VLDR            S12, [R0,#8]
38B12A:  VMUL.F32        S2, S10, S2
38B12E:  VLDR            S14, [R0,#0xC]
38B132:  VMUL.F32        S4, S12, S4
38B136:  VADD.F32        S0, S0, S2
38B13A:  VMUL.F32        S2, S14, S6
38B13E:  VADD.F32        S0, S0, S4
38B142:  VADD.F32        S0, S0, S2
38B146:  VMIN.F32        D0, D0, D8
38B14A:  VMOV            R0, S0; x
38B14E:  BLX             acosf
38B152:  VMOV            S0, R0; x
38B156:  STR.W           R0, [R8]
38B15A:  VCMP.F32        S0, #0.0
38B15E:  VMRS            APSR_nzcv, FPSCR
38B162:  BEQ             loc_38B172
38B164:  BLX             sinf
38B168:  VMOV            S0, R0
38B16C:  VDIV.F32        S0, S16, S0
38B170:  B               loc_38B176
38B172:  VLDR            S0, =0.0
38B176:  VSTR            S0, [R8,#4]
38B17A:  MOVS            R0, #0
38B17C:  STR.W           R0, [R8,#0xC]
38B180:  B               loc_38B0E4
