; =========================================================
; Game Engine Function: _ZN7CEntity16IsEntityOccludedEv
; Address            : 0x5B01F8 - 0x5B0E50
; =========================================================

5B01F8:  PUSH            {R4-R7,LR}
5B01FA:  ADD             R7, SP, #0xC
5B01FC:  PUSH.W          {R8-R11}
5B0200:  SUB             SP, SP, #4
5B0202:  VPUSH           {D8-D14}
5B0206:  SUB             SP, SP, #0xD0
5B0208:  ADD             R1, SP, #0x128+var_74; CVector *
5B020A:  MOV             R9, R0
5B020C:  BLX.W           j__ZNK7CEntity14GetBoundCentreER7CVector; CEntity::GetBoundCentre(CVector &)
5B0210:  LDR.W           R0, =(_ZN10COcclusion18NumActiveOccludersE_ptr - 0x5B0218)
5B0214:  ADD             R0, PC; _ZN10COcclusion18NumActiveOccludersE_ptr
5B0216:  LDR             R0, [R0]; COcclusion::NumActiveOccluders ...
5B0218:  LDR             R0, [R0]; COcclusion::NumActiveOccluders
5B021A:  CMP             R0, #0
5B021C:  BEQ.W           loc_5B0E3C
5B0220:  LDR.W           R0, =(TheCamera_ptr - 0x5B022C)
5B0224:  ADD             R4, SP, #0x128+var_68
5B0226:  ADD             R2, SP, #0x128+var_74
5B0228:  ADD             R0, PC; TheCamera_ptr
5B022A:  LDR             R0, [R0]; TheCamera
5B022C:  ADDW            R1, R0, #0x98C
5B0230:  MOV             R0, R4
5B0232:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0236:  VMOV.F32        S16, #1.0
5B023A:  VLDR            S18, [SP,#0x128+var_60]
5B023E:  VCMPE.F32       S18, S16
5B0242:  VMRS            APSR_nzcv, FPSCR
5B0246:  BLE.W           loc_5B0E3C
5B024A:  LDR.W           R0, =(RsGlobal_ptr - 0x5B0252)
5B024E:  ADD             R0, PC; RsGlobal_ptr
5B0250:  LDR             R0, [R0]; RsGlobal
5B0252:  VLDR            S2, [R0,#4]
5B0256:  VLDR            S0, [R0,#8]
5B025A:  LDR.W           R0, =(_ZN10COcclusion18NumActiveOccludersE_ptr - 0x5B0266)
5B025E:  VCVT.F32.S32    S0, S0
5B0262:  ADD             R0, PC; _ZN10COcclusion18NumActiveOccludersE_ptr
5B0264:  VCVT.F32.S32    S2, S2
5B0268:  LDR             R0, [R0]; COcclusion::NumActiveOccluders ...
5B026A:  LDR             R0, [R0]; COcclusion::NumActiveOccluders
5B026C:  CMP             R0, #1
5B026E:  BLT.W           loc_5B0E3C
5B0272:  LDR.W           R0, =(_ZN5CDraw7ms_fFOVE_ptr - 0x5B0286)
5B0276:  VDIV.F32        S12, S16, S18
5B027A:  LDRSH.W         R1, [R9,#0x26]
5B027E:  MOV.W           R8, #0
5B0282:  ADD             R0, PC; _ZN5CDraw7ms_fFOVE_ptr
5B0284:  LDR             R0, [R0]; CDraw::ms_fFOV ...
5B0286:  VLDR            S10, [R0]
5B028A:  VMUL.F32        S2, S12, S2
5B028E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B029E)
5B0292:  VMOV.F32        S28, #30.0
5B0296:  VLDR            S8, =70.0
5B029A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B029C:  VLDR            S4, [SP,#0x128+var_68]
5B02A0:  VDIV.F32        S8, S8, S10
5B02A4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B02A6:  LDR.W           R0, [R0,R1,LSL#2]
5B02AA:  LDR             R2, [R0,#0x2C]
5B02AC:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B02B4)
5B02B0:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B02B2:  LDR.W           R11, [R0]; COcclusion::aActiveOccluders ...
5B02B6:  ADD.W           R0, R9, #4
5B02BA:  ADD.W           R10, R11, #8
5B02BE:  ADD.W           R12, R11, #0xA0
5B02C2:  ADD.W           LR, R11, #0x7C ; '|'
5B02C6:  VMUL.F32        S10, S12, S0
5B02CA:  VLDR            S0, [R2,#0x24]
5B02CE:  STR             R0, [SP,#0x128+var_AC]
5B02D0:  VMUL.F32        S22, S4, S2
5B02D4:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B02E0)
5B02D8:  VLDR            S6, [SP,#0x128+var_68+4]
5B02DC:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B02DE:  VLDR            S26, =60.0
5B02E2:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B02E4:  STR             R0, [SP,#0x128+var_90]
5B02E6:  VMUL.F32        S12, S10, S8
5B02EA:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B02FA)
5B02EE:  VMUL.F32        S8, S2, S8
5B02F2:  VMUL.F32        S20, S6, S10
5B02F6:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B02F8:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B02FA:  STR             R0, [SP,#0x128+var_A8]
5B02FC:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B030C)
5B0300:  VMAX.F32        D4, D4, D6
5B0304:  VLDR            S12, =0.9
5B0308:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B030A:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B030C:  STR             R0, [SP,#0x128+var_B0]
5B030E:  VMUL.F32        S8, S8, S0
5B0312:  LDR.W           R0, =(TheCamera_ptr - 0x5B031A)
5B0316:  ADD             R0, PC; TheCamera_ptr
5B0318:  LDR             R0, [R0]; TheCamera
5B031A:  STR             R0, [SP,#0x128+var_B4]
5B031C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B0328)
5B0320:  VMUL.F32        S24, S8, S12
5B0324:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B0326:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B0328:  STR             R0, [SP,#0x128+var_D4]
5B032A:  LDR.W           R0, =(TheCamera_ptr - 0x5B0332)
5B032E:  ADD             R0, PC; TheCamera_ptr
5B0330:  LDR             R0, [R0]; TheCamera
5B0332:  ADDW            R0, R0, #0x98C
5B0336:  STR             R0, [SP,#0x128+var_B8]
5B0338:  LDR.W           R0, =(RsGlobal_ptr - 0x5B0340)
5B033C:  ADD             R0, PC; RsGlobal_ptr
5B033E:  LDR             R0, [R0]; RsGlobal
5B0340:  STR             R0, [SP,#0x128+var_DC]
5B0342:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B034A)
5B0346:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B0348:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B034A:  STR             R0, [SP,#0x128+var_D8]
5B034C:  LDR.W           R0, =(TheCamera_ptr - 0x5B0354)
5B0350:  ADD             R0, PC; TheCamera_ptr
5B0352:  LDR             R0, [R0]; TheCamera
5B0354:  STR             R0, [SP,#0x128+var_E0]
5B0356:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B035E)
5B035A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B035C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B035E:  STR             R0, [SP,#0x128+var_BC]
5B0360:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B0368)
5B0364:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B0366:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B0368:  STR             R0, [SP,#0x128+var_C0]
5B036A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B0372)
5B036E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B0370:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B0372:  STR             R0, [SP,#0x128+var_C4]
5B0374:  LDR.W           R0, =(TheCamera_ptr - 0x5B037C)
5B0378:  ADD             R0, PC; TheCamera_ptr
5B037A:  LDR             R0, [R0]; TheCamera
5B037C:  ADDW            R0, R0, #0x98C
5B0380:  STR             R0, [SP,#0x128+var_C8]
5B0382:  LDR.W           R0, =(RsGlobal_ptr - 0x5B038A)
5B0386:  ADD             R0, PC; RsGlobal_ptr
5B0388:  LDR             R0, [R0]; RsGlobal
5B038A:  STR             R0, [SP,#0x128+var_F0]
5B038C:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B0394)
5B0390:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B0392:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B0394:  STR             R0, [SP,#0x128+var_E4]
5B0396:  LDR.W           R0, =(TheCamera_ptr - 0x5B039E)
5B039A:  ADD             R0, PC; TheCamera_ptr
5B039C:  LDR             R0, [R0]; TheCamera
5B039E:  STR             R0, [SP,#0x128+var_108]
5B03A0:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B03A8)
5B03A4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B03A6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B03A8:  STR             R0, [SP,#0x128+var_FC]
5B03AA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B03B2)
5B03AE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B03B0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B03B2:  STR             R0, [SP,#0x128+var_118]
5B03B4:  LDR.W           R0, =(TheCamera_ptr - 0x5B03BC)
5B03B8:  ADD             R0, PC; TheCamera_ptr
5B03BA:  LDR             R0, [R0]; TheCamera
5B03BC:  ADDW            R0, R0, #0x98C
5B03C0:  STR             R0, [SP,#0x128+var_100]
5B03C2:  LDR.W           R0, =(RsGlobal_ptr - 0x5B03CA)
5B03C6:  ADD             R0, PC; RsGlobal_ptr
5B03C8:  LDR             R0, [R0]; RsGlobal
5B03CA:  STR             R0, [SP,#0x128+var_11C]
5B03CC:  LDR.W           R0, =(TheCamera_ptr - 0x5B03D4)
5B03D0:  ADD             R0, PC; TheCamera_ptr
5B03D2:  LDR             R0, [R0]; TheCamera
5B03D4:  STR             R0, [SP,#0x128+var_120]
5B03D6:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B03DE)
5B03DA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B03DC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B03DE:  STR             R0, [SP,#0x128+var_104]
5B03E0:  LDR.W           R0, =(TheCamera_ptr - 0x5B03E8)
5B03E4:  ADD             R0, PC; TheCamera_ptr
5B03E6:  LDR             R0, [R0]; TheCamera
5B03E8:  ADDW            R0, R0, #0x98C
5B03EC:  STR             R0, [SP,#0x128+var_114]
5B03EE:  LDR.W           R0, =(RsGlobal_ptr - 0x5B03F6)
5B03F2:  ADD             R0, PC; RsGlobal_ptr
5B03F4:  LDR             R0, [R0]; RsGlobal
5B03F6:  STR             R0, [SP,#0x128+var_128]
5B03F8:  LDR.W           R0, =(TheCamera_ptr - 0x5B0400)
5B03FC:  ADD             R0, PC; TheCamera_ptr
5B03FE:  LDR             R0, [R0]; TheCamera
5B0400:  STR             R0, [SP,#0x128+var_124]
5B0402:  LDR.W           R0, =(TheCamera_ptr - 0x5B040A)
5B0406:  ADD             R0, PC; TheCamera_ptr
5B0408:  LDR             R0, [R0]; TheCamera
5B040A:  ADDW            R0, R0, #0x98C
5B040E:  STR             R0, [SP,#0x128+var_CC]
5B0410:  LDR.W           R0, =(RsGlobal_ptr - 0x5B0418)
5B0414:  ADD             R0, PC; RsGlobal_ptr
5B0416:  LDR             R0, [R0]; RsGlobal
5B0418:  STR             R0, [SP,#0x128+var_F4]
5B041A:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B0422)
5B041E:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B0420:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B0422:  STR             R0, [SP,#0x128+var_E8]
5B0424:  LDR.W           R0, =(TheCamera_ptr - 0x5B042C)
5B0428:  ADD             R0, PC; TheCamera_ptr
5B042A:  LDR             R0, [R0]; TheCamera
5B042C:  STR             R0, [SP,#0x128+var_10C]
5B042E:  LDR.W           R0, =(TheCamera_ptr - 0x5B0436)
5B0432:  ADD             R0, PC; TheCamera_ptr
5B0434:  LDR             R0, [R0]; TheCamera
5B0436:  ADDW            R0, R0, #0x98C
5B043A:  STR             R0, [SP,#0x128+var_D0]
5B043C:  LDR.W           R0, =(RsGlobal_ptr - 0x5B0444)
5B0440:  ADD             R0, PC; RsGlobal_ptr
5B0442:  LDR             R0, [R0]; RsGlobal
5B0444:  STR             R0, [SP,#0x128+var_F8]
5B0446:  LDR.W           R0, =(_ZN10COcclusion16aActiveOccludersE_ptr - 0x5B044E)
5B044A:  ADD             R0, PC; _ZN10COcclusion16aActiveOccludersE_ptr
5B044C:  LDR             R0, [R0]; COcclusion::aActiveOccluders ...
5B044E:  STR             R0, [SP,#0x128+var_EC]
5B0450:  LDR.W           R0, =(TheCamera_ptr - 0x5B0458)
5B0454:  ADD             R0, PC; TheCamera_ptr
5B0456:  LDR             R0, [R0]; TheCamera
5B0458:  STR             R0, [SP,#0x128+var_110]
5B045A:  LDR.W           R0, =(_ZN10COcclusion18NumActiveOccludersE_ptr - 0x5B0462)
5B045E:  ADD             R0, PC; _ZN10COcclusion18NumActiveOccludersE_ptr
5B0460:  LDR             R0, [R0]; COcclusion::NumActiveOccluders ...
5B0462:  STR             R0, [SP,#0x128+var_94]
5B0464:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5B046C)
5B0468:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5B046A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5B046C:  STR             R0, [SP,#0x128+var_98]
5B046E:  B               loc_5B0490
5B0470:  LDRSH.W         R0, [R9,#0x26]
5B0474:  ADD.W           R11, R11, #0xAC
5B0478:  LDR             R1, [SP,#0x128+var_98]
5B047A:  ADD.W           LR, LR, #0xAC
5B047E:  ADD.W           R12, R12, #0xAC
5B0482:  ADD.W           R10, R10, #0xAC
5B0486:  LDR.W           R0, [R1,R0,LSL#2]
5B048A:  LDR             R2, [R0,#0x2C]
5B048C:  VLDR            S0, [R2,#0x24]
5B0490:  MOVS            R0, #0xAC
5B0492:  LDR             R1, [SP,#0x128+var_90]
5B0494:  MLA.W           R0, R8, R0, R1
5B0498:  VSUB.F32        S2, S18, S0
5B049C:  LDRSH.W         R0, [R0,#0x78]
5B04A0:  VMOV            S4, R0
5B04A4:  VCVT.F32.S32    S4, S4
5B04A8:  VCMPE.F32       S2, S4
5B04AC:  VMRS            APSR_nzcv, FPSCR
5B04B0:  BLE.W           loc_5B0E2E
5B04B4:  MOVS            R0, #0xAC
5B04B6:  LDR             R1, [SP,#0x128+var_A8]
5B04B8:  MLA.W           R1, R8, R0, R1
5B04BC:  MOV             R6, R4
5B04BE:  LDRSB.W         R0, [R1,#0x7A]!
5B04C2:  STR             R1, [SP,#0x128+var_A4]
5B04C4:  CMP             R0, #1
5B04C6:  BLT             loc_5B0502
5B04C8:  MOVS            R1, #0
5B04CA:  MOV             R3, R10
5B04CC:  VLDR            S2, [R3,#-8]
5B04D0:  VLDR            S4, [R3,#-4]
5B04D4:  VSUB.F32        S2, S22, S2
5B04D8:  VLDR            S8, [R3,#4]
5B04DC:  VSUB.F32        S4, S20, S4
5B04E0:  VLDR            S6, [R3]
5B04E4:  VMUL.F32        S2, S2, S8
5B04E8:  VMUL.F32        S4, S4, S6
5B04EC:  VSUB.F32        S2, S2, S4
5B04F0:  VCMPE.F32       S2, S24
5B04F4:  VMRS            APSR_nzcv, FPSCR
5B04F8:  BLT             loc_5B05B8
5B04FA:  ADDS            R1, #1
5B04FC:  ADDS            R3, #0x14
5B04FE:  CMP             R1, R0
5B0500:  BLT             loc_5B04CC
5B0502:  MOVS            R1, #0xAC
5B0504:  LDR             R3, [SP,#0x128+var_B0]
5B0506:  MLA.W           R1, R8, R1, R3
5B050A:  LDRSB.W         R1, [R1,#0x7B]
5B050E:  CMP             R1, #1
5B0510:  BLT.W           loc_5B0E4C
5B0514:  LDR             R4, [SP,#0x128+var_B4]
5B0516:  VLDR            S2, [SP,#0x128+var_74]
5B051A:  VLDR            S4, [SP,#0x128+var_70]
5B051E:  LDR             R3, [R4,#0x14]
5B0520:  VLDR            S6, [SP,#0x128+var_6C]
5B0524:  ADD.W           R5, R3, #0x30 ; '0'
5B0528:  CMP             R3, #0
5B052A:  IT EQ
5B052C:  ADDEQ           R5, R4, #4
5B052E:  MOVS            R3, #0
5B0530:  VLDR            S8, [R5]
5B0534:  MOV             R4, R12
5B0536:  VLDR            S10, [R5,#4]
5B053A:  VLDR            S12, [R5,#8]
5B053E:  MOV             R5, LR
5B0540:  VLDR            S14, [R5]
5B0544:  VLDR            S3, [R5,#4]
5B0548:  VMUL.F32        S7, S2, S14
5B054C:  VLDR            S1, [R5,#8]
5B0550:  VMUL.F32        S5, S4, S3
5B0554:  VMUL.F32        S9, S6, S1
5B0558:  VADD.F32        S5, S7, S5
5B055C:  VADD.F32        S7, S5, S9
5B0560:  VLDR            S5, [R4]
5B0564:  VSUB.F32        S7, S7, S5
5B0568:  VABS.F32        S9, S7
5B056C:  VCMPE.F32       S9, S0
5B0570:  VMRS            APSR_nzcv, FPSCR
5B0574:  BLT             loc_5B05B8
5B0576:  VMUL.F32        S3, S10, S3
5B057A:  VMUL.F32        S14, S8, S14
5B057E:  VMUL.F32        S1, S12, S1
5B0582:  VADD.F32        S14, S14, S3
5B0586:  VADD.F32        S14, S14, S1
5B058A:  VSUB.F32        S14, S14, S5
5B058E:  VMUL.F32        S14, S7, S14
5B0592:  VCMPE.F32       S14, #0.0
5B0596:  VMRS            APSR_nzcv, FPSCR
5B059A:  BGE             loc_5B05B8
5B059C:  ADDS            R3, #1
5B059E:  ADDS            R5, #0xC
5B05A0:  ADDS            R4, #4
5B05A2:  CMP             R3, R1
5B05A4:  BLT             loc_5B0540
5B05A6:  B.W             loc_5B0E4C
5B05AA:  ALIGN 4
5B05AC:  DCFS 70.0
5B05B0:  DCFS 60.0
5B05B4:  DCFS 0.9
5B05B8:  CMP             R0, #1
5B05BA:  MOV             R4, R6
5B05BC:  BLT             loc_5B05FA
5B05BE:  MOVS            R1, #0
5B05C0:  MOV             R3, R10
5B05C2:  VLDR            S0, [R3,#-8]
5B05C6:  VLDR            S2, [R3,#-4]
5B05CA:  VSUB.F32        S0, S22, S0
5B05CE:  VLDR            S6, [R3,#4]
5B05D2:  VSUB.F32        S2, S20, S2
5B05D6:  VLDR            S4, [R3]
5B05DA:  VMUL.F32        S0, S0, S6
5B05DE:  VMUL.F32        S2, S2, S4
5B05E2:  VSUB.F32        S0, S0, S2
5B05E6:  VCMPE.F32       S0, #0.0
5B05EA:  VMRS            APSR_nzcv, FPSCR
5B05EE:  BLT.W           loc_5B0E2E
5B05F2:  ADDS            R1, #1
5B05F4:  ADDS            R3, #0x14
5B05F6:  CMP             R1, R0
5B05F8:  BLT             loc_5B05C2
5B05FA:  STRD.W          LR, R12, [SP,#0x128+var_A0]
5B05FE:  LDR.W           R1, [R9,#0x14]
5B0602:  CMP             R1, #0
5B0604:  BNE             loc_5B0626
5B0606:  MOV             R0, R9; this
5B0608:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B060C:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B0610:  LDR             R0, [SP,#0x128+var_AC]; this
5B0612:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B0616:  LDRSH.W         R0, [R9,#0x26]
5B061A:  LDR             R1, [SP,#0x128+var_D4]
5B061C:  LDR.W           R0, [R1,R0,LSL#2]
5B0620:  LDR.W           R1, [R9,#0x14]
5B0624:  LDR             R2, [R0,#0x2C]
5B0626:  ADD             R5, SP, #0x128+var_80
5B0628:  MOV             R0, R5
5B062A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B062E:  LDR             R1, [SP,#0x128+var_B8]
5B0630:  MOV             R0, R4
5B0632:  MOV             R2, R5
5B0634:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0638:  MOV             R0, R4
5B063A:  VLD1.32         {D16}, [R0@64]!
5B063E:  VLDR            S0, [R0]
5B0642:  VCMPE.F32       S0, S16
5B0646:  VMRS            APSR_nzcv, FPSCR
5B064A:  BLE             loc_5B0738
5B064C:  LDR             R0, [SP,#0x128+var_A4]
5B064E:  LDRSB.W         R0, [R0]
5B0652:  LDRD.W          R5, R6, [SP,#0x128+var_A0]
5B0656:  CMP             R0, #1
5B0658:  BLT             loc_5B06A0
5B065A:  VDIV.F32        S0, S16, S0
5B065E:  LDR             R1, [SP,#0x128+var_DC]
5B0660:  MOV             R2, R11
5B0662:  VLDR            D17, [R1,#4]
5B0666:  MOVS            R1, #0
5B0668:  VCVT.F32.S32    D17, D17
5B066C:  VMUL.F32        D17, D17, D0[0]
5B0670:  VMUL.F32        D16, D16, D17
5B0674:  MOV             R3, R2
5B0676:  VLDR            S0, [R2,#0xC]
5B067A:  VLD1.32         {D17}, [R3]!
5B067E:  VSUB.F32        D17, D16, D17
5B0682:  VLDR            S1, [R3]
5B0686:  VMUL.F32        D0, D17, D0
5B068A:  VSUB.F32        S0, S0, S1
5B068E:  VCMPE.F32       S0, #0.0
5B0692:  VMRS            APSR_nzcv, FPSCR
5B0696:  BLT             loc_5B0738
5B0698:  ADDS            R1, #1
5B069A:  ADDS            R2, #0x14
5B069C:  CMP             R1, R0
5B069E:  BLT             loc_5B0674
5B06A0:  MOVS            R0, #0xAC
5B06A2:  LDR             R1, [SP,#0x128+var_D8]
5B06A4:  MLA.W           R0, R8, R0, R1
5B06A8:  LDRSB.W         R0, [R0,#0x7B]
5B06AC:  CMP             R0, #1
5B06AE:  BLT             loc_5B0734
5B06B0:  LDR             R3, [SP,#0x128+var_E0]
5B06B2:  VLDR            S0, [SP,#0x128+var_80]
5B06B6:  VLDR            S2, [SP,#0x128+var_80+4]
5B06BA:  LDR             R1, [R3,#0x14]
5B06BC:  VLDR            S4, [SP,#0x128+var_78]
5B06C0:  ADD.W           R2, R1, #0x30 ; '0'
5B06C4:  CMP             R1, #0
5B06C6:  IT EQ
5B06C8:  ADDEQ           R2, R3, #4
5B06CA:  MOVS            R1, #0
5B06CC:  VLDR            S6, [R2]
5B06D0:  MOV             R3, R6
5B06D2:  VLDR            S8, [R2,#4]
5B06D6:  VLDR            S10, [R2,#8]
5B06DA:  MOV             R2, R5
5B06DC:  VLDR            S12, [R2]
5B06E0:  VLDR            S14, [R2,#4]
5B06E4:  VMUL.F32        S5, S6, S12
5B06E8:  VLDR            S1, [R2,#8]
5B06EC:  VMUL.F32        S3, S8, S14
5B06F0:  VMUL.F32        S14, S2, S14
5B06F4:  VMUL.F32        S12, S0, S12
5B06F8:  VMUL.F32        S7, S10, S1
5B06FC:  VMUL.F32        S1, S4, S1
5B0700:  VADD.F32        S3, S5, S3
5B0704:  VADD.F32        S12, S12, S14
5B0708:  VADD.F32        S14, S3, S7
5B070C:  VADD.F32        S12, S12, S1
5B0710:  VLDR            S1, [R3]
5B0714:  VSUB.F32        S14, S14, S1
5B0718:  VSUB.F32        S12, S12, S1
5B071C:  VMUL.F32        S12, S12, S14
5B0720:  VCMPE.F32       S12, #0.0
5B0724:  VMRS            APSR_nzcv, FPSCR
5B0728:  BGE             loc_5B0738
5B072A:  ADDS            R1, #1
5B072C:  ADDS            R2, #0xC
5B072E:  ADDS            R3, #4
5B0730:  CMP             R1, R0
5B0732:  BLT             loc_5B06DC
5B0734:  MOVS            R5, #0
5B0736:  B               loc_5B073A
5B0738:  MOVS            R5, #1
5B073A:  LDR.W           R1, [R9,#0x14]
5B073E:  CBNZ            R1, loc_5B0754
5B0740:  MOV             R0, R9; this
5B0742:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B0746:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B074A:  LDR             R0, [SP,#0x128+var_AC]; this
5B074C:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B0750:  LDR.W           R1, [R9,#0x14]
5B0754:  LDRSH.W         R0, [R9,#0x26]
5B0758:  LDR             R2, [SP,#0x128+var_BC]
5B075A:  LDR.W           R0, [R2,R0,LSL#2]
5B075E:  LDR             R0, [R0,#0x2C]
5B0760:  ADD.W           R2, R0, #0xC
5B0764:  MOV             R0, R4
5B0766:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B076A:  VLDR            D16, [SP,#0x128+var_68]
5B076E:  CMP             R5, #0
5B0770:  LDR             R0, [SP,#0x128+var_60]
5B0772:  STR             R0, [SP,#0x128+var_78]
5B0774:  VSTR            D16, [SP,#0x128+var_80]
5B0778:  BNE.W           loc_5B0886
5B077C:  LDR             R1, [SP,#0x128+var_D0]
5B077E:  ADD             R2, SP, #0x128+var_80
5B0780:  MOV             R0, R4
5B0782:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0786:  MOV             R0, R4
5B0788:  VLD1.32         {D16}, [R0@64]!
5B078C:  VLDR            S0, [R0]
5B0790:  VCMPE.F32       S0, S16
5B0794:  VMRS            APSR_nzcv, FPSCR
5B0798:  BLE             loc_5B0886
5B079A:  LDR             R0, [SP,#0x128+var_A4]
5B079C:  LDRSB.W         R0, [R0]
5B07A0:  LDRD.W          R5, R6, [SP,#0x128+var_A0]
5B07A4:  CMP             R0, #1
5B07A6:  BLT             loc_5B07EE
5B07A8:  VDIV.F32        S0, S16, S0
5B07AC:  LDR             R1, [SP,#0x128+var_F8]
5B07AE:  MOV             R2, R11
5B07B0:  VLDR            D17, [R1,#4]
5B07B4:  MOVS            R1, #0
5B07B6:  VCVT.F32.S32    D17, D17
5B07BA:  VMUL.F32        D17, D17, D0[0]
5B07BE:  VMUL.F32        D16, D16, D17
5B07C2:  MOV             R3, R2
5B07C4:  VLDR            S0, [R2,#0xC]
5B07C8:  VLD1.32         {D17}, [R3]!
5B07CC:  VSUB.F32        D17, D16, D17
5B07D0:  VLDR            S1, [R3]
5B07D4:  VMUL.F32        D0, D17, D0
5B07D8:  VSUB.F32        S0, S0, S1
5B07DC:  VCMPE.F32       S0, #0.0
5B07E0:  VMRS            APSR_nzcv, FPSCR
5B07E4:  BLT             loc_5B0886
5B07E6:  ADDS            R1, #1
5B07E8:  ADDS            R2, #0x14
5B07EA:  CMP             R1, R0
5B07EC:  BLT             loc_5B07C2
5B07EE:  MOVS            R0, #0xAC
5B07F0:  LDR             R1, [SP,#0x128+var_EC]
5B07F2:  MLA.W           R0, R8, R0, R1
5B07F6:  LDRSB.W         R0, [R0,#0x7B]
5B07FA:  CMP             R0, #1
5B07FC:  BLT             loc_5B0882
5B07FE:  LDR             R3, [SP,#0x128+var_110]
5B0800:  VLDR            S0, [SP,#0x128+var_80]
5B0804:  VLDR            S2, [SP,#0x128+var_80+4]
5B0808:  LDR             R1, [R3,#0x14]
5B080A:  VLDR            S4, [SP,#0x128+var_78]
5B080E:  ADD.W           R2, R1, #0x30 ; '0'
5B0812:  CMP             R1, #0
5B0814:  IT EQ
5B0816:  ADDEQ           R2, R3, #4
5B0818:  MOVS            R1, #0
5B081A:  VLDR            S6, [R2]
5B081E:  MOV             R3, R6
5B0820:  VLDR            S8, [R2,#4]
5B0824:  VLDR            S10, [R2,#8]
5B0828:  MOV             R2, R5
5B082A:  VLDR            S12, [R2]
5B082E:  VLDR            S14, [R2,#4]
5B0832:  VMUL.F32        S5, S6, S12
5B0836:  VLDR            S1, [R2,#8]
5B083A:  VMUL.F32        S3, S8, S14
5B083E:  VMUL.F32        S14, S2, S14
5B0842:  VMUL.F32        S12, S0, S12
5B0846:  VMUL.F32        S7, S10, S1
5B084A:  VMUL.F32        S1, S4, S1
5B084E:  VADD.F32        S3, S5, S3
5B0852:  VADD.F32        S12, S12, S14
5B0856:  VADD.F32        S14, S3, S7
5B085A:  VADD.F32        S12, S12, S1
5B085E:  VLDR            S1, [R3]
5B0862:  VSUB.F32        S14, S14, S1
5B0866:  VSUB.F32        S12, S12, S1
5B086A:  VMUL.F32        S12, S12, S14
5B086E:  VCMPE.F32       S12, #0.0
5B0872:  VMRS            APSR_nzcv, FPSCR
5B0876:  BGE             loc_5B0886
5B0878:  ADDS            R1, #1
5B087A:  ADDS            R2, #0xC
5B087C:  ADDS            R3, #4
5B087E:  CMP             R1, R0
5B0880:  BLT             loc_5B082A
5B0882:  MOVS            R5, #0
5B0884:  B               loc_5B0888
5B0886:  MOVS            R5, #1
5B0888:  LDR.W           R1, [R9,#0x14]
5B088C:  CBNZ            R1, loc_5B08A2
5B088E:  MOV             R0, R9; this
5B0890:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B0894:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B0898:  LDR             R0, [SP,#0x128+var_AC]; this
5B089A:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B089E:  LDR.W           R1, [R9,#0x14]
5B08A2:  LDRSH.W         R0, [R9,#0x26]
5B08A6:  LDR             R2, [SP,#0x128+var_C0]
5B08A8:  LDR.W           R0, [R2,R0,LSL#2]
5B08AC:  LDR             R0, [R0,#0x2C]
5B08AE:  LDR             R2, [R0]
5B08B0:  LDRD.W          R3, R0, [R0,#0x10]
5B08B4:  STRD.W          R2, R3, [SP,#0x128+var_8C]
5B08B8:  ADD             R2, SP, #0x128+var_8C
5B08BA:  STR             R0, [SP,#0x128+var_84]
5B08BC:  MOV             R0, R4
5B08BE:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B08C2:  VLDR            D16, [SP,#0x128+var_68]
5B08C6:  CMP             R5, #0
5B08C8:  LDR             R0, [SP,#0x128+var_60]
5B08CA:  STR             R0, [SP,#0x128+var_78]
5B08CC:  VSTR            D16, [SP,#0x128+var_80]
5B08D0:  BNE.W           loc_5B09DE
5B08D4:  LDR             R1, [SP,#0x128+var_CC]
5B08D6:  ADD             R2, SP, #0x128+var_80
5B08D8:  MOV             R0, R4
5B08DA:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B08DE:  MOV             R0, R4
5B08E0:  VLD1.32         {D16}, [R0@64]!
5B08E4:  VLDR            S0, [R0]
5B08E8:  VCMPE.F32       S0, S16
5B08EC:  VMRS            APSR_nzcv, FPSCR
5B08F0:  BLE             loc_5B09DE
5B08F2:  LDR             R0, [SP,#0x128+var_A4]
5B08F4:  LDRSB.W         R0, [R0]
5B08F8:  LDRD.W          R5, R6, [SP,#0x128+var_A0]
5B08FC:  CMP             R0, #1
5B08FE:  BLT             loc_5B0946
5B0900:  VDIV.F32        S0, S16, S0
5B0904:  LDR             R1, [SP,#0x128+var_F4]
5B0906:  MOV             R2, R11
5B0908:  VLDR            D17, [R1,#4]
5B090C:  MOVS            R1, #0
5B090E:  VCVT.F32.S32    D17, D17
5B0912:  VMUL.F32        D17, D17, D0[0]
5B0916:  VMUL.F32        D16, D16, D17
5B091A:  MOV             R3, R2
5B091C:  VLDR            S0, [R2,#0xC]
5B0920:  VLD1.32         {D17}, [R3]!
5B0924:  VSUB.F32        D17, D16, D17
5B0928:  VLDR            S1, [R3]
5B092C:  VMUL.F32        D0, D17, D0
5B0930:  VSUB.F32        S0, S0, S1
5B0934:  VCMPE.F32       S0, #0.0
5B0938:  VMRS            APSR_nzcv, FPSCR
5B093C:  BLT             loc_5B09DE
5B093E:  ADDS            R1, #1
5B0940:  ADDS            R2, #0x14
5B0942:  CMP             R1, R0
5B0944:  BLT             loc_5B091A
5B0946:  MOVS            R0, #0xAC
5B0948:  LDR             R1, [SP,#0x128+var_E8]
5B094A:  MLA.W           R0, R8, R0, R1
5B094E:  LDRSB.W         R0, [R0,#0x7B]
5B0952:  CMP             R0, #1
5B0954:  BLT             loc_5B09DA
5B0956:  LDR             R3, [SP,#0x128+var_10C]
5B0958:  VLDR            S0, [SP,#0x128+var_80]
5B095C:  VLDR            S2, [SP,#0x128+var_80+4]
5B0960:  LDR             R1, [R3,#0x14]
5B0962:  VLDR            S4, [SP,#0x128+var_78]
5B0966:  ADD.W           R2, R1, #0x30 ; '0'
5B096A:  CMP             R1, #0
5B096C:  IT EQ
5B096E:  ADDEQ           R2, R3, #4
5B0970:  MOVS            R1, #0
5B0972:  VLDR            S6, [R2]
5B0976:  MOV             R3, R6
5B0978:  VLDR            S8, [R2,#4]
5B097C:  VLDR            S10, [R2,#8]
5B0980:  MOV             R2, R5
5B0982:  VLDR            S12, [R2]
5B0986:  VLDR            S14, [R2,#4]
5B098A:  VMUL.F32        S5, S6, S12
5B098E:  VLDR            S1, [R2,#8]
5B0992:  VMUL.F32        S3, S8, S14
5B0996:  VMUL.F32        S14, S2, S14
5B099A:  VMUL.F32        S12, S0, S12
5B099E:  VMUL.F32        S7, S10, S1
5B09A2:  VMUL.F32        S1, S4, S1
5B09A6:  VADD.F32        S3, S5, S3
5B09AA:  VADD.F32        S12, S12, S14
5B09AE:  VADD.F32        S14, S3, S7
5B09B2:  VADD.F32        S12, S12, S1
5B09B6:  VLDR            S1, [R3]
5B09BA:  VSUB.F32        S14, S14, S1
5B09BE:  VSUB.F32        S12, S12, S1
5B09C2:  VMUL.F32        S12, S12, S14
5B09C6:  VCMPE.F32       S12, #0.0
5B09CA:  VMRS            APSR_nzcv, FPSCR
5B09CE:  BGE             loc_5B09DE
5B09D0:  ADDS            R1, #1
5B09D2:  ADDS            R2, #0xC
5B09D4:  ADDS            R3, #4
5B09D6:  CMP             R1, R0
5B09D8:  BLT             loc_5B0982
5B09DA:  MOVS            R5, #0
5B09DC:  B               loc_5B09E0
5B09DE:  MOVS            R5, #1
5B09E0:  LDR.W           R1, [R9,#0x14]
5B09E4:  CMP             R1, #0
5B09E6:  BNE             loc_5B09FC
5B09E8:  MOV             R0, R9; this
5B09EA:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B09EE:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B09F2:  LDR             R0, [SP,#0x128+var_AC]; this
5B09F4:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B09F8:  LDR.W           R1, [R9,#0x14]
5B09FC:  LDRSH.W         R0, [R9,#0x26]
5B0A00:  ADD.W           R12, SP, #0x128+var_8C
5B0A04:  LDR             R2, [SP,#0x128+var_C4]
5B0A06:  LDR.W           R0, [R2,R0,LSL#2]
5B0A0A:  LDR             R0, [R0,#0x2C]
5B0A0C:  LDRD.W          R2, R3, [R0,#4]
5B0A10:  LDR             R0, [R0,#0xC]
5B0A12:  STM.W           R12, {R0,R2,R3}
5B0A16:  ADD             R2, SP, #0x128+var_8C
5B0A18:  MOV             R0, R4
5B0A1A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0A1E:  VLDR            D16, [SP,#0x128+var_68]
5B0A22:  CMP             R5, #0
5B0A24:  LDR             R0, [SP,#0x128+var_60]
5B0A26:  STR             R0, [SP,#0x128+var_78]
5B0A28:  VSTR            D16, [SP,#0x128+var_80]
5B0A2C:  LDRD.W          LR, R12, [SP,#0x128+var_A0]
5B0A30:  BNE.W           loc_5B0E2E
5B0A34:  LDR             R1, [SP,#0x128+var_C8]
5B0A36:  ADD             R2, SP, #0x128+var_80
5B0A38:  MOV             R0, R4
5B0A3A:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0A3E:  MOV             R0, R4
5B0A40:  LDRD.W          LR, R12, [SP,#0x128+var_A0]
5B0A44:  VLD1.32         {D16}, [R0@64]!
5B0A48:  VLDR            S0, [R0]
5B0A4C:  VCMPE.F32       S0, S16
5B0A50:  VMRS            APSR_nzcv, FPSCR
5B0A54:  BLE.W           loc_5B0E2E
5B0A58:  LDR             R0, [SP,#0x128+var_A4]
5B0A5A:  LDRSB.W         R0, [R0]
5B0A5E:  CMP             R0, #1
5B0A60:  BLT             loc_5B0AAA
5B0A62:  VDIV.F32        S0, S16, S0
5B0A66:  LDR             R1, [SP,#0x128+var_F0]
5B0A68:  MOV             R2, R11
5B0A6A:  VLDR            D17, [R1,#4]
5B0A6E:  MOVS            R1, #0
5B0A70:  VCVT.F32.S32    D17, D17
5B0A74:  VMUL.F32        D17, D17, D0[0]
5B0A78:  VMUL.F32        D16, D16, D17
5B0A7C:  MOV             R3, R2
5B0A7E:  VLDR            S0, [R2,#0xC]
5B0A82:  VLD1.32         {D17}, [R3]!
5B0A86:  VSUB.F32        D17, D16, D17
5B0A8A:  VLDR            S1, [R3]
5B0A8E:  VMUL.F32        D0, D17, D0
5B0A92:  VSUB.F32        S0, S0, S1
5B0A96:  VCMPE.F32       S0, #0.0
5B0A9A:  VMRS            APSR_nzcv, FPSCR
5B0A9E:  BLT.W           loc_5B0E2E
5B0AA2:  ADDS            R1, #1
5B0AA4:  ADDS            R2, #0x14
5B0AA6:  CMP             R1, R0
5B0AA8:  BLT             loc_5B0A7C
5B0AAA:  MOVS            R0, #0xAC
5B0AAC:  LDR             R1, [SP,#0x128+var_E4]
5B0AAE:  MLA.W           R6, R8, R0, R1
5B0AB2:  LDRSB.W         R0, [R6,#0x7B]!
5B0AB6:  CMP             R0, #1
5B0AB8:  BLT             loc_5B0B40
5B0ABA:  LDR             R3, [SP,#0x128+var_108]
5B0ABC:  VLDR            S0, [SP,#0x128+var_80]
5B0AC0:  VLDR            S2, [SP,#0x128+var_80+4]
5B0AC4:  LDR             R1, [R3,#0x14]
5B0AC6:  VLDR            S4, [SP,#0x128+var_78]
5B0ACA:  ADD.W           R2, R1, #0x30 ; '0'
5B0ACE:  CMP             R1, #0
5B0AD0:  IT EQ
5B0AD2:  ADDEQ           R2, R3, #4
5B0AD4:  MOVS            R1, #0
5B0AD6:  VLDR            S6, [R2]
5B0ADA:  MOV             R3, R12
5B0ADC:  VLDR            S8, [R2,#4]
5B0AE0:  VLDR            S10, [R2,#8]
5B0AE4:  MOV             R2, LR
5B0AE6:  VLDR            S12, [R2]
5B0AEA:  VLDR            S14, [R2,#4]
5B0AEE:  VMUL.F32        S5, S6, S12
5B0AF2:  VLDR            S1, [R2,#8]
5B0AF6:  VMUL.F32        S3, S8, S14
5B0AFA:  VMUL.F32        S14, S2, S14
5B0AFE:  VMUL.F32        S12, S0, S12
5B0B02:  VMUL.F32        S7, S10, S1
5B0B06:  VMUL.F32        S1, S4, S1
5B0B0A:  VADD.F32        S3, S5, S3
5B0B0E:  VADD.F32        S12, S12, S14
5B0B12:  VADD.F32        S14, S3, S7
5B0B16:  VADD.F32        S12, S12, S1
5B0B1A:  VLDR            S1, [R3]
5B0B1E:  VSUB.F32        S14, S14, S1
5B0B22:  VSUB.F32        S12, S12, S1
5B0B26:  VMUL.F32        S12, S12, S14
5B0B2A:  VCMPE.F32       S12, #0.0
5B0B2E:  VMRS            APSR_nzcv, FPSCR
5B0B32:  BGE.W           loc_5B0E2E
5B0B36:  ADDS            R1, #1
5B0B38:  ADDS            R2, #0xC
5B0B3A:  ADDS            R3, #4
5B0B3C:  CMP             R1, R0
5B0B3E:  BLT             loc_5B0AE6
5B0B40:  LDRSH.W         R0, [R9,#0x26]
5B0B44:  LDR             R1, [SP,#0x128+var_FC]
5B0B46:  LDR.W           R0, [R1,R0,LSL#2]
5B0B4A:  LDR             R0, [R0,#0x2C]
5B0B4C:  VLDR            S0, [R0]
5B0B50:  VLDR            S2, [R0,#0xC]
5B0B54:  VSUB.F32        S0, S2, S0
5B0B58:  VCMPE.F32       S0, S26
5B0B5C:  VMRS            APSR_nzcv, FPSCR
5B0B60:  BGT             loc_5B0B7A
5B0B62:  VLDR            S0, [R0,#4]
5B0B66:  VLDR            S2, [R0,#0x10]
5B0B6A:  VSUB.F32        S0, S2, S0
5B0B6E:  VCMPE.F32       S0, S26
5B0B72:  VMRS            APSR_nzcv, FPSCR
5B0B76:  BLE.W           loc_5B0E4C
5B0B7A:  VLDR            S0, [R0,#8]
5B0B7E:  VLDR            S2, [R0,#0x14]
5B0B82:  VSUB.F32        S0, S2, S0
5B0B86:  VCMPE.F32       S0, S28
5B0B8A:  VMRS            APSR_nzcv, FPSCR
5B0B8E:  BLE.W           loc_5B0E4C
5B0B92:  LDR.W           R1, [R9,#0x14]
5B0B96:  CBNZ            R1, loc_5B0BB8
5B0B98:  MOV             R0, R9; this
5B0B9A:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B0B9E:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B0BA2:  LDR             R0, [SP,#0x128+var_AC]; this
5B0BA4:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B0BA8:  LDRSH.W         R0, [R9,#0x26]
5B0BAC:  LDR             R1, [SP,#0x128+var_118]
5B0BAE:  LDR.W           R0, [R1,R0,LSL#2]
5B0BB2:  LDR.W           R1, [R9,#0x14]
5B0BB6:  LDR             R0, [R0,#0x2C]
5B0BB8:  LDRD.W          R2, R3, [R0]
5B0BBC:  LDR             R0, [R0,#0x14]
5B0BBE:  STRD.W          R2, R3, [SP,#0x128+var_8C]
5B0BC2:  ADD             R2, SP, #0x128+var_8C
5B0BC4:  STR             R0, [SP,#0x128+var_84]
5B0BC6:  MOV             R0, R4
5B0BC8:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0BCC:  LDR             R1, [SP,#0x128+var_100]
5B0BCE:  ADD             R2, SP, #0x128+var_80
5B0BD0:  LDR             R0, [SP,#0x128+var_60]
5B0BD2:  VLDR            D16, [SP,#0x128+var_68]
5B0BD6:  STR             R0, [SP,#0x128+var_78]
5B0BD8:  MOV             R0, R4
5B0BDA:  VSTR            D16, [SP,#0x128+var_80]
5B0BDE:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0BE2:  MOV             R0, R4
5B0BE4:  VLD1.32         {D16}, [R0@64]!
5B0BE8:  VLDR            S0, [R0]
5B0BEC:  VCMPE.F32       S0, S16
5B0BF0:  VMRS            APSR_nzcv, FPSCR
5B0BF4:  BLE             loc_5B0CDA
5B0BF6:  LDR             R0, [SP,#0x128+var_A4]
5B0BF8:  LDRSB.W         R0, [R0]
5B0BFC:  LDRD.W          R5, R12, [SP,#0x128+var_A0]
5B0C00:  CMP             R0, #1
5B0C02:  BLT             loc_5B0C4A
5B0C04:  VDIV.F32        S0, S16, S0
5B0C08:  LDR             R1, [SP,#0x128+var_11C]
5B0C0A:  MOV             R2, R11
5B0C0C:  VLDR            D17, [R1,#4]
5B0C10:  MOVS            R1, #0
5B0C12:  VCVT.F32.S32    D17, D17
5B0C16:  VMUL.F32        D17, D17, D0[0]
5B0C1A:  VMUL.F32        D16, D16, D17
5B0C1E:  MOV             R3, R2
5B0C20:  VLDR            S0, [R2,#0xC]
5B0C24:  VLD1.32         {D17}, [R3]!
5B0C28:  VSUB.F32        D17, D16, D17
5B0C2C:  VLDR            S1, [R3]
5B0C30:  VMUL.F32        D0, D17, D0
5B0C34:  VSUB.F32        S0, S0, S1
5B0C38:  VCMPE.F32       S0, #0.0
5B0C3C:  VMRS            APSR_nzcv, FPSCR
5B0C40:  BLT             loc_5B0CDA
5B0C42:  ADDS            R1, #1
5B0C44:  ADDS            R2, #0x14
5B0C46:  CMP             R1, R0
5B0C48:  BLT             loc_5B0C1E
5B0C4A:  LDRSB.W         R0, [R6]
5B0C4E:  CMP             R0, #1
5B0C50:  BLT             loc_5B0CD6
5B0C52:  LDR             R3, [SP,#0x128+var_120]
5B0C54:  VLDR            S0, [SP,#0x128+var_80]
5B0C58:  VLDR            S2, [SP,#0x128+var_80+4]
5B0C5C:  LDR             R1, [R3,#0x14]
5B0C5E:  VLDR            S4, [SP,#0x128+var_78]
5B0C62:  ADD.W           R2, R1, #0x30 ; '0'
5B0C66:  CMP             R1, #0
5B0C68:  IT EQ
5B0C6A:  ADDEQ           R2, R3, #4
5B0C6C:  MOVS            R1, #0
5B0C6E:  VLDR            S6, [R2]
5B0C72:  MOV             R3, R12
5B0C74:  VLDR            S8, [R2,#4]
5B0C78:  VLDR            S10, [R2,#8]
5B0C7C:  MOV             R2, R5
5B0C7E:  VLDR            S12, [R2]
5B0C82:  VLDR            S14, [R2,#4]
5B0C86:  VMUL.F32        S5, S6, S12
5B0C8A:  VLDR            S1, [R2,#8]
5B0C8E:  VMUL.F32        S3, S8, S14
5B0C92:  VMUL.F32        S14, S2, S14
5B0C96:  VMUL.F32        S12, S0, S12
5B0C9A:  VMUL.F32        S7, S10, S1
5B0C9E:  VMUL.F32        S1, S4, S1
5B0CA2:  VADD.F32        S3, S5, S3
5B0CA6:  VADD.F32        S12, S12, S14
5B0CAA:  VADD.F32        S14, S3, S7
5B0CAE:  VADD.F32        S12, S12, S1
5B0CB2:  VLDR            S1, [R3]
5B0CB6:  VSUB.F32        S14, S14, S1
5B0CBA:  VSUB.F32        S12, S12, S1
5B0CBE:  VMUL.F32        S12, S12, S14
5B0CC2:  VCMPE.F32       S12, #0.0
5B0CC6:  VMRS            APSR_nzcv, FPSCR
5B0CCA:  BGE             loc_5B0CDA
5B0CCC:  ADDS            R1, #1
5B0CCE:  ADDS            R2, #0xC
5B0CD0:  ADDS            R3, #4
5B0CD2:  CMP             R1, R0
5B0CD4:  BLT             loc_5B0C7E
5B0CD6:  MOVS            R5, #0
5B0CD8:  B               loc_5B0CDC
5B0CDA:  MOVS            R5, #1
5B0CDC:  LDR.W           R1, [R9,#0x14]
5B0CE0:  CMP             R1, #0
5B0CE2:  BNE             loc_5B0CF8
5B0CE4:  MOV             R0, R9; this
5B0CE6:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5B0CEA:  LDR.W           R1, [R9,#0x14]; CMatrix *
5B0CEE:  LDR             R0, [SP,#0x128+var_AC]; this
5B0CF0:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5B0CF4:  LDR.W           R1, [R9,#0x14]
5B0CF8:  LDRSH.W         R0, [R9,#0x26]
5B0CFC:  LDR             R2, [SP,#0x128+var_104]
5B0CFE:  LDR.W           R0, [R2,R0,LSL#2]
5B0D02:  LDR             R0, [R0,#0x2C]
5B0D04:  LDR             R2, [R0,#4]
5B0D06:  LDR             R3, [R0,#0xC]
5B0D08:  LDR             R0, [R0,#0x14]
5B0D0A:  STRD.W          R3, R2, [SP,#0x128+var_8C]
5B0D0E:  ADD             R2, SP, #0x128+var_8C
5B0D10:  STR             R0, [SP,#0x128+var_84]
5B0D12:  MOV             R0, R4
5B0D14:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0D18:  VLDR            D16, [SP,#0x128+var_68]
5B0D1C:  CMP             R5, #0
5B0D1E:  LDR             R0, [SP,#0x128+var_60]
5B0D20:  STR             R0, [SP,#0x128+var_78]
5B0D22:  VSTR            D16, [SP,#0x128+var_80]
5B0D26:  LDRD.W          LR, R12, [SP,#0x128+var_A0]
5B0D2A:  BNE.W           loc_5B0E2E
5B0D2E:  LDR             R1, [SP,#0x128+var_114]
5B0D30:  ADD             R2, SP, #0x128+var_80
5B0D32:  MOV             R0, R4
5B0D34:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5B0D38:  MOV             R0, R4
5B0D3A:  LDRD.W          LR, R12, [SP,#0x128+var_A0]
5B0D3E:  VLD1.32         {D16}, [R0@64]!
5B0D42:  VLDR            S0, [R0]
5B0D46:  VCMPE.F32       S0, S16
5B0D4A:  VMRS            APSR_nzcv, FPSCR
5B0D4E:  BLE             loc_5B0E2E
5B0D50:  LDR             R0, [SP,#0x128+var_A4]
5B0D52:  LDRSB.W         R0, [R0]
5B0D56:  CMP             R0, #1
5B0D58:  BLT             loc_5B0DA0
5B0D5A:  VDIV.F32        S0, S16, S0
5B0D5E:  LDR             R1, [SP,#0x128+var_128]
5B0D60:  MOV             R2, R11
5B0D62:  VLDR            D17, [R1,#4]
5B0D66:  MOVS            R1, #0
5B0D68:  VCVT.F32.S32    D17, D17
5B0D6C:  VMUL.F32        D17, D17, D0[0]
5B0D70:  VMUL.F32        D16, D16, D17
5B0D74:  MOV             R3, R2
5B0D76:  VLDR            S0, [R2,#0xC]
5B0D7A:  VLD1.32         {D17}, [R3]!
5B0D7E:  VSUB.F32        D17, D16, D17
5B0D82:  VLDR            S1, [R3]
5B0D86:  VMUL.F32        D0, D17, D0
5B0D8A:  VSUB.F32        S0, S0, S1
5B0D8E:  VCMPE.F32       S0, #0.0
5B0D92:  VMRS            APSR_nzcv, FPSCR
5B0D96:  BLT             loc_5B0E2E
5B0D98:  ADDS            R1, #1
5B0D9A:  ADDS            R2, #0x14
5B0D9C:  CMP             R1, R0
5B0D9E:  BLT             loc_5B0D74
5B0DA0:  LDRSB.W         R0, [R6]
5B0DA4:  CMP             R0, #1
5B0DA6:  BLT             loc_5B0E4C
5B0DA8:  LDR             R3, [SP,#0x128+var_124]
5B0DAA:  VLDR            S0, [SP,#0x128+var_80]
5B0DAE:  VLDR            S2, [SP,#0x128+var_80+4]
5B0DB2:  LDR             R1, [R3,#0x14]
5B0DB4:  VLDR            S4, [SP,#0x128+var_78]
5B0DB8:  ADD.W           R2, R1, #0x30 ; '0'
5B0DBC:  CMP             R1, #0
5B0DBE:  IT EQ
5B0DC0:  ADDEQ           R2, R3, #4
5B0DC2:  MOVS            R1, #0
5B0DC4:  VLDR            S6, [R2]
5B0DC8:  MOV             R3, R12
5B0DCA:  VLDR            S8, [R2,#4]
5B0DCE:  VLDR            S10, [R2,#8]
5B0DD2:  MOV             R2, LR
5B0DD4:  VLDR            S12, [R2]
5B0DD8:  VLDR            S14, [R2,#4]
5B0DDC:  VMUL.F32        S5, S6, S12
5B0DE0:  VLDR            S1, [R2,#8]
5B0DE4:  VMUL.F32        S3, S8, S14
5B0DE8:  VMUL.F32        S14, S2, S14
5B0DEC:  VMUL.F32        S12, S0, S12
5B0DF0:  VMUL.F32        S7, S10, S1
5B0DF4:  VMUL.F32        S1, S4, S1
5B0DF8:  VADD.F32        S3, S5, S3
5B0DFC:  VADD.F32        S12, S12, S14
5B0E00:  VADD.F32        S14, S3, S7
5B0E04:  VADD.F32        S12, S12, S1
5B0E08:  VLDR            S1, [R3]
5B0E0C:  VSUB.F32        S14, S14, S1
5B0E10:  VSUB.F32        S12, S12, S1
5B0E14:  VMUL.F32        S12, S12, S14
5B0E18:  VCMPE.F32       S12, #0.0
5B0E1C:  VMRS            APSR_nzcv, FPSCR
5B0E20:  BGE             loc_5B0E2E
5B0E22:  ADDS            R1, #1
5B0E24:  ADDS            R2, #0xC
5B0E26:  ADDS            R3, #4
5B0E28:  CMP             R1, R0
5B0E2A:  BLT             loc_5B0DD4
5B0E2C:  B               loc_5B0E4C
5B0E2E:  LDR             R0, [SP,#0x128+var_94]
5B0E30:  ADD.W           R8, R8, #1
5B0E34:  LDR             R0, [R0]
5B0E36:  CMP             R8, R0
5B0E38:  BLT.W           loc_5B0470
5B0E3C:  MOVS            R0, #0
5B0E3E:  ADD             SP, SP, #0xD0
5B0E40:  VPOP            {D8-D14}
5B0E44:  ADD             SP, SP, #4
5B0E46:  POP.W           {R8-R11}
5B0E4A:  POP             {R4-R7,PC}
5B0E4C:  MOVS            R0, #1
5B0E4E:  B               loc_5B0E3E
