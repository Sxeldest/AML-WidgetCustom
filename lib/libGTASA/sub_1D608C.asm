; =========================================================
; Game Engine Function: sub_1D608C
; Address            : 0x1D608C - 0x1D6EC6
; =========================================================

1D608C:  PUSH            {R4-R7,LR}
1D608E:  ADD             R7, SP, #0xC
1D6090:  PUSH.W          {R8}
1D6094:  VPUSH           {D8-D11}
1D6098:  VMOV.F32        S0, #-0.5
1D609C:  MOV             R4, R0
1D609E:  VLDR            S2, [R4,#0x70]
1D60A2:  ADD.W           R0, R4, #0x20 ; ' '
1D60A6:  LDR             R1, [R4,#4]
1D60A8:  LDR             R2, [R4,#0x14]
1D60AA:  VLDR            S10, [R1,#0x50]
1D60AE:  CMP             R2, #1
1D60B0:  VLDR            S8, [R1,#0x54]
1D60B4:  VMUL.F32        S6, S2, S0
1D60B8:  VLDR            S2, [R4,#0x78]
1D60BC:  VLDR            S4, [R1,#0x58]
1D60C0:  VMUL.F32        S2, S6, S2
1D60C4:  VMUL.F32        S4, S6, S4
1D60C8:  VMUL.F32        S8, S6, S8
1D60CC:  VMUL.F32        S6, S10, S6
1D60D0:  BNE.W           loc_1D68D6
1D60D4:  VMOV.F32        S10, #0.5
1D60D8:  VLDR            S12, [R1,#0x70]
1D60DC:  VLDR            S14, [R1,#0x74]
1D60E0:  MOVS            R6, #0
1D60E2:  VLDR            S1, [R1,#0x78]
1D60E6:  VSUB.F32        S2, S10, S2
1D60EA:  VMUL.F32        S14, S2, S14
1D60EE:  VMUL.F32        S12, S2, S12
1D60F2:  VMUL.F32        S1, S2, S1
1D60F6:  VADD.F32        S8, S8, S14
1D60FA:  VADD.F32        S6, S6, S12
1D60FE:  VADD.F32        S4, S4, S1
1D6102:  VSTR            S8, [R4,#0x30]
1D6106:  VSTR            S6, [R4,#0x20]
1D610A:  VSTR            S4, [R4,#0x40]
1D610E:  VLDR            S12, [R1,#0x80]
1D6112:  VLDR            S14, [R1,#0x84]
1D6116:  VMUL.F32        S6, S6, S12
1D611A:  VLDR            S1, [R1,#0x88]
1D611E:  VMUL.F32        S8, S8, S14
1D6122:  VMUL.F32        S4, S4, S1
1D6126:  VADD.F32        S6, S6, S8
1D612A:  VLDR            S8, [R4,#0x7C]
1D612E:  VADD.F32        S4, S6, S4
1D6132:  VLDR            S6, [R4,#0x74]
1D6136:  VMUL.F32        S0, S6, S0
1D613A:  VADD.F32        S2, S2, S4
1D613E:  VMUL.F32        S4, S0, S8
1D6142:  VSUB.F32        S2, S10, S2
1D6146:  VADD.F32        S4, S4, S10
1D614A:  VSTR            S2, [R4,#0x50]
1D614E:  VLDR            S2, [R1,#0x60]
1D6152:  VLDR            S6, [R1,#0x64]
1D6156:  VLDR            S12, [R1,#0x70]
1D615A:  VMUL.F32        S2, S2, S0
1D615E:  VLDR            S14, [R1,#0x74]
1D6162:  VMUL.F32        S6, S0, S6
1D6166:  VLDR            S1, [R1,#0x78]
1D616A:  VMUL.F32        S12, S12, S4
1D616E:  VLDR            S8, [R1,#0x68]
1D6172:  VMUL.F32        S14, S14, S4
1D6176:  VMUL.F32        S1, S4, S1
1D617A:  VMUL.F32        S0, S0, S8
1D617E:  VADD.F32        S2, S2, S12
1D6182:  VADD.F32        S6, S6, S14
1D6186:  VADD.F32        S0, S0, S1
1D618A:  VSTR            S2, [R4,#0x24]
1D618E:  VSTR            S6, [R4,#0x34]
1D6192:  VSTR            S0, [R4,#0x44]
1D6196:  VLDR            S8, [R1,#0x80]
1D619A:  VLDR            S12, [R1,#0x84]
1D619E:  VMUL.F32        S2, S2, S8
1D61A2:  VLDR            S14, [R1,#0x88]
1D61A6:  VMUL.F32        S6, S6, S12
1D61AA:  VMUL.F32        S0, S0, S14
1D61AE:  VADD.F32        S2, S2, S6
1D61B2:  VADD.F32        S0, S2, S0
1D61B6:  VADD.F32        S0, S4, S0
1D61BA:  VSUB.F32        S0, S10, S0
1D61BE:  VSTR            S0, [R4,#0x54]
1D61C2:  LDR             R2, [R1,#0x70]
1D61C4:  STR             R2, [R4,#0x28]
1D61C6:  LDR             R2, [R1,#0x74]
1D61C8:  STR             R2, [R4,#0x38]
1D61CA:  LDR             R2, [R1,#0x78]
1D61CC:  STR             R2, [R4,#0x48]
1D61CE:  VLDR            S0, [R1,#0x70]
1D61D2:  VLDR            S6, [R1,#0x80]
1D61D6:  VLDR            S2, [R1,#0x74]
1D61DA:  VLDR            S8, [R1,#0x84]
1D61DE:  VMUL.F32        S0, S6, S0
1D61E2:  VLDR            S4, [R1,#0x78]
1D61E6:  VMUL.F32        S2, S8, S2
1D61EA:  VLDR            S10, [R1,#0x88]
1D61EE:  MOVS            R1, #0
1D61F0:  VMUL.F32        S4, S10, S4
1D61F4:  VADD.F32        S0, S0, S2
1D61F8:  VADD.F32        S0, S0, S4
1D61FC:  VNEG.F32        S0, S0
1D6200:  VSTR            S0, [R4,#0x58]
1D6204:  BLX             j__Z16RwMatrixOptimizeP11RwMatrixTagPK17RwMatrixTolerance; RwMatrixOptimize(RwMatrixTag *,RwMatrixTolerance const*)
1D6208:  LDR             R0, [R4,#4]
1D620A:  ADD.W           R8, R4, #0x128
1D620E:  VLDR            S0, [R4,#0x68]
1D6212:  VLDR            S2, [R4,#0x6C]
1D6216:  ADD.W           R1, R0, #0x70 ; 'p'
1D621A:  VLDR            S4, [R0,#0x50]
1D621E:  VLDR            S12, [R0,#0x54]
1D6222:  VLDR            S14, [R0,#0x58]
1D6226:  VMUL.F32        S10, S4, S0
1D622A:  VMUL.F32        S6, S12, S0
1D622E:  VLDR            S7, [R0,#0x74]
1D6232:  VMUL.F32        S0, S14, S0
1D6236:  VLDR            S9, [R0,#0x78]
1D623A:  VLDR            S1, [R0,#0x60]
1D623E:  VLDR            S3, [R0,#0x64]
1D6242:  VLDR            S8, [R0,#0x70]
1D6246:  VMUL.F32        S13, S1, S2
1D624A:  VLDR            S5, [R0,#0x68]
1D624E:  VMUL.F32        S11, S3, S2
1D6252:  VADD.F32        S15, S8, S10
1D6256:  VLDR            S18, [R4,#0x7C]
1D625A:  VADD.F32        S7, S6, S7
1D625E:  VMUL.F32        S2, S5, S2
1D6262:  VADD.F32        S9, S0, S9
1D6266:  VADD.F32        S16, S6, S6
1D626A:  VMUL.F32        S5, S18, S5
1D626E:  VMUL.F32        S3, S18, S3
1D6272:  VMUL.F32        S1, S1, S18
1D6276:  VADD.F32        S8, S7, S11
1D627A:  VADD.F32        S7, S10, S10
1D627E:  VADD.F32        S10, S15, S13
1D6282:  VADD.F32        S6, S9, S2
1D6286:  VADD.F32        S15, S0, S0
1D628A:  VADD.F32        S0, S13, S13
1D628E:  VLDR            S13, [R4,#0x78]
1D6292:  VADD.F32        S9, S11, S11
1D6296:  VSUB.F32        S11, S8, S16
1D629A:  VADD.F32        S2, S2, S2
1D629E:  VSUB.F32        S20, S10, S7
1D62A2:  VSTR            S10, [R4,#0x128]
1D62A6:  VMUL.F32        S4, S4, S13
1D62AA:  VSTR            S8, [R4,#0x12C]
1D62AE:  VSUB.F32        S22, S6, S15
1D62B2:  VSTR            S6, [R4,#0x130]
1D62B6:  VMUL.F32        S14, S14, S13
1D62BA:  VMUL.F32        S12, S12, S13
1D62BE:  VSUB.F32        S9, S11, S9
1D62C2:  VSUB.F32        S13, S20, S0
1D62C6:  VSTR            S20, [R4,#0x134]
1D62CA:  VSUB.F32        S4, S1, S4
1D62CE:  VSTR            S11, [R4,#0x138]
1D62D2:  VSUB.F32        S18, S22, S2
1D62D6:  VSTR            S22, [R4,#0x13C]
1D62DA:  VSUB.F32        S0, S5, S14
1D62DE:  VSUB.F32        S2, S3, S12
1D62E2:  VADD.F32        S14, S16, S9
1D62E6:  VADD.F32        S12, S7, S13
1D62EA:  VSTR            S13, [R4,#0x140]
1D62EE:  VSTR            S9, [R4,#0x144]
1D62F2:  VADD.F32        S1, S15, S18
1D62F6:  VSTR            S18, [R4,#0x148]
1D62FA:  VSTR            S12, [R4,#0x14C]
1D62FE:  VSTR            S14, [R4,#0x150]
1D6302:  VSTR            S1, [R4,#0x154]
1D6306:  B               loc_1D631A
1D6308:  DCFS -0.0
1D630C:  VLDR            S10, [R2,#0x134]
1D6310:  ADDS            R6, #0xC
1D6312:  VLDR            S8, [R2,#0x138]
1D6316:  VLDR            S6, [R2,#0x13C]
1D631A:  VLDR            S12, [R0,#0x80]
1D631E:  ADDS            R2, R4, R6
1D6320:  VSUB.F32        S10, S10, S4
1D6324:  CMP             R6, #0x24 ; '$'
1D6326:  VADD.F32        S12, S4, S12
1D632A:  VSUB.F32        S8, S8, S2
1D632E:  VSUB.F32        S6, S6, S0
1D6332:  VSTR            S12, [R2,#0x128]
1D6336:  VLDR            S14, [R0,#0x84]
1D633A:  VADD.F32        S14, S2, S14
1D633E:  VSTR            S14, [R2,#0x12C]
1D6342:  VLDR            S1, [R0,#0x88]
1D6346:  VADD.F32        S1, S0, S1
1D634A:  VSTR            S1, [R2,#0x130]
1D634E:  VLDR            S3, [R4,#0x80]
1D6352:  VMUL.F32        S3, S10, S3
1D6356:  VADD.F32        S12, S12, S3
1D635A:  VSTR            S12, [R2,#0x128]
1D635E:  VLDR            S12, [R4,#0x80]
1D6362:  VMUL.F32        S12, S8, S12
1D6366:  VADD.F32        S12, S14, S12
1D636A:  VSTR            S12, [R2,#0x12C]
1D636E:  VLDR            S12, [R4,#0x80]
1D6372:  VMUL.F32        S12, S6, S12
1D6376:  VADD.F32        S12, S1, S12
1D637A:  VSTR            S12, [R2,#0x130]
1D637E:  VLDR            S12, [R0,#0x80]
1D6382:  VADD.F32        S12, S4, S12
1D6386:  VSTR            S12, [R2,#0x158]
1D638A:  VLDR            S14, [R0,#0x84]
1D638E:  VADD.F32        S14, S2, S14
1D6392:  VSTR            S14, [R2,#0x15C]
1D6396:  VLDR            S1, [R0,#0x88]
1D639A:  VADD.F32        S1, S0, S1
1D639E:  VSTR            S1, [R2,#0x160]
1D63A2:  VLDR            S3, [R4,#0x84]
1D63A6:  VMUL.F32        S10, S10, S3
1D63AA:  VADD.F32        S10, S12, S10
1D63AE:  VSTR            S10, [R2,#0x158]
1D63B2:  VLDR            S10, [R4,#0x84]
1D63B6:  VMUL.F32        S8, S8, S10
1D63BA:  VADD.F32        S8, S14, S8
1D63BE:  VSTR            S8, [R2,#0x15C]
1D63C2:  VLDR            S8, [R4,#0x84]
1D63C6:  VMUL.F32        S6, S6, S8
1D63CA:  VADD.F32        S6, S1, S6
1D63CE:  VSTR            S6, [R2,#0x160]
1D63D2:  BNE             loc_1D630C
1D63D4:  VLDR            D16, [R1]
1D63D8:  MOVS            R6, #0
1D63DA:  LDR             R1, [R1,#8]
1D63DC:  VLDR            S0, [R4,#0x158]
1D63E0:  VLDR            S2, [R4,#0x15C]
1D63E4:  VLDR            S4, [R4,#0x160]
1D63E8:  STR.W           R1, [R4,#0xA0]
1D63EC:  VSTR            D16, [R4,#0x98]
1D63F0:  VLDR            S8, [R0,#0x74]
1D63F4:  VLDR            S6, [R0,#0x70]
1D63F8:  VMUL.F32        S2, S2, S8
1D63FC:  VLDR            S8, [R4,#0xA0]
1D6400:  VMUL.F32        S0, S0, S6
1D6404:  VLDR            S10, [R0,#0x78]
1D6408:  VCMPE.F32       S8, #0.0
1D640C:  MOVS            R0, #0
1D640E:  VMRS            APSR_nzcv, FPSCR
1D6412:  VMUL.F32        S4, S4, S10
1D6416:  VLDR            S6, [R4,#0x9C]
1D641A:  VNEG.F32        S10, S6
1D641E:  VADD.F32        S0, S0, S2
1D6422:  VLDR            S2, [R4,#0x98]
1D6426:  VCMPE.F32       S2, #0.0
1D642A:  VADD.F32        S0, S0, S4
1D642E:  VNEG.F32        S4, S2
1D6432:  IT GE
1D6434:  MOVGE           R0, #1
1D6436:  VMRS            APSR_nzcv, FPSCR
1D643A:  STRB.W          R0, [R4,#0xAA]
1D643E:  MOV.W           R0, #0
1D6442:  VCMPE.F32       S6, #0.0
1D6446:  IT GE
1D6448:  MOVGE           R0, #1
1D644A:  VMRS            APSR_nzcv, FPSCR
1D644E:  STRB.W          R0, [R4,#0xA8]
1D6452:  MOV.W           R0, #0
1D6456:  IT GE
1D6458:  MOVGE           R0, #1
1D645A:  STRB.W          R0, [R4,#0xA9]
1D645E:  MOVS            R0, #0
1D6460:  VSTR            S0, [R4,#0xA4]
1D6464:  VSTR            S4, [R4,#0xAC]
1D6468:  VSTR            S10, [R4,#0xB0]
1D646C:  VLDR            S0, [R4,#0x128]
1D6470:  VLDR            S4, [R4,#0x12C]
1D6474:  VNMUL.F32       S0, S2, S0
1D6478:  VLDR            S10, [R4,#0x130]
1D647C:  VMUL.F32        S4, S4, S6
1D6480:  VMUL.F32        S10, S10, S8
1D6484:  VSUB.F32        S0, S0, S4
1D6488:  VNEG.F32        S4, S8
1D648C:  VSUB.F32        S0, S0, S10
1D6490:  VLDR            S10, =-0.0
1D6494:  VSTR            S4, [R4,#0xB4]
1D6498:  VCMPE.F32       S2, S10
1D649C:  VMRS            APSR_nzcv, FPSCR
1D64A0:  VCMPE.F32       S8, S10
1D64A4:  IT LE
1D64A6:  MOVLE           R0, #1
1D64A8:  VMRS            APSR_nzcv, FPSCR
1D64AC:  STRB.W          R0, [R4,#0xBC]
1D64B0:  MOV.W           R0, #0
1D64B4:  VCMPE.F32       S6, S10
1D64B8:  VSTR            S0, [R4,#0xB8]
1D64BC:  IT LE
1D64BE:  MOVLE           R0, #1
1D64C0:  VMRS            APSR_nzcv, FPSCR
1D64C4:  STRB.W          R0, [R4,#0xBE]
1D64C8:  MOV.W           R0, #0
1D64CC:  IT LE
1D64CE:  MOVLE           R0, #1
1D64D0:  STRB.W          R0, [R4,#0xBD]
1D64D4:  VLDR            S8, [R4,#0x13C]
1D64D8:  VLDR            S12, [R4,#0x16C]
1D64DC:  VLDR            S0, [R4,#0x168]
1D64E0:  VLDR            S2, [R4,#0x174]
1D64E4:  VSUB.F32        S16, S8, S12
1D64E8:  VLDR            S6, [R4,#0x138]
1D64EC:  VLDR            S14, [R4,#0x178]
1D64F0:  VSUB.F32        S2, S2, S0
1D64F4:  VLDR            S4, [R4,#0x134]
1D64F8:  VSUB.F32        S18, S6, S0
1D64FC:  VLDR            S10, [R4,#0x164]
1D6500:  VSUB.F32        S12, S14, S12
1D6504:  VLDR            S8, [R4,#0x170]
1D6508:  VSUB.F32        S20, S4, S10
1D650C:  VSUB.F32        S0, S8, S10
1D6510:  VMUL.F32        S4, S16, S2
1D6514:  VMUL.F32        S6, S18, S12
1D6518:  VMUL.F32        S10, S20, S12
1D651C:  VMUL.F32        S8, S16, S0
1D6520:  VMUL.F32        S0, S18, S0
1D6524:  VMUL.F32        S2, S20, S2
1D6528:  VSUB.F32        S4, S6, S4
1D652C:  VSUB.F32        S6, S8, S10
1D6530:  VSUB.F32        S0, S2, S0
1D6534:  VMUL.F32        S2, S4, S4
1D6538:  VSTR            S4, [R4,#0xC0]
1D653C:  VMUL.F32        S8, S6, S6
1D6540:  VSTR            S6, [R4,#0xC4]
1D6544:  VMUL.F32        S10, S0, S0
1D6548:  VSTR            S0, [R4,#0xC8]
1D654C:  VADD.F32        S2, S2, S8
1D6550:  VADD.F32        S2, S10, S2
1D6554:  VMOV            R0, S2; float
1D6558:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D655C:  VLDR            S0, [R4,#0x158]
1D6560:  VMOV            S7, R0
1D6564:  VLDR            S6, [R4,#0x164]
1D6568:  MOVS            R1, #0
1D656A:  VLDR            S4, [R4,#0x160]
1D656E:  VLDR            S10, [R4,#0x16C]
1D6572:  VSUB.F32        S0, S0, S6
1D6576:  VLDR            S2, [R4,#0x15C]
1D657A:  VSUB.F32        S4, S4, S10
1D657E:  VLDR            S8, [R4,#0x168]
1D6582:  VLDR            S14, [R4,#0xC8]
1D6586:  VSUB.F32        S2, S2, S8
1D658A:  VLDR            S12, [R4,#0xC4]
1D658E:  VLDR            S1, [R4,#0x134]
1D6592:  VLDR            S3, [R4,#0x138]
1D6596:  VMUL.F32        S12, S7, S12
1D659A:  VMUL.F32        S10, S16, S0
1D659E:  VLDR            S5, [R4,#0x13C]
1D65A2:  VMUL.F32        S0, S18, S0
1D65A6:  VMUL.F32        S6, S18, S4
1D65AA:  VMUL.F32        S4, S20, S4
1D65AE:  VMUL.F32        S8, S16, S2
1D65B2:  VMUL.F32        S2, S20, S2
1D65B6:  VSUB.F32        S4, S4, S10
1D65BA:  VLDR            S10, [R4,#0xC0]
1D65BE:  VSUB.F32        S6, S8, S6
1D65C2:  VMUL.F32        S10, S7, S10
1D65C6:  VSUB.F32        S0, S0, S2
1D65CA:  VMUL.F32        S8, S4, S4
1D65CE:  VMUL.F32        S2, S6, S6
1D65D2:  VCMPE.F32       S10, #0.0
1D65D6:  VMRS            APSR_nzcv, FPSCR
1D65DA:  VMUL.F32        S9, S0, S0
1D65DE:  VMUL.F32        S1, S10, S1
1D65E2:  VADD.F32        S2, S2, S8
1D65E6:  VMUL.F32        S8, S7, S14
1D65EA:  VMUL.F32        S14, S12, S3
1D65EE:  VADD.F32        S2, S9, S2
1D65F2:  VCMPE.F32       S8, #0.0
1D65F6:  VMUL.F32        S3, S8, S5
1D65FA:  VADD.F32        S14, S1, S14
1D65FE:  VMOV            R0, S2; float
1D6602:  IT GE
1D6604:  MOVGE           R1, #1
1D6606:  VMRS            APSR_nzcv, FPSCR
1D660A:  STRB.W          R1, [R4,#0xD0]
1D660E:  MOV.W           R1, #0
1D6612:  VCMPE.F32       S12, #0.0
1D6616:  VADD.F32        S2, S14, S3
1D661A:  IT GE
1D661C:  MOVGE           R1, #1
1D661E:  VMRS            APSR_nzcv, FPSCR
1D6622:  STRB.W          R1, [R4,#0xD2]
1D6626:  MOV.W           R1, #0
1D662A:  IT GE
1D662C:  MOVGE           R1, #1
1D662E:  STRB.W          R1, [R4,#0xD1]
1D6632:  VSTR            S10, [R4,#0xC0]
1D6636:  VSTR            S12, [R4,#0xC4]
1D663A:  VSTR            S8, [R4,#0xC8]
1D663E:  VSTR            S2, [R4,#0xCC]
1D6642:  VSTR            S6, [R4,#0xD4]
1D6646:  VSTR            S4, [R4,#0xD8]
1D664A:  VSTR            S0, [R4,#0xDC]
1D664E:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D6652:  VLDR            S0, [R4,#0x17C]
1D6656:  VMOV            S7, R0
1D665A:  VLDR            S12, [R4,#0x158]
1D665E:  MOVS            R1, #0
1D6660:  VLDR            S6, [R4,#0x14C]
1D6664:  VLDR            S2, [R4,#0x180]
1D6668:  VSUB.F32        S12, S12, S0
1D666C:  VLDR            S8, [R4,#0x150]
1D6670:  VSUB.F32        S16, S6, S0
1D6674:  VLDR            S14, [R4,#0x15C]
1D6678:  VLDR            S4, [R4,#0x184]
1D667C:  VSUB.F32        S20, S8, S2
1D6680:  VLDR            S10, [R4,#0x154]
1D6684:  VSUB.F32        S0, S14, S2
1D6688:  VLDR            S1, [R4,#0x160]
1D668C:  VSUB.F32        S18, S10, S4
1D6690:  VLDR            S14, [R4,#0xDC]
1D6694:  VSUB.F32        S1, S1, S4
1D6698:  VLDR            S3, [R4,#0x138]
1D669C:  VLDR            S5, [R4,#0x13C]
1D66A0:  VMUL.F32        S10, S20, S12
1D66A4:  VMUL.F32        S6, S18, S0
1D66A8:  VMUL.F32        S0, S16, S0
1D66AC:  VMUL.F32        S4, S18, S12
1D66B0:  VLDR            S12, [R4,#0xD8]
1D66B4:  VMUL.F32        S2, S16, S1
1D66B8:  VMUL.F32        S8, S20, S1
1D66BC:  VLDR            S1, [R4,#0x134]
1D66C0:  VMUL.F32        S12, S7, S12
1D66C4:  VSUB.F32        S0, S0, S10
1D66C8:  VLDR            S10, [R4,#0xD4]
1D66CC:  VMUL.F32        S10, S7, S10
1D66D0:  VSUB.F32        S2, S4, S2
1D66D4:  VSUB.F32        S4, S8, S6
1D66D8:  VMUL.F32        S9, S0, S0
1D66DC:  VCMPE.F32       S10, #0.0
1D66E0:  VMRS            APSR_nzcv, FPSCR
1D66E4:  VMUL.F32        S6, S2, S2
1D66E8:  VMUL.F32        S8, S4, S4
1D66EC:  VMUL.F32        S1, S10, S1
1D66F0:  VADD.F32        S6, S8, S6
1D66F4:  VMUL.F32        S8, S7, S14
1D66F8:  VMUL.F32        S14, S12, S3
1D66FC:  VADD.F32        S6, S9, S6
1D6700:  VCMPE.F32       S8, #0.0
1D6704:  VMUL.F32        S3, S8, S5
1D6708:  VADD.F32        S14, S1, S14
1D670C:  IT GE
1D670E:  MOVGE           R1, #1
1D6710:  VMRS            APSR_nzcv, FPSCR
1D6714:  STRB.W          R1, [R4,#0xE4]
1D6718:  MOV.W           R1, #0
1D671C:  VCMPE.F32       S12, #0.0
1D6720:  VMOV            R0, S6; float
1D6724:  VADD.F32        S6, S14, S3
1D6728:  IT GE
1D672A:  MOVGE           R1, #1
1D672C:  VMRS            APSR_nzcv, FPSCR
1D6730:  STRB.W          R1, [R4,#0xE6]
1D6734:  MOV.W           R1, #0
1D6738:  IT GE
1D673A:  MOVGE           R1, #1
1D673C:  STRB.W          R1, [R4,#0xE5]
1D6740:  VSTR            S10, [R4,#0xD4]
1D6744:  VSTR            S12, [R4,#0xD8]
1D6748:  VSTR            S8, [R4,#0xDC]
1D674C:  VSTR            S6, [R4,#0xE0]
1D6750:  VSTR            S4, [R4,#0xE8]
1D6754:  VSTR            S2, [R4,#0xEC]
1D6758:  VSTR            S0, [R4,#0xF0]
1D675C:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D6760:  VLDR            S2, [R4,#0x174]
1D6764:  VMOV            S7, R0
1D6768:  VLDR            S8, [R4,#0x180]
1D676C:  MOVS            R1, #0
1D676E:  VLDR            S4, [R4,#0x178]
1D6772:  VLDR            S10, [R4,#0x184]
1D6776:  VSUB.F32        S2, S2, S8
1D677A:  VLDR            S0, [R4,#0x170]
1D677E:  VSUB.F32        S4, S4, S10
1D6782:  VLDR            S6, [R4,#0x17C]
1D6786:  VLDR            S14, [R4,#0xF0]
1D678A:  VSUB.F32        S0, S0, S6
1D678E:  VLDR            S12, [R4,#0xEC]
1D6792:  VLDR            S1, [R4,#0x14C]
1D6796:  VLDR            S3, [R4,#0x150]
1D679A:  VMUL.F32        S12, S7, S12
1D679E:  VMUL.F32        S10, S18, S2
1D67A2:  VLDR            S5, [R4,#0x154]
1D67A6:  VMUL.F32        S2, S16, S2
1D67AA:  VMUL.F32        S8, S16, S4
1D67AE:  VMUL.F32        S4, S20, S4
1D67B2:  VMUL.F32        S6, S18, S0
1D67B6:  VMUL.F32        S0, S20, S0
1D67BA:  VSUB.F32        S4, S10, S4
1D67BE:  VLDR            S10, [R4,#0xE8]
1D67C2:  VSUB.F32        S6, S8, S6
1D67C6:  VMUL.F32        S10, S7, S10
1D67CA:  VSUB.F32        S0, S0, S2
1D67CE:  VMUL.F32        S8, S4, S4
1D67D2:  VMUL.F32        S2, S6, S6
1D67D6:  VCMPE.F32       S10, #0.0
1D67DA:  VMRS            APSR_nzcv, FPSCR
1D67DE:  VMUL.F32        S9, S0, S0
1D67E2:  VMUL.F32        S1, S10, S1
1D67E6:  VADD.F32        S2, S8, S2
1D67EA:  VMUL.F32        S8, S7, S14
1D67EE:  VMUL.F32        S14, S12, S3
1D67F2:  VADD.F32        S2, S9, S2
1D67F6:  VCMPE.F32       S8, #0.0
1D67FA:  VMUL.F32        S3, S8, S5
1D67FE:  VADD.F32        S14, S1, S14
1D6802:  VMOV            R0, S2; float
1D6806:  IT GE
1D6808:  MOVGE           R1, #1
1D680A:  VMRS            APSR_nzcv, FPSCR
1D680E:  STRB.W          R1, [R4,#0xF8]
1D6812:  MOV.W           R1, #0
1D6816:  VCMPE.F32       S12, #0.0
1D681A:  VADD.F32        S2, S14, S3
1D681E:  IT GE
1D6820:  MOVGE           R1, #1
1D6822:  VMRS            APSR_nzcv, FPSCR
1D6826:  STRB.W          R1, [R4,#0xFA]
1D682A:  MOV.W           R1, #0
1D682E:  IT GE
1D6830:  MOVGE           R1, #1
1D6832:  STRB.W          R1, [R4,#0xF9]
1D6836:  VSTR            S10, [R4,#0xE8]
1D683A:  VSTR            S12, [R4,#0xEC]
1D683E:  VSTR            S8, [R4,#0xF0]
1D6842:  VSTR            S2, [R4,#0xF4]
1D6846:  VSTR            S4, [R4,#0xFC]
1D684A:  VSTR            S6, [R4,#0x100]
1D684E:  VSTR            S0, [R4,#0x104]
1D6852:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D6856:  VMOV            S12, R0
1D685A:  VLDR            S0, [R4,#0xFC]
1D685E:  VLDR            S2, [R4,#0x100]
1D6862:  MOVS            R0, #0
1D6864:  VMUL.F32        S0, S12, S0
1D6868:  VLDR            S4, [R4,#0x104]
1D686C:  VMUL.F32        S2, S12, S2
1D6870:  VLDR            S6, [R4,#0x14C]
1D6874:  VLDR            S8, [R4,#0x150]
1D6878:  VMUL.F32        S4, S12, S4
1D687C:  VLDR            S10, [R4,#0x154]
1D6880:  VCMPE.F32       S0, #0.0
1D6884:  VMRS            APSR_nzcv, FPSCR
1D6888:  VCMPE.F32       S2, #0.0
1D688C:  VMUL.F32        S8, S2, S8
1D6890:  VMUL.F32        S6, S0, S6
1D6894:  VMUL.F32        S10, S4, S10
1D6898:  VADD.F32        S6, S6, S8
1D689C:  VADD.F32        S6, S6, S10
1D68A0:  IT GE
1D68A2:  MOVGE           R0, #1
1D68A4:  VMRS            APSR_nzcv, FPSCR
1D68A8:  STRB.W          R0, [R4,#0x10C]
1D68AC:  MOV.W           R0, #0
1D68B0:  VCMPE.F32       S4, #0.0
1D68B4:  IT GE
1D68B6:  MOVGE           R0, #1
1D68B8:  VMRS            APSR_nzcv, FPSCR
1D68BC:  STRB.W          R0, [R4,#0x10D]
1D68C0:  VSTR            S0, [R4,#0xFC]
1D68C4:  VSTR            S2, [R4,#0x100]
1D68C8:  VSTR            S4, [R4,#0x104]
1D68CC:  VSTR            S6, [R4,#0x108]
1D68D0:  IT GE
1D68D2:  MOVGE           R6, #1
1D68D4:  B               loc_1D6EAA
1D68D6:  VLDR            S10, [R1,#0x70]
1D68DA:  MOVS            R6, #0
1D68DC:  VLDR            S12, [R1,#0x74]
1D68E0:  VLDR            S14, [R1,#0x78]
1D68E4:  VMUL.F32        S10, S10, S2
1D68E8:  VMUL.F32        S12, S12, S2
1D68EC:  VMUL.F32        S14, S14, S2
1D68F0:  VSUB.F32        S6, S6, S10
1D68F4:  VSUB.F32        S8, S8, S12
1D68F8:  VSUB.F32        S4, S4, S14
1D68FC:  VSTR            S8, [R4,#0x30]
1D6900:  VSTR            S6, [R4,#0x20]
1D6904:  VSTR            S4, [R4,#0x40]
1D6908:  VLDR            S10, [R1,#0x80]
1D690C:  VLDR            S12, [R1,#0x84]
1D6910:  VMUL.F32        S6, S6, S10
1D6914:  VLDR            S14, [R1,#0x88]
1D6918:  VMUL.F32        S8, S8, S12
1D691C:  VMUL.F32        S4, S4, S14
1D6920:  VADD.F32        S6, S6, S8
1D6924:  VLDR            S8, [R4,#0x7C]
1D6928:  VADD.F32        S4, S6, S4
1D692C:  VMOV.F32        S6, #0.5
1D6930:  VSUB.F32        S2, S4, S2
1D6934:  VLDR            S4, [R4,#0x74]
1D6938:  VMUL.F32        S0, S4, S0
1D693C:  VSUB.F32        S2, S6, S2
1D6940:  VMUL.F32        S4, S0, S8
1D6944:  VSTR            S2, [R4,#0x50]
1D6948:  VLDR            S2, [R1,#0x60]
1D694C:  VLDR            S8, [R1,#0x64]
1D6950:  VLDR            S12, [R1,#0x70]
1D6954:  VMUL.F32        S2, S2, S0
1D6958:  VLDR            S14, [R1,#0x74]
1D695C:  VMUL.F32        S8, S0, S8
1D6960:  VLDR            S1, [R1,#0x78]
1D6964:  VMUL.F32        S12, S12, S4
1D6968:  VLDR            S10, [R1,#0x68]
1D696C:  VMUL.F32        S14, S4, S14
1D6970:  VMUL.F32        S1, S4, S1
1D6974:  VMUL.F32        S0, S0, S10
1D6978:  VADD.F32        S2, S2, S12
1D697C:  VADD.F32        S8, S8, S14
1D6980:  VADD.F32        S0, S0, S1
1D6984:  VSTR            S2, [R4,#0x24]
1D6988:  VSTR            S8, [R4,#0x34]
1D698C:  VSTR            S0, [R4,#0x44]
1D6990:  VLDR            S10, [R1,#0x80]
1D6994:  VLDR            S12, [R1,#0x84]
1D6998:  VMUL.F32        S2, S2, S10
1D699C:  VLDR            S14, [R1,#0x88]
1D69A0:  VMUL.F32        S8, S8, S12
1D69A4:  VMUL.F32        S0, S0, S14
1D69A8:  VADD.F32        S2, S2, S8
1D69AC:  VADD.F32        S0, S2, S0
1D69B0:  VADD.F32        S0, S4, S0
1D69B4:  VSUB.F32        S0, S6, S0
1D69B8:  VSTR            S0, [R4,#0x54]
1D69BC:  LDR             R2, [R1,#0x70]
1D69BE:  STR             R2, [R4,#0x28]
1D69C0:  LDR             R2, [R1,#0x74]
1D69C2:  STR             R2, [R4,#0x38]
1D69C4:  LDR             R2, [R1,#0x78]
1D69C6:  STR             R2, [R4,#0x48]
1D69C8:  VLDR            S0, [R1,#0x70]
1D69CC:  VLDR            S6, [R1,#0x80]
1D69D0:  VLDR            S2, [R1,#0x74]
1D69D4:  VLDR            S8, [R1,#0x84]
1D69D8:  VMUL.F32        S0, S6, S0
1D69DC:  VLDR            S4, [R1,#0x78]
1D69E0:  VMUL.F32        S2, S8, S2
1D69E4:  VLDR            S10, [R1,#0x88]
1D69E8:  MOVS            R1, #0
1D69EA:  VMUL.F32        S4, S10, S4
1D69EE:  VADD.F32        S0, S0, S2
1D69F2:  VADD.F32        S0, S0, S4
1D69F6:  VNEG.F32        S0, S0
1D69FA:  VSTR            S0, [R4,#0x58]
1D69FE:  BLX             j__Z16RwMatrixOptimizeP11RwMatrixTagPK17RwMatrixTolerance; RwMatrixOptimize(RwMatrixTag *,RwMatrixTolerance const*)
1D6A02:  VMOV.F32        S0, #1.0
1D6A06:  VLDR            S6, [R4,#0x80]
1D6A0A:  VLDR            S8, [R4,#0x84]
1D6A0E:  ADD.W           R8, R4, #0x128
1D6A12:  VLDR            S2, [R4,#0x78]
1D6A16:  MOVS            R2, #8
1D6A18:  VLDR            S4, [R4,#0x7C]
1D6A1C:  MOV             R0, R8
1D6A1E:  VLDR            S14, [R4,#0x68]
1D6A22:  MOV             R1, R8
1D6A24:  VLDR            S1, [R4,#0x6C]
1D6A28:  LDR             R5, [R4,#4]
1D6A2A:  VSUB.F32        S10, S0, S6
1D6A2E:  VSTR            S6, [R4,#0x130]
1D6A32:  VSUB.F32        S0, S0, S8
1D6A36:  ADD.W           R3, R5, #0x50 ; 'P'
1D6A3A:  VSTR            S6, [R4,#0x13C]
1D6A3E:  VNMUL.F32       S12, S2, S10
1D6A42:  VNMUL.F32       S2, S2, S0
1D6A46:  VMUL.F32        S0, S0, S4
1D6A4A:  VMUL.F32        S4, S10, S4
1D6A4E:  VADD.F32        S10, S14, S12
1D6A52:  VSUB.F32        S12, S12, S14
1D6A56:  VSUB.F32        S3, S2, S14
1D6A5A:  VSUB.F32        S5, S0, S1
1D6A5E:  VADD.F32        S2, S14, S2
1D6A62:  VADD.F32        S14, S1, S4
1D6A66:  VADD.F32        S0, S1, S0
1D6A6A:  VSUB.F32        S4, S4, S1
1D6A6E:  VSTR            S12, [R4,#0x134]
1D6A72:  VSTR            S10, [R4,#0x128]
1D6A76:  VSTR            S12, [R4,#0x140]
1D6A7A:  VSTR            S14, [R4,#0x138]
1D6A7E:  VSTR            S4, [R4,#0x144]
1D6A82:  VSTR            S14, [R4,#0x12C]
1D6A86:  VSTR            S0, [R4,#0x168]
1D6A8A:  VSTR            S8, [R4,#0x16C]
1D6A8E:  VSTR            S3, [R4,#0x170]
1D6A92:  VSTR            S5, [R4,#0x174]
1D6A96:  VSTR            S8, [R4,#0x178]
1D6A9A:  VSTR            S2, [R4,#0x17C]
1D6A9E:  VSTR            S5, [R4,#0x180]
1D6AA2:  VSTR            S8, [R4,#0x184]
1D6AA6:  VSTR            S6, [R4,#0x148]
1D6AAA:  VSTR            S10, [R4,#0x14C]
1D6AAE:  VSTR            S4, [R4,#0x150]
1D6AB2:  VSTR            S6, [R4,#0x154]
1D6AB6:  VSTR            S2, [R4,#0x158]
1D6ABA:  VSTR            S0, [R4,#0x15C]
1D6ABE:  VSTR            S8, [R4,#0x160]
1D6AC2:  VSTR            S3, [R4,#0x164]
1D6AC6:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
1D6ACA:  VLDR            D16, [R5,#0x70]
1D6ACE:  VLDR            S0, [R4,#0x158]
1D6AD2:  VLDR            S2, [R4,#0x15C]
1D6AD6:  VLDR            S4, [R4,#0x160]
1D6ADA:  VSTR            D16, [R4,#0x98]
1D6ADE:  VLDR            S6, [R4,#0x98]
1D6AE2:  LDR             R0, [R5,#0x78]
1D6AE4:  VCMPE.F32       S6, #0.0
1D6AE8:  VLDR            S8, [R4,#0x9C]
1D6AEC:  VMRS            APSR_nzcv, FPSCR
1D6AF0:  STR.W           R0, [R4,#0xA0]
1D6AF4:  VLDR            S10, [R4,#0xA0]
1D6AF8:  MOV.W           R0, #0
1D6AFC:  VMUL.F32        S2, S2, S8
1D6B00:  VLDR            S16, =-0.0
1D6B04:  VMUL.F32        S0, S0, S6
1D6B08:  VCMPE.F32       S10, #0.0
1D6B0C:  VMUL.F32        S4, S4, S10
1D6B10:  VNEG.F32        S12, S10
1D6B14:  VADD.F32        S0, S0, S2
1D6B18:  VNEG.F32        S2, S6
1D6B1C:  VADD.F32        S0, S0, S4
1D6B20:  VNEG.F32        S4, S8
1D6B24:  IT GE
1D6B26:  MOVGE           R0, #1
1D6B28:  VMRS            APSR_nzcv, FPSCR
1D6B2C:  STRB.W          R0, [R4,#0xA8]
1D6B30:  MOV.W           R0, #0
1D6B34:  VCMPE.F32       S8, #0.0
1D6B38:  VSTR            S0, [R4,#0xA4]
1D6B3C:  IT GE
1D6B3E:  MOVGE           R0, #1
1D6B40:  VMRS            APSR_nzcv, FPSCR
1D6B44:  STRB.W          R0, [R4,#0xAA]
1D6B48:  MOV.W           R0, #0
1D6B4C:  VCMPE.F32       S6, S16
1D6B50:  IT GE
1D6B52:  MOVGE           R0, #1
1D6B54:  VMRS            APSR_nzcv, FPSCR
1D6B58:  STRB.W          R0, [R4,#0xA9]
1D6B5C:  MOV.W           R0, #0
1D6B60:  VSTR            S2, [R4,#0xAC]
1D6B64:  VCMPE.F32       S10, S16
1D6B68:  VSTR            S4, [R4,#0xB0]
1D6B6C:  VLDR            S0, [R4,#0x12C]
1D6B70:  VSTR            S12, [R4,#0xB4]
1D6B74:  VLDR            S2, [R4,#0x128]
1D6B78:  VMUL.F32        S0, S0, S8
1D6B7C:  VLDR            S4, [R4,#0x130]
1D6B80:  VNMUL.F32       S2, S6, S2
1D6B84:  VMUL.F32        S4, S4, S10
1D6B88:  VSUB.F32        S0, S2, S0
1D6B8C:  IT LE
1D6B8E:  MOVLE           R0, #1
1D6B90:  VMRS            APSR_nzcv, FPSCR
1D6B94:  STRB.W          R0, [R4,#0xBC]
1D6B98:  MOV.W           R0, #0
1D6B9C:  VSUB.F32        S0, S0, S4
1D6BA0:  VCMPE.F32       S8, S16
1D6BA4:  VSTR            S0, [R4,#0xB8]
1D6BA8:  IT LE
1D6BAA:  MOVLE           R0, #1
1D6BAC:  VMRS            APSR_nzcv, FPSCR
1D6BB0:  STRB.W          R0, [R4,#0xBE]
1D6BB4:  MOV.W           R0, #0
1D6BB8:  IT LE
1D6BBA:  MOVLE           R0, #1
1D6BBC:  STRB.W          R0, [R4,#0xBD]
1D6BC0:  VLDR            S8, [R4,#0x13C]
1D6BC4:  VLDR            S12, [R4,#0x16C]
1D6BC8:  VLDR            S0, [R4,#0x168]
1D6BCC:  VLDR            S2, [R4,#0x174]
1D6BD0:  VSUB.F32        S18, S8, S12
1D6BD4:  VLDR            S6, [R4,#0x138]
1D6BD8:  VLDR            S14, [R4,#0x178]
1D6BDC:  VSUB.F32        S2, S2, S0
1D6BE0:  VLDR            S4, [R4,#0x134]
1D6BE4:  VSUB.F32        S20, S6, S0
1D6BE8:  VLDR            S10, [R4,#0x164]
1D6BEC:  VSUB.F32        S12, S14, S12
1D6BF0:  VLDR            S8, [R4,#0x170]
1D6BF4:  VSUB.F32        S22, S4, S10
1D6BF8:  VSUB.F32        S0, S8, S10
1D6BFC:  VMUL.F32        S4, S18, S2
1D6C00:  VMUL.F32        S6, S20, S12
1D6C04:  VMUL.F32        S10, S22, S12
1D6C08:  VMUL.F32        S8, S18, S0
1D6C0C:  VMUL.F32        S0, S20, S0
1D6C10:  VMUL.F32        S2, S22, S2
1D6C14:  VSUB.F32        S4, S6, S4
1D6C18:  VSUB.F32        S6, S8, S10
1D6C1C:  VSUB.F32        S0, S2, S0
1D6C20:  VMUL.F32        S2, S4, S4
1D6C24:  VSTR            S4, [R4,#0xC0]
1D6C28:  VMUL.F32        S8, S6, S6
1D6C2C:  VSTR            S6, [R4,#0xC4]
1D6C30:  VMUL.F32        S10, S0, S0
1D6C34:  VSTR            S0, [R4,#0xC8]
1D6C38:  VADD.F32        S2, S2, S8
1D6C3C:  VADD.F32        S2, S10, S2
1D6C40:  VMOV            R0, S2; float
1D6C44:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D6C48:  VMOV            S12, R0
1D6C4C:  VLDR            S0, [R4,#0xC0]
1D6C50:  VLDR            S4, [R4,#0xC8]
1D6C54:  MOVS            R0, #0
1D6C56:  VMUL.F32        S0, S12, S0
1D6C5A:  VLDR            S2, [R4,#0xC4]
1D6C5E:  VMUL.F32        S4, S12, S4
1D6C62:  VLDR            S6, [R4,#0x134]
1D6C66:  VLDR            S10, [R4,#0x13C]
1D6C6A:  VMUL.F32        S2, S12, S2
1D6C6E:  VLDR            S8, [R4,#0x138]
1D6C72:  VCMPE.F32       S0, #0.0
1D6C76:  VMRS            APSR_nzcv, FPSCR
1D6C7A:  VCMPE.F32       S4, #0.0
1D6C7E:  VMUL.F32        S8, S2, S8
1D6C82:  VMUL.F32        S6, S0, S6
1D6C86:  VMUL.F32        S10, S4, S10
1D6C8A:  VADD.F32        S6, S6, S8
1D6C8E:  VADD.F32        S6, S6, S10
1D6C92:  IT GE
1D6C94:  MOVGE           R0, #1
1D6C96:  VMRS            APSR_nzcv, FPSCR
1D6C9A:  STRB.W          R0, [R4,#0xD0]
1D6C9E:  MOV.W           R0, #0
1D6CA2:  VCMPE.F32       S2, #0.0
1D6CA6:  IT GE
1D6CA8:  MOVGE           R0, #1
1D6CAA:  VMRS            APSR_nzcv, FPSCR
1D6CAE:  STRB.W          R0, [R4,#0xD2]
1D6CB2:  MOV.W           R0, #0
1D6CB6:  IT GE
1D6CB8:  MOVGE           R0, #1
1D6CBA:  STRB.W          R0, [R4,#0xD1]
1D6CBE:  VSTR            S0, [R4,#0xC0]
1D6CC2:  VSTR            S2, [R4,#0xC4]
1D6CC6:  VSTR            S4, [R4,#0xC8]
1D6CCA:  VSTR            S6, [R4,#0xCC]
1D6CCE:  VLDR            S0, [R4,#0x158]
1D6CD2:  VLDR            S6, [R4,#0x164]
1D6CD6:  VLDR            S2, [R4,#0x15C]
1D6CDA:  VLDR            S8, [R4,#0x168]
1D6CDE:  VSUB.F32        S0, S0, S6
1D6CE2:  VLDR            S4, [R4,#0x160]
1D6CE6:  VLDR            S10, [R4,#0x16C]
1D6CEA:  VSUB.F32        S2, S2, S8
1D6CEE:  VSUB.F32        S4, S4, S10
1D6CF2:  VMUL.F32        S10, S18, S0
1D6CF6:  VMUL.F32        S0, S20, S0
1D6CFA:  VMUL.F32        S8, S18, S2
1D6CFE:  VMUL.F32        S2, S22, S2
1D6D02:  VMUL.F32        S6, S20, S4
1D6D06:  VMUL.F32        S4, S22, S4
1D6D0A:  VSUB.F32        S0, S0, S2
1D6D0E:  VSUB.F32        S6, S8, S6
1D6D12:  VSUB.F32        S4, S4, S10
1D6D16:  VMUL.F32        S10, S0, S0
1D6D1A:  VMUL.F32        S2, S6, S6
1D6D1E:  VSTR            S6, [R4,#0xD4]
1D6D22:  VMUL.F32        S8, S4, S4
1D6D26:  VSTR            S4, [R4,#0xD8]
1D6D2A:  VSTR            S0, [R4,#0xDC]
1D6D2E:  VADD.F32        S2, S2, S8
1D6D32:  VADD.F32        S2, S10, S2
1D6D36:  VMOV            R0, S2; float
1D6D3A:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1D6D3E:  VMOV            S3, R0
1D6D42:  VLDR            S6, [R4,#0xD4]
1D6D46:  VLDR            S10, [R4,#0xDC]
1D6D4A:  MOVS            R0, #0
1D6D4C:  VMUL.F32        S4, S3, S6
1D6D50:  VLDR            S12, [R4,#0x134]
1D6D54:  VMUL.F32        S0, S3, S10
1D6D58:  VLDR            S1, [R4,#0x13C]
1D6D5C:  VLDR            S8, [R4,#0xD8]
1D6D60:  VNMUL.F32       S6, S3, S6
1D6D64:  VLDR            S14, [R4,#0x138]
1D6D68:  VNMUL.F32       S10, S3, S10
1D6D6C:  VMUL.F32        S2, S3, S8
1D6D70:  VNMUL.F32       S8, S3, S8
1D6D74:  VCMPE.F32       S4, #0.0
1D6D78:  VMRS            APSR_nzcv, FPSCR
1D6D7C:  VCMPE.F32       S0, #0.0
1D6D80:  VMUL.F32        S12, S4, S12
1D6D84:  VMUL.F32        S1, S0, S1
1D6D88:  VMUL.F32        S14, S2, S14
1D6D8C:  VADD.F32        S12, S12, S14
1D6D90:  VADD.F32        S12, S12, S1
1D6D94:  IT GE
1D6D96:  MOVGE           R0, #1
1D6D98:  VMRS            APSR_nzcv, FPSCR
1D6D9C:  STRB.W          R0, [R4,#0xE4]
1D6DA0:  MOV.W           R0, #0
1D6DA4:  VCMPE.F32       S2, #0.0
1D6DA8:  IT GE
1D6DAA:  MOVGE           R0, #1
1D6DAC:  VMRS            APSR_nzcv, FPSCR
1D6DB0:  STRB.W          R0, [R4,#0xE6]
1D6DB4:  MOV.W           R0, #0
1D6DB8:  IT GE
1D6DBA:  MOVGE           R0, #1
1D6DBC:  STRB.W          R0, [R4,#0xE5]
1D6DC0:  MOVS            R0, #0
1D6DC2:  VSTR            S4, [R4,#0xD4]
1D6DC6:  VSTR            S2, [R4,#0xD8]
1D6DCA:  VSTR            S0, [R4,#0xDC]
1D6DCE:  VSTR            S12, [R4,#0xE0]
1D6DD2:  VLDR            S12, [R4,#0xC0]
1D6DD6:  VLDR            S14, [R4,#0xC4]
1D6DDA:  VCMPE.F32       S12, S16
1D6DDE:  VLDR            S1, [R4,#0xC8]
1D6DE2:  VMRS            APSR_nzcv, FPSCR
1D6DE6:  VNEG.F32        S5, S12
1D6DEA:  VNEG.F32        S11, S1
1D6DEE:  VCMPE.F32       S1, S16
1D6DF2:  VSTR            S5, [R4,#0xE8]
1D6DF6:  VNEG.F32        S5, S14
1D6DFA:  VSTR            S5, [R4,#0xEC]
1D6DFE:  VLDR            S5, [R4,#0x14C]
1D6E02:  VLDR            S7, [R4,#0x150]
1D6E06:  VLDR            S9, [R4,#0x154]
1D6E0A:  VNMUL.F32       S13, S12, S5
1D6E0E:  VSTR            S11, [R4,#0xF0]
1D6E12:  VMUL.F32        S11, S7, S14
1D6E16:  VMUL.F32        S15, S9, S1
1D6E1A:  IT LE
1D6E1C:  MOVLE           R0, #1
1D6E1E:  VMRS            APSR_nzcv, FPSCR
1D6E22:  VMUL.F32        S7, S7, S2
1D6E26:  STRB.W          R0, [R4,#0xF8]
1D6E2A:  VNMUL.F32       S5, S4, S5
1D6E2E:  MOV.W           R0, #0
1D6E32:  VCMPE.F32       S14, S16
1D6E36:  VMUL.F32        S9, S9, S0
1D6E3A:  VSUB.F32        S11, S13, S11
1D6E3E:  VSUB.F32        S5, S5, S7
1D6E42:  VSUB.F32        S7, S11, S15
1D6E46:  VSUB.F32        S12, S5, S9
1D6E4A:  VSTR            S7, [R4,#0xF4]
1D6E4E:  IT LE
1D6E50:  MOVLE           R0, #1
1D6E52:  VMRS            APSR_nzcv, FPSCR
1D6E56:  STRB.W          R0, [R4,#0xFA]
1D6E5A:  MOV.W           R0, #0
1D6E5E:  VCMPE.F32       S4, S16
1D6E62:  IT LE
1D6E64:  MOVLE           R0, #1
1D6E66:  VMRS            APSR_nzcv, FPSCR
1D6E6A:  STRB.W          R0, [R4,#0xF9]
1D6E6E:  MOV.W           R0, #0
1D6E72:  VCMPE.F32       S2, S16
1D6E76:  IT LE
1D6E78:  MOVLE           R0, #1
1D6E7A:  VMRS            APSR_nzcv, FPSCR
1D6E7E:  STRB.W          R0, [R4,#0x10C]
1D6E82:  MOV.W           R0, #0
1D6E86:  VCMPE.F32       S0, S16
1D6E8A:  VSTR            S6, [R4,#0xFC]
1D6E8E:  VSTR            S8, [R4,#0x100]
1D6E92:  VSTR            S10, [R4,#0x104]
1D6E96:  VSTR            S12, [R4,#0x108]
1D6E9A:  IT LE
1D6E9C:  MOVLE           R0, #1
1D6E9E:  VMRS            APSR_nzcv, FPSCR
1D6EA2:  STRB.W          R0, [R4,#0x10D]
1D6EA6:  IT LE
1D6EA8:  MOVLE           R6, #1
1D6EAA:  ADD.W           R0, R4, #0x110
1D6EAE:  MOV             R1, R8
1D6EB0:  MOVS            R2, #8
1D6EB2:  STRB.W          R6, [R4,#0x10E]
1D6EB6:  BLX             j__Z15RwBBoxCalculateP6RwBBoxPK5RwV3di; RwBBoxCalculate(RwBBox *,RwV3d const*,int)
1D6EBA:  MOV             R0, R4
1D6EBC:  VPOP            {D8-D11}
1D6EC0:  POP.W           {R8}
1D6EC4:  POP             {R4-R7,PC}
