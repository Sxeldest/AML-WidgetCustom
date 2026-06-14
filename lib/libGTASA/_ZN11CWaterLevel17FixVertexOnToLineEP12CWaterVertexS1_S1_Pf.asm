; =========================================================
; Game Engine Function: _ZN11CWaterLevel17FixVertexOnToLineEP12CWaterVertexS1_S1_Pf
; Address            : 0x594040 - 0x59430A
; =========================================================

594040:  PUSH            {R4-R7,LR}
594042:  ADD             R7, SP, #0xC
594044:  PUSH.W          {R8-R11}
594048:  SUB             SP, SP, #4
59404A:  MOV             R9, R2
59404C:  LDRH            R5, [R1]
59404E:  LDRH.W          R6, [R9]
594052:  VLDR            S0, [R0,#8]
594056:  VLDR            S2, [R0,#0xC]
59405A:  SXTH.W          R12, R5
59405E:  CMP             R6, R5
594060:  BNE             loc_5940CC
594062:  VMOV.F32        S4, S2
594066:  LDRH            R6, [R0]
594068:  VMOV.F32        S6, S0
59406C:  UXTH.W          R5, R12
594070:  CMP             R6, R5
594072:  BNE.W           loc_5942E2
594076:  LDRSH.W         R6, [R9,#2]
59407A:  VMOV.F32        S4, S2
59407E:  LDRSH.W         R12, [R1,#2]
594082:  VMOV.F32        S6, S0
594086:  MOV             R4, R9
594088:  LDRSH.W         R5, [R0,#2]
59408C:  CMP             R12, R6
59408E:  MOV             R6, R9
594090:  IT GT
594092:  MOVGT           R6, R1
594094:  IT LT
594096:  MOVLT           R4, R1
594098:  LDRSH.W         R4, [R4,#2]
59409C:  CMP             R5, R4
59409E:  BLE.W           loc_5942E2
5940A2:  VMOV.F32        S4, S2
5940A6:  LDRSH.W         R6, [R6,#2]
5940AA:  VMOV.F32        S6, S0
5940AE:  CMP             R5, R6
5940B0:  BGE.W           loc_5942E2
5940B4:  SUBS            R6, R6, R4
5940B6:  SUBS.W          R5, R5, R12
5940BA:  VMOV            S4, R6
5940BE:  VCVT.F32.S32    S4, S4
5940C2:  IT MI
5940C4:  NEGMI           R5, R5
5940C6:  VMOV            S6, R5
5940CA:  B               loc_594140
5940CC:  SXTH.W          LR, R6
5940D0:  LDRH            R6, [R1,#2]
5940D2:  LDRH.W          R4, [R9,#2]
5940D6:  SXTH.W          R8, R6
5940DA:  CMP             R4, R6
5940DC:  BNE.W           loc_5941F8
5940E0:  VMOV.F32        S4, S2
5940E4:  LDRH            R4, [R0,#2]
5940E6:  VMOV.F32        S6, S0
5940EA:  UXTH.W          R5, R8
5940EE:  CMP             R4, R5
5940F0:  BNE.W           loc_5942E2
5940F4:  VMOV.F32        S4, S2
5940F8:  CMP             LR, R12
5940FA:  VMOV.F32        S6, S0
5940FE:  MOV             R4, R9
594100:  MOV             R5, R9
594102:  IT LT
594104:  MOVLT           R4, R1
594106:  LDRSH.W         R6, [R0]
59410A:  IT GT
59410C:  MOVGT           R5, R1
59410E:  LDRSH.W         R5, [R5]
594112:  CMP             R6, R5
594114:  BLE.W           loc_5942E2
594118:  VMOV.F32        S4, S2
59411C:  LDRSH.W         R4, [R4]
594120:  VMOV.F32        S6, S0
594124:  CMP             R6, R4
594126:  BGE.W           loc_5942E2
59412A:  SUBS            R5, R4, R5
59412C:  SUBS.W          R6, R6, R12
594130:  VMOV            S4, R5
594134:  VCVT.F32.S32    S4, S4
594138:  IT MI
59413A:  NEGMI           R6, R6
59413C:  VMOV            S6, R6
594140:  VCVT.F32.S32    S6, S6
594144:  LDR.W           R5, [R9,#0x10]
594148:  LDR             R6, [R1,#0x10]
59414A:  VLDR            S8, [R1,#4]
59414E:  SXTB            R2, R5
594150:  VLDR            S10, [R1,#8]
594154:  VMOV            S5, R2
594158:  VLDR            S12, [R1,#0xC]
59415C:  VLDR            S14, [R9,#4]
594160:  VLDR            S1, [R9,#8]
594164:  VDIV.F32        S4, S6, S4
594168:  VMOV.F32        S6, #1.0
59416C:  VLDR            S3, [R9,#0xC]
594170:  SBFX.W          R1, R6, #8, #8
594174:  VCVT.F32.S32    S5, S5
594178:  SBFX.W          R2, R5, #8, #8
59417C:  VMOV            S7, R1
594180:  SXTB            R1, R6
594182:  VMOV            S9, R2
594186:  VCVT.F32.S32    S7, S7
59418A:  VCVT.F32.S32    S9, S9
59418E:  VSUB.F32        S6, S6, S4
594192:  VMOV            S11, R1
594196:  VMUL.F32        S1, S4, S1
59419A:  VCVT.F32.S32    S11, S11
59419E:  VMUL.F32        S10, S6, S10
5941A2:  VMUL.F32        S14, S4, S14
5941A6:  VMUL.F32        S8, S6, S8
5941AA:  VMUL.F32        S3, S4, S3
5941AE:  VMUL.F32        S12, S6, S12
5941B2:  VMUL.F32        S9, S4, S9
5941B6:  VMUL.F32        S7, S6, S7
5941BA:  VMUL.F32        S5, S4, S5
5941BE:  VMUL.F32        S11, S6, S11
5941C2:  VADD.F32        S6, S10, S1
5941C6:  VADD.F32        S8, S8, S14
5941CA:  VADD.F32        S4, S12, S3
5941CE:  VADD.F32        S10, S7, S9
5941D2:  VADD.F32        S12, S11, S5
5941D6:  VSTR            S8, [R0,#4]
5941DA:  VSTR            S6, [R0,#8]
5941DE:  VSTR            S4, [R0,#0xC]
5941E2:  VCVT.S32.F32    S8, S10
5941E6:  VCVT.S32.F32    S10, S12
5941EA:  VMOV            R1, S8
5941EE:  STRB            R1, [R0,#0x11]
5941F0:  VMOV            R1, S10
5941F4:  STRB            R1, [R0,#0x10]
5941F6:  B               loc_5942E2
5941F8:  VMOV.F32        S4, S2
5941FC:  CMP             LR, R12
5941FE:  VMOV.F32        S6, S0
594202:  MOV             R6, R9
594204:  MOV             R5, R9
594206:  IT LT
594208:  MOVLT           R6, R1
59420A:  LDRSH.W         R11, [R0]
59420E:  IT GT
594210:  MOVGT           R5, R1
594212:  LDRSH.W         R5, [R5]
594216:  CMP             R11, R5
594218:  BLE             loc_5942E2
59421A:  VMOV.F32        S4, S2
59421E:  LDRSH.W         R2, [R6]
594222:  VMOV.F32        S6, S0
594226:  STR             R2, [SP,#0x20+var_20]
594228:  CMP             R11, R2
59422A:  BGE             loc_5942E2
59422C:  VMOV.F32        S4, S2
594230:  SXTH.W          R10, R4
594234:  VMOV.F32        S6, S0
594238:  CMP             R10, R8
59423A:  MOV             R6, R9
59423C:  MOV             R2, R9
59423E:  IT LT
594240:  MOVLT           R6, R1
594242:  LDRSH.W         R4, [R0,#2]
594246:  IT GT
594248:  MOVGT           R2, R1
59424A:  LDRSH.W         R2, [R2,#2]
59424E:  CMP             R4, R2
594250:  BLE             loc_5942E2
594252:  VMOV.F32        S4, S2
594256:  LDRSH.W         R2, [R6,#2]
59425A:  VMOV.F32        S6, S0
59425E:  CMP             R4, R2
594260:  BGE             loc_5942E2
594262:  SUB.W           LR, LR, R12
594266:  SUB.W           R4, R4, R8
59426A:  SUB.W           R2, R10, R8
59426E:  SUB.W           R6, R11, R12
594272:  VMOV.F32        S4, S2
594276:  MUL.W           R4, R4, LR
59427A:  VMOV.F32        S6, S0
59427E:  MULS            R2, R6
594280:  CMP             R4, R2
594282:  BNE             loc_5942E2
594284:  CMP             R6, #0
594286:  IT MI
594288:  NEGMI           R6, R6
59428A:  VMOV            S4, R6
59428E:  VCVT.F32.S32    S4, S4
594292:  LDR             R2, [SP,#0x20+var_20]
594294:  SUBS            R2, R2, R5
594296:  VMOV            S6, R2
59429A:  VCVT.F32.S32    S6, S6
59429E:  LDR.W           R6, [R9,#0x10]
5942A2:  LDR             R2, [R1,#0x10]
5942A4:  VLDR            S8, [R1,#4]
5942A8:  SXTB            R5, R6
5942AA:  VLDR            S10, [R1,#8]
5942AE:  VMOV            S5, R5
5942B2:  VLDR            S12, [R1,#0xC]
5942B6:  VLDR            S14, [R9,#4]
5942BA:  VLDR            S1, [R9,#8]
5942BE:  VDIV.F32        S4, S4, S6
5942C2:  VMOV.F32        S6, #1.0
5942C6:  VLDR            S3, [R9,#0xC]
5942CA:  SBFX.W          R1, R2, #8, #8
5942CE:  VCVT.F32.S32    S5, S5
5942D2:  SBFX.W          R6, R6, #8, #8
5942D6:  VMOV            S7, R1
5942DA:  SXTB            R1, R2
5942DC:  VMOV            S9, R6
5942E0:  B               loc_594186
5942E2:  VSUB.F32        S2, S2, S4
5942E6:  VSUB.F32        S0, S0, S6
5942EA:  VABS.F32        S2, S2
5942EE:  VABS.F32        S0, S0
5942F2:  VADD.F32        S0, S0, S2
5942F6:  VLDR            S2, [R3]
5942FA:  VADD.F32        S0, S2, S0
5942FE:  VSTR            S0, [R3]
594302:  ADD             SP, SP, #4
594304:  POP.W           {R8-R11}
594308:  POP             {R4-R7,PC}
