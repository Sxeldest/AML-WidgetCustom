; =========================================================
; Game Engine Function: _Z42_rxOpenGLAllInOneAtomicInstanceVertexArrayP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometry14RpGeometryFlagiiPhP6RwRGBASA_
; Address            : 0x2210E0 - 0x221476
; =========================================================

2210E0:  PUSH            {R4-R7,LR}
2210E2:  ADD             R7, SP, #0xC
2210E4:  PUSH.W          {R8-R11}
2210E8:  LDRH.W          R5, [R1,#0x50]
2210EC:  LDRH.W          R4, [R1,#0x52]
2210F0:  LDR.W           LR, [R7,#arg_4]
2210F4:  SXTH.W          R10, R5
2210F8:  CMP             R5, R4
2210FA:  BNE             loc_221194
2210FC:  CMP.W           LR, #0
221100:  BEQ             loc_22110A
221102:  LDRH            R1, [R2,#0xC]
221104:  ANDS.W          R1, R1, #2
221108:  BEQ             loc_221140
22110A:  LDR             R1, [R0,#0xC]
22110C:  CBZ             R1, loc_221140
22110E:  LDR             R5, [R2,#0x60]
221110:  RSB.W           R4, R10, R10,LSL#3
221114:  LDR.W           R8, [R0,#0x18]
221118:  ADD.W           R4, R5, R4,LSL#2
22111C:  LDR             R4, [R4,#0x14]
22111E:  ADD.W           R5, R8, R8,LSL#1
221122:  ADD.W           R4, R4, R5,LSL#2
221126:  LDR             R5, [R7,#arg_8]
221128:  VLDR            D16, [R4]
22112C:  SUBS            R1, #1
22112E:  LDR             R6, [R4,#8]
221130:  ADD.W           R4, R4, #0xC
221134:  STR             R6, [R5,#8]
221136:  VSTR            D16, [R5]
22113A:  LDR             R6, [R0,#8]
22113C:  ADD             R5, R6
22113E:  BNE             loc_221128
221140:  ANDS.W          R8, R3, #0x10
221144:  BEQ             loc_221236
221146:  CMP.W           LR, #0
22114A:  BEQ             loc_221156
22114C:  LDRH            R1, [R2,#0xC]
22114E:  ANDS.W          R1, R1, #4
221152:  BEQ.W           loc_2212FE
221156:  LDR             R1, [R0,#0xC]
221158:  CMP             R1, #0
22115A:  BEQ.W           loc_2212FE
22115E:  LDR             R5, [R2,#0x60]
221160:  RSB.W           R6, R10, R10,LSL#3
221164:  LDR             R4, [R0,#0x18]
221166:  ADD.W           R5, R5, R6,LSL#2
22116A:  LDR             R6, [R7,#arg_8]
22116C:  LDR             R5, [R5,#0x18]
22116E:  ADD.W           R4, R4, R4,LSL#1
221172:  ADD.W           R4, R5, R4,LSL#2
221176:  ADD.W           R5, R6, #0xC
22117A:  VLDR            D16, [R4]
22117E:  SUBS            R1, #1
221180:  LDR             R6, [R4,#8]
221182:  ADD.W           R4, R4, #0xC
221186:  STR             R6, [R5,#8]
221188:  VSTR            D16, [R5]
22118C:  LDR             R6, [R0,#8]
22118E:  ADD             R5, R6
221190:  BNE             loc_22117A
221192:  B               loc_2212FE
221194:  SXTH            R4, R4
221196:  VLDR            S0, [R1,#0x58]
22119A:  VLDR            S2, [R1,#0x5C]
22119E:  RSB.W           R5, R10, R10,LSL#3
2211A2:  LDR             R1, [R2,#0x60]
2211A4:  RSB.W           R4, R4, R4,LSL#3
2211A8:  LDR             R6, [R0,#0x18]
2211AA:  VMUL.F32        S0, S0, S2
2211AE:  ADD.W           R10, R1, R5,LSL#2
2211B2:  ADD.W           R11, R1, R4,LSL#2
2211B6:  LDR.W           R9, [R0,#0xC]
2211BA:  ANDS.W          R8, R3, #0x10
2211BE:  LDR.W           R1, [R11,#0x14]
2211C2:  ADD.W           R4, R6, R6,LSL#1
2211C6:  LDR.W           R5, [R10,#0x14]
2211CA:  ADD.W           R1, R1, R4,LSL#2
2211CE:  ADD.W           R6, R5, R4,LSL#2
2211D2:  BNE             loc_22123C
2211D4:  CMP.W           R9, #0
2211D8:  BEQ             loc_221236
2211DA:  LDR             R4, [R7,#arg_8]
2211DC:  VLDR            S2, [R6]
2211E0:  SUBS.W          R9, R9, #1
2211E4:  VLDR            S4, [R1]
2211E8:  VSUB.F32        S4, S4, S2
2211EC:  VMUL.F32        S4, S0, S4
2211F0:  VADD.F32        S2, S2, S4
2211F4:  VSTR            S2, [R4]
2211F8:  VLDR            S2, [R6,#4]
2211FC:  VLDR            S4, [R1,#4]
221200:  VSUB.F32        S4, S4, S2
221204:  VMUL.F32        S4, S0, S4
221208:  VADD.F32        S2, S2, S4
22120C:  VSTR            S2, [R4,#4]
221210:  VLDR            S2, [R6,#8]
221214:  ADD.W           R6, R6, #0xC
221218:  VLDR            S4, [R1,#8]
22121C:  ADD.W           R1, R1, #0xC
221220:  VSUB.F32        S4, S4, S2
221224:  VMUL.F32        S4, S0, S4
221228:  VADD.F32        S2, S2, S4
22122C:  VSTR            S2, [R4,#8]
221230:  LDR             R5, [R0,#8]
221232:  ADD             R4, R5
221234:  BNE             loc_2211DC
221236:  MOV.W           R8, #0
22123A:  B               loc_2212FE
22123C:  CMP.W           R9, #0
221240:  BEQ             loc_2212FE
221242:  LDR.W           R5, [R10,#0x18]
221246:  LDR.W           R11, [R11,#0x18]
22124A:  ADD.W           R10, R5, R4,LSL#2
22124E:  LDR             R5, [R7,#arg_8]
221250:  ADD.W           R11, R11, R4,LSL#2
221254:  VLDR            S2, [R6]
221258:  SUBS.W          R9, R9, #1
22125C:  VLDR            S4, [R1]
221260:  VSUB.F32        S4, S4, S2
221264:  VMUL.F32        S4, S0, S4
221268:  VADD.F32        S2, S2, S4
22126C:  VSTR            S2, [R5]
221270:  VLDR            S2, [R6,#4]
221274:  VLDR            S4, [R1,#4]
221278:  VSUB.F32        S4, S4, S2
22127C:  VMUL.F32        S4, S0, S4
221280:  VADD.F32        S2, S2, S4
221284:  VSTR            S2, [R5,#4]
221288:  VLDR            S2, [R6,#8]
22128C:  ADD.W           R6, R6, #0xC
221290:  VLDR            S4, [R1,#8]
221294:  ADD.W           R1, R1, #0xC
221298:  VSUB.F32        S4, S4, S2
22129C:  VMUL.F32        S4, S0, S4
2212A0:  VADD.F32        S2, S2, S4
2212A4:  VSTR            S2, [R5,#8]
2212A8:  VLDR            S2, [R10]
2212AC:  VLDR            S4, [R11]
2212B0:  VSUB.F32        S4, S4, S2
2212B4:  VMUL.F32        S4, S0, S4
2212B8:  VADD.F32        S2, S2, S4
2212BC:  VSTR            S2, [R5,#0xC]
2212C0:  VLDR            S2, [R10,#4]
2212C4:  VLDR            S4, [R11,#4]
2212C8:  VSUB.F32        S4, S4, S2
2212CC:  VMUL.F32        S4, S0, S4
2212D0:  VADD.F32        S2, S2, S4
2212D4:  VSTR            S2, [R5,#0x10]
2212D8:  VLDR            S2, [R10,#8]
2212DC:  ADD.W           R10, R10, #0xC
2212E0:  VLDR            S4, [R11,#8]
2212E4:  ADD.W           R11, R11, #0xC
2212E8:  VSUB.F32        S4, S4, S2
2212EC:  VMUL.F32        S4, S0, S4
2212F0:  VADD.F32        S2, S2, S4
2212F4:  VSTR            S2, [R5,#0x14]
2212F8:  LDR             R4, [R0,#8]
2212FA:  ADD             R5, R4
2212FC:  BNE             loc_221254
2212FE:  LDR.W           R9, [R7,#arg_0]
221302:  MOV.W           R11, #0x18
221306:  CMP.W           R8, #0
22130A:  IT EQ
22130C:  MOVEQ.W         R11, #0xC
221310:  LSLS            R1, R3, #0x1C
221312:  BMI             loc_221320
221314:  MOVS            R1, #0
221316:  STR             R1, [R0,#0x34]
221318:  CMP.W           R9, #0
22131C:  BNE             loc_2213BA
22131E:  B               loc_221470
221320:  LDR.W           R12, [R7,#arg_10]
221324:  CMP.W           LR, #0
221328:  BEQ             loc_221336
22132A:  LDRH            R1, [R2,#0xC]
22132C:  ANDS.W          R1, R1, #8
221330:  BNE             loc_221336
221332:  MOVS            R1, #0
221334:  B               loc_2213A6
221336:  LDR             R1, [R7,#arg_C]
221338:  LDR             R3, [R7,#arg_8]
22133A:  CMP             R1, #0
22133C:  IT EQ
22133E:  LDREQ           R1, [R2,#0x30]
221340:  LDR             R4, [R0,#0x18]
221342:  LDR             R5, [R0,#0xC]
221344:  CMP.W           R12, #0
221348:  ADD.W           R6, R3, R11
22134C:  ADD.W           R3, R1, R4,LSL#2
221350:  ITT NE
221352:  ADDNE.W         R10, R12, R4,LSL#2
221356:  CMPNE.W         R10, #0
22135A:  BEQ             loc_221380
22135C:  MOVS            R1, #0xFF
22135E:  CBZ             R5, loc_22139C
221360:  LDR             R4, [R3]
221362:  SUBS            R5, #1
221364:  STR             R4, [R6]
221366:  LDR.W           R4, [R10],#4
22136A:  STR             R4, [R6,#4]
22136C:  LDRB.W          R8, [R3,#3]
221370:  ADD.W           R3, R3, #4
221374:  LDR             R4, [R0,#8]
221376:  AND.W           R1, R1, R8
22137A:  ADD             R6, R4
22137C:  BNE             loc_221360
22137E:  B               loc_22139C
221380:  MOVS            R1, #0xFF
221382:  CBZ             R5, loc_22139C
221384:  LDR             R4, [R3]
221386:  SUBS            R5, #1
221388:  STR             R4, [R6]
22138A:  LDRB.W          R10, [R3,#3]
22138E:  ADD.W           R3, R3, #4
221392:  LDR             R4, [R0,#8]
221394:  AND.W           R1, R1, R10
221398:  ADD             R6, R4
22139A:  BNE             loc_221384
22139C:  UXTB            R3, R1
22139E:  MOVS            R1, #0
2213A0:  CMP             R3, #0xFF
2213A2:  IT NE
2213A4:  MOVNE           R1, #1
2213A6:  STR             R1, [R0,#0x34]
2213A8:  MOVS            R1, #8
2213AA:  CMP.W           R12, #0
2213AE:  IT EQ
2213B0:  MOVEQ           R1, #4
2213B2:  ADD             R11, R1
2213B4:  CMP.W           R9, #0
2213B8:  BEQ             loc_221470
2213BA:  LDRH            R1, [R2,#0xC]
2213BC:  MOVS            R3, #0
2213BE:  CMP.W           LR, #0
2213C2:  IT EQ
2213C4:  MOVEQ           R3, #1
2213C6:  ANDS.W          R4, R1, #0xFF0
2213CA:  IT NE
2213CC:  MOVNE           R4, #1
2213CE:  ORRS            R3, R4
2213D0:  BEQ             loc_221470
2213D2:  CMP.W           R9, #1
2213D6:  BLT             loc_221470
2213D8:  LDR             R3, =(RwHackNoCompressedTexCoords_ptr - 0x2213E8)
2213DA:  MOVS            R5, #0
2213DC:  VLDR            S0, =512.0
2213E0:  MOV.W           R8, #0x10
2213E4:  ADD             R3, PC; RwHackNoCompressedTexCoords_ptr
2213E6:  LDR             R3, [R3]; RwHackNoCompressedTexCoords
2213E8:  LDRB.W          R10, [R3]
2213EC:  CMP.W           LR, #0
2213F0:  BNE             loc_221400
2213F2:  B               loc_22140A
2213F4:  LDRH            R1, [R2,#0xC]
2213F6:  ADD.W           R11, R11, #8
2213FA:  CMP.W           LR, #0
2213FE:  BEQ             loc_22140A
221400:  LSL.W           R3, R8, R5
221404:  ANDS            R1, R3
221406:  UXTH            R1, R1
221408:  CBZ             R1, loc_22146A
22140A:  ADD.W           R4, R2, R5,LSL#2
22140E:  LDR             R3, [R0,#0x18]
221410:  LDR             R6, [R7,#arg_8]
221412:  CMP.W           R10, #0
221416:  LDR             R4, [R4,#0x34]
221418:  LDR             R1, [R0,#0xC]
22141A:  ADD             R6, R11
22141C:  ADD.W           R3, R4, R3,LSL#3
221420:  BEQ             loc_221438
221422:  CBZ             R1, loc_22146A
221424:  LDRD.W          R4, R12, [R3]
221428:  ADDS            R3, #8
22142A:  STRD.W          R4, R12, [R6]
22142E:  SUBS            R1, #1
221430:  LDR             R4, [R0,#8]
221432:  ADD             R6, R4
221434:  BNE             loc_221424
221436:  B               loc_22146A
221438:  CBZ             R1, loc_22146A
22143A:  VLDR            S2, [R3]
22143E:  SUBS            R1, #1
221440:  VMUL.F32        S2, S2, S0
221444:  VCVT.S32.F32    S2, S2
221448:  VMOV            R4, S2
22144C:  STRH            R4, [R6]
22144E:  VLDR            S2, [R3,#4]
221452:  ADD.W           R3, R3, #8
221456:  VMUL.F32        S2, S2, S0
22145A:  VCVT.S32.F32    S2, S2
22145E:  VMOV            R4, S2
221462:  STRH            R4, [R6,#2]
221464:  LDR             R4, [R0,#8]
221466:  ADD             R6, R4
221468:  BNE             loc_22143A
22146A:  ADDS            R5, #1
22146C:  CMP             R5, R9
22146E:  BNE             loc_2213F4
221470:  POP.W           {R8-R11}
221474:  POP             {R4-R7,PC}
