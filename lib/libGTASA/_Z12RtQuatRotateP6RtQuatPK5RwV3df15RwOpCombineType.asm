; =========================================================
; Game Engine Function: _Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType
; Address            : 0x2111B4 - 0x211420
; =========================================================

2111B4:  PUSH            {R4-R7,LR}
2111B6:  ADD             R7, SP, #0xC
2111B8:  PUSH.W          {R11}
2111BC:  VPUSH           {D8-D11}
2111C0:  SUB             SP, SP, #0x10
2111C2:  MOV             R4, R0
2111C4:  MOVS            R0, #3
2111C6:  CMP             R4, #0
2111C8:  MOV             R5, R1
2111CA:  MOVT            R0, #0x8000; int
2111CE:  IT NE
2111D0:  CMPNE           R5, #0
2111D2:  BEQ             loc_211234
2111D4:  VMOV            S0, R2
2111D8:  CMP             R3, #2
2111DA:  BEQ             loc_211240
2111DC:  CMP             R3, #1
2111DE:  BEQ.W           loc_211320
2111E2:  CMP             R3, #0
2111E4:  BNE.W           loc_211400
2111E8:  VLDR            S2, =0.0087266
2111EC:  VMUL.F32        S0, S0, S2
2111F0:  VMOV            R6, S0
2111F4:  MOV             R0, R6; x
2111F6:  BLX             cosf
2111FA:  STR             R0, [R4,#0xC]
2111FC:  MOV             R0, R4
2111FE:  MOV             R1, R5
211200:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
211204:  MOV             R0, R6; x
211206:  BLX             sinf
21120A:  VMOV            S0, R0
21120E:  VLDR            S2, [R4]
211212:  VLDR            S4, [R4,#4]
211216:  VLDR            S6, [R4,#8]
21121A:  VMUL.F32        S2, S0, S2
21121E:  VMUL.F32        S4, S0, S4
211222:  VMUL.F32        S0, S0, S6
211226:  VSTR            S2, [R4]
21122A:  VSTR            S4, [R4,#4]
21122E:  VSTR            S0, [R4,#8]
211232:  B               loc_211412
211234:  ADDS            R0, #0x13; int
211236:  MOVS            R4, #0
211238:  STR             R4, [SP,#0x40+var_40]
21123A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21123E:  B               loc_21140A
211240:  VLDR            S2, =0.0087266
211244:  VMUL.F32        S0, S0, S2
211248:  VMOV            R6, S0
21124C:  MOV             R0, R6; x
21124E:  BLX             cosf
211252:  VLDR            S16, [R4]
211256:  MOV             R1, R5
211258:  VLDR            S18, [R4,#4]
21125C:  VLDR            S20, [R4,#8]
211260:  VLDR            S22, [R4,#0xC]
211264:  STR             R0, [SP,#0x40+var_34]
211266:  MOV             R0, SP
211268:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
21126C:  MOV             R0, R6; x
21126E:  BLX             sinf
211272:  VMOV            S0, R0
211276:  VLDR            S4, [SP,#0x40+var_3C]
21127A:  VLDR            S6, [SP,#0x40+var_38]
21127E:  VLDR            S2, [SP,#0x40+var_40]
211282:  VMUL.F32        S4, S0, S4
211286:  VMUL.F32        S6, S0, S6
21128A:  VLDR            S8, [SP,#0x40+var_34]
21128E:  VMUL.F32        S0, S0, S2
211292:  VMUL.F32        S9, S16, S8
211296:  VMUL.F32        S10, S20, S4
21129A:  VMUL.F32        S2, S18, S6
21129E:  VMUL.F32        S12, S18, S4
2112A2:  VSTR            S0, [SP,#0x40+var_40]
2112A6:  VMUL.F32        S14, S16, S0
2112AA:  VSTR            S4, [SP,#0x40+var_3C]
2112AE:  VMUL.F32        S1, S20, S0
2112B2:  VSTR            S6, [SP,#0x40+var_38]
2112B6:  VMUL.F32        S3, S16, S6
2112BA:  VMUL.F32        S5, S16, S4
2112BE:  VMUL.F32        S7, S18, S0
2112C2:  VSUB.F32        S2, S10, S2
2112C6:  VMUL.F32        S10, S20, S6
2112CA:  VADD.F32        S12, S14, S12
2112CE:  VMUL.F32        S14, S18, S8
2112D2:  VSUB.F32        S1, S3, S1
2112D6:  VMUL.F32        S3, S20, S8
2112DA:  VSUB.F32        S5, S7, S5
2112DE:  VMUL.F32        S7, S22, S0
2112E2:  VADD.F32        S2, S2, S9
2112E6:  VADD.F32        S10, S10, S12
2112EA:  VMUL.F32        S8, S22, S8
2112EE:  VADD.F32        S14, S14, S1
2112F2:  VMUL.F32        S12, S22, S4
2112F6:  VMUL.F32        S1, S22, S6
2112FA:  VADD.F32        S3, S5, S3
2112FE:  VADD.F32        S2, S2, S7
211302:  VSUB.F32        S8, S8, S10
211306:  VADD.F32        S10, S14, S12
21130A:  VADD.F32        S12, S3, S1
21130E:  VSTR            S2, [R4]
211312:  VSTR            S10, [R4,#4]
211316:  VSTR            S12, [R4,#8]
21131A:  VSTR            S8, [R4,#0xC]
21131E:  B               loc_211412
211320:  VLDR            S2, =0.0087266
211324:  VMUL.F32        S0, S0, S2
211328:  VMOV            R6, S0
21132C:  MOV             R0, R6; x
21132E:  BLX             cosf
211332:  VLDR            S16, [R4]
211336:  MOV             R1, R5
211338:  VLDR            S18, [R4,#4]
21133C:  VLDR            S20, [R4,#8]
211340:  VLDR            S22, [R4,#0xC]
211344:  STR             R0, [SP,#0x40+var_34]
211346:  MOV             R0, SP
211348:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
21134C:  MOV             R0, R6; x
21134E:  BLX             sinf
211352:  VMOV            S0, R0
211356:  VLDR            S4, [SP,#0x40+var_3C]
21135A:  VLDR            S6, [SP,#0x40+var_38]
21135E:  VLDR            S2, [SP,#0x40+var_40]
211362:  VMUL.F32        S4, S0, S4
211366:  VMUL.F32        S6, S0, S6
21136A:  VLDR            S8, [SP,#0x40+var_34]
21136E:  VMUL.F32        S0, S0, S2
211372:  VMUL.F32        S2, S20, S4
211376:  VMUL.F32        S10, S18, S6
21137A:  VMUL.F32        S12, S18, S4
21137E:  VSTR            S0, [SP,#0x40+var_40]
211382:  VMUL.F32        S14, S16, S0
211386:  VSTR            S4, [SP,#0x40+var_3C]
21138A:  VMUL.F32        S1, S16, S6
21138E:  VSTR            S6, [SP,#0x40+var_38]
211392:  VMUL.F32        S3, S20, S0
211396:  VMUL.F32        S5, S18, S0
21139A:  VMUL.F32        S7, S16, S4
21139E:  VSUB.F32        S2, S10, S2
2113A2:  VMUL.F32        S9, S22, S0
2113A6:  VADD.F32        S12, S14, S12
2113AA:  VMUL.F32        S10, S20, S6
2113AE:  VSUB.F32        S1, S3, S1
2113B2:  VMUL.F32        S14, S22, S4
2113B6:  VSUB.F32        S5, S7, S5
2113BA:  VMUL.F32        S3, S22, S6
2113BE:  VADD.F32        S2, S9, S2
2113C2:  VMUL.F32        S7, S16, S8
2113C6:  VADD.F32        S10, S10, S12
2113CA:  VMUL.F32        S9, S22, S8
2113CE:  VMUL.F32        S12, S18, S8
2113D2:  VADD.F32        S14, S1, S14
2113D6:  VMUL.F32        S8, S20, S8
2113DA:  VADD.F32        S1, S5, S3
2113DE:  VADD.F32        S2, S2, S7
2113E2:  VSUB.F32        S10, S9, S10
2113E6:  VADD.F32        S12, S12, S14
2113EA:  VADD.F32        S8, S1, S8
2113EE:  VSTR            S2, [R4]
2113F2:  VSTR            S12, [R4,#4]
2113F6:  VSTR            S8, [R4,#8]
2113FA:  VSTR            S10, [R4,#0xC]
2113FE:  B               loc_211412
211400:  ADR             R1, aInvalidCombina; "Invalid combination type"
211402:  MOVS            R4, #0
211404:  STR             R4, [SP,#0x40+var_40]
211406:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21140A:  STR             R0, [SP,#0x40+var_3C]
21140C:  MOV             R0, SP
21140E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
211412:  MOV             R0, R4
211414:  ADD             SP, SP, #0x10
211416:  VPOP            {D8-D11}
21141A:  POP.W           {R11}
21141E:  POP             {R4-R7,PC}
