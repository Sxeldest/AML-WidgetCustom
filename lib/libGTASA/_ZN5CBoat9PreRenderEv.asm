; =========================================================
; Game Engine Function: _ZN5CBoat9PreRenderEv
; Address            : 0x56B208 - 0x56B6B6
; =========================================================

56B208:  PUSH            {R4-R7,LR}
56B20A:  ADD             R7, SP, #0xC
56B20C:  PUSH.W          {R8-R11}
56B210:  SUB             SP, SP, #4
56B212:  VPUSH           {D8}
56B216:  SUB             SP, SP, #0x88
56B218:  MOV             R6, R0
56B21A:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
56B21E:  MOV.W           R0, #0x3F000000
56B222:  MOVS            R5, #0
56B224:  STR.W           R0, [R6,#0x130]
56B228:  MOVS            R4, #1
56B22A:  STRD.W          R5, R5, [SP,#0xB0+var_30]
56B22E:  MOVS            R2, #2
56B230:  STR             R5, [SP,#0xB0+var_84]
56B232:  LDR.W           R0, [R6,#0x498]
56B236:  LDR.W           R1, [R6,#0x5D0]
56B23A:  EOR.W           R3, R0, #0x80000000
56B23E:  MOV             R0, R6
56B240:  STR             R4, [SP,#0xB0+var_B0]
56B242:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B246:  LDR.W           R0, [R6,#0x498]
56B24A:  MOVS            R2, #2
56B24C:  LDR.W           R1, [R6,#0x5DC]
56B250:  EOR.W           R3, R0, #0x80000000
56B254:  MOV             R0, R6
56B256:  STR             R4, [SP,#0xB0+var_B0]
56B258:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B25C:  LDR.W           R0, [R6,#0x498]
56B260:  MOVS            R2, #2
56B262:  LDR.W           R1, [R6,#0x5E0]
56B266:  EOR.W           R3, R0, #0x80000000
56B26A:  MOV             R0, R6
56B26C:  STR             R4, [SP,#0xB0+var_B0]
56B26E:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B272:  ADD.W           R0, R6, #0x5B8
56B276:  VLDR            S4, =0.3927
56B27A:  VMOV.F32        S16, #1.0
56B27E:  ADDW            R4, R6, #0x5BC
56B282:  VLDR            S0, [R0]
56B286:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56B296)
56B28A:  VADD.F32        S2, S0, S0
56B28E:  VLDR            S6, [R4]
56B292:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56B294:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56B296:  VDIV.F32        S2, S2, S4
56B29A:  VMIN.F32        D1, D1, D8
56B29E:  VLDR            S4, [R0]
56B2A2:  VMUL.F32        S0, S0, S4
56B2A6:  VLDR            S4, =255.0
56B2AA:  VSUB.F32        S2, S16, S2
56B2AE:  VADD.F32        S0, S6, S0
56B2B2:  VMUL.F32        S4, S2, S4
56B2B6:  VLDR            S2, =6.2832
56B2BA:  VCMPE.F32       S0, S2
56B2BE:  VMRS            APSR_nzcv, FPSCR
56B2C2:  VCVT.S32.F32    S4, S4
56B2C6:  VSTR            S0, [R4]
56B2CA:  VMOV            R8, S4
56B2CE:  BLE             loc_56B2E6
56B2D0:  VLDR            S4, =-6.2832
56B2D4:  VADD.F32        S0, S0, S4
56B2D8:  VCMPE.F32       S0, S2
56B2DC:  VMRS            APSR_nzcv, FPSCR
56B2E0:  BGT             loc_56B2D4
56B2E2:  VSTR            S0, [R4]
56B2E6:  RSB.W           R0, R8, #0x96
56B2EA:  LDR.W           R1, [R6,#0x5E4]
56B2EE:  CMP             R0, #0
56B2F0:  IT GT
56B2F2:  MOVGT           R5, R0
56B2F4:  CBZ             R1, loc_56B32A
56B2F6:  VADD.F32        S0, S0, S0
56B2FA:  MOVS            R0, #1
56B2FC:  STR             R0, [SP,#0xB0+var_B0]
56B2FE:  MOV             R0, R6
56B300:  MOVS            R2, #1
56B302:  VMOV            R3, S0
56B306:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B30A:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x56B312)
56B30C:  ADD             R2, SP, #0xB0+var_84
56B30E:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
56B310:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
56B312:  MOVS            R0, #0
56B314:  STR             R0, [SP,#0xB0+var_84]
56B316:  LDR.W           R0, [R6,#0x5E4]
56B31A:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
56B31E:  LDR             R0, [SP,#0xB0+var_84]
56B320:  CMP             R0, #0
56B322:  ITT NE
56B324:  MOVNE           R1, R8
56B326:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
56B32A:  LDR.W           R1, [R6,#0x5E8]
56B32E:  CBZ             R1, loc_56B362
56B330:  LDR             R0, [R4]
56B332:  MOVS            R2, #1
56B334:  STR             R2, [SP,#0xB0+var_B0]
56B336:  MOVS            R2, #1
56B338:  EOR.W           R3, R0, #0x80000000
56B33C:  MOV             R0, R6
56B33E:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B342:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x56B34A)
56B344:  ADD             R2, SP, #0xB0+var_84
56B346:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
56B348:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
56B34A:  MOVS            R0, #0
56B34C:  STR             R0, [SP,#0xB0+var_84]
56B34E:  LDR.W           R0, [R6,#0x5E8]
56B352:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
56B356:  LDR             R0, [SP,#0xB0+var_84]
56B358:  CMP             R0, #0
56B35A:  ITT NE
56B35C:  MOVNE           R1, R5
56B35E:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
56B362:  LDR.W           R1, [R6,#0x5EC]
56B366:  CBZ             R1, loc_56B3A4
56B368:  VMOV.F32        S0, #-2.0
56B36C:  VLDR            S2, [R4]
56B370:  MOVS            R0, #1
56B372:  MOVS            R2, #1
56B374:  STR             R0, [SP,#0xB0+var_B0]
56B376:  MOV             R0, R6
56B378:  VMUL.F32        S0, S2, S0
56B37C:  VMOV            R3, S0
56B380:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B384:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x56B38C)
56B386:  ADD             R2, SP, #0xB0+var_84
56B388:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
56B38A:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
56B38C:  MOVS            R0, #0
56B38E:  STR             R0, [SP,#0xB0+var_84]
56B390:  LDR.W           R0, [R6,#0x5EC]
56B394:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
56B398:  LDR             R0, [SP,#0xB0+var_84]
56B39A:  CMP             R0, #0
56B39C:  ITT NE
56B39E:  MOVNE           R1, R8
56B3A0:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
56B3A4:  LDR.W           R1, [R6,#0x5F0]
56B3A8:  CBZ             R1, loc_56B3D8
56B3AA:  LDR             R3, [R4]
56B3AC:  MOVS            R0, #1
56B3AE:  STR             R0, [SP,#0xB0+var_B0]
56B3B0:  MOV             R0, R6
56B3B2:  MOVS            R2, #1
56B3B4:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B3B8:  LDR             R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x56B3C0)
56B3BA:  ADD             R2, SP, #0xB0+var_84
56B3BC:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
56B3BE:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
56B3C0:  MOVS            R0, #0
56B3C2:  STR             R0, [SP,#0xB0+var_84]
56B3C4:  LDR.W           R0, [R6,#0x5F0]
56B3C8:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
56B3CC:  LDR             R0, [SP,#0xB0+var_84]
56B3CE:  CMP             R0, #0
56B3D0:  ITT NE
56B3D2:  MOVNE           R1, R5
56B3D4:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
56B3D8:  LDRH            R0, [R6,#0x26]
56B3DA:  CMP.W           R0, #0x1E4
56B3DE:  BNE             loc_56B480
56B3E0:  LDR.W           R0, [R6,#0x5D4]
56B3E4:  CMP             R0, #0
56B3E6:  BEQ             loc_56B47C
56B3E8:  ADD             R5, SP, #0xB0+var_70
56B3EA:  ADD.W           R1, R0, #0x10
56B3EE:  MOVS            R2, #0
56B3F0:  MOVS            R4, #0
56B3F2:  MOV             R0, R5
56B3F4:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
56B3F8:  VLDR            D16, [SP,#0xB0+var_40]
56B3FC:  ADD             R2, SP, #0xB0+var_80
56B3FE:  LDR             R0, [SP,#0xB0+var_38]
56B400:  STR             R0, [SP,#0xB0+var_78]
56B402:  VSTR            D16, [SP,#0xB0+var_80]
56B406:  STRD.W          R4, R4, [SP,#0xB0+var_90]
56B40A:  STR             R4, [SP,#0xB0+var_88]
56B40C:  ADD             R4, SP, #0xB0+var_9C
56B40E:  LDR             R1, [R6,#0x14]; CVector *
56B410:  MOV             R0, R4; CMatrix *
56B412:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
56B416:  ADDW            R0, R6, #0x5F4; this
56B41A:  ADDW            R2, R6, #0x624; CVector *
56B41E:  ADD.W           R3, R6, #0x630; CVector *
56B422:  MOV             R1, R6; CVehicle *
56B424:  STR             R4, [SP,#0xB0+var_B0]; CVector *
56B426:  BLX             j__ZN5CDoor7ProcessEP8CVehicleR7CVectorS3_S3_; CDoor::Process(CVehicle *,CVector &,CVector &,CVector &)
56B42A:  LDRB.W          R0, [R6,#0x5FE]
56B42E:  ADD             R2, SP, #0xB0+var_90
56B430:  LDR.W           R1, [R6,#0x600]
56B434:  ADD             R3, SP, #0xB0+var_90
56B436:  STR.W           R1, [R2,R0,LSL#2]
56B43A:  MOV             R0, R5; this
56B43C:  LDM             R3, {R1-R3}; float
56B43E:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
56B442:  VLDR            S0, [SP,#0xB0+var_40]
56B446:  MOV             R0, R5; this
56B448:  VLDR            S6, [SP,#0xB0+var_80]
56B44C:  VLDR            S2, [SP,#0xB0+var_40+4]
56B450:  VLDR            S8, [SP,#0xB0+var_80+4]
56B454:  VADD.F32        S0, S6, S0
56B458:  VLDR            S4, [SP,#0xB0+var_38]
56B45C:  VLDR            S10, [SP,#0xB0+var_78]
56B460:  VADD.F32        S2, S8, S2
56B464:  VADD.F32        S4, S10, S4
56B468:  VSTR            S0, [SP,#0xB0+var_40]
56B46C:  VSTR            S2, [SP,#0xB0+var_40+4]
56B470:  VSTR            S4, [SP,#0xB0+var_38]
56B474:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
56B478:  LDRH            R0, [R6,#0x26]
56B47A:  B               loc_56B480
56B47C:  MOV.W           R0, #0x1E4
56B480:  SXTH            R0, R0
56B482:  SUB.W           R0, R0, #0x1AE
56B486:  CMP             R0, #0x18
56B488:  BHI             loc_56B4F0
56B48A:  MOVS            R1, #1
56B48C:  LSL.W           R0, R1, R0
56B490:  MOVS            R1, #0x1800001
56B496:  TST             R0, R1
56B498:  BEQ             loc_56B4F0
56B49A:  LDR.W           R1, [R6,#0x5C8]
56B49E:  ADDW            R5, R6, #0x5B4
56B4A2:  CBZ             R1, loc_56B4D2
56B4A4:  LDR             R3, [R5]
56B4A6:  MOVS            R0, #1
56B4A8:  STR             R0, [SP,#0xB0+var_B0]
56B4AA:  MOV             R0, R6
56B4AC:  MOVS            R2, #2
56B4AE:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
56B4B2:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56B4B8)
56B4B4:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56B4B6:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
56B4B8:  LDRB.W          R0, [R0,#(byte_796816 - 0x7967F4)]
56B4BC:  CBZ             R0, loc_56B4D2
56B4BE:  LDR.W           R0, [R6,#0x5C8]
56B4C2:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
56B4C6:  LDR             R4, [R0,#0x48]
56B4C8:  LDR.W           R0, [R6,#0x5C8]
56B4CC:  BLX             j__Z14GetFirstObjectP7RwFrame; GetFirstObject(RwFrame *)
56B4D0:  BLX             R4
56B4D2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x56B4DC)
56B4D4:  VLDR            S0, =0.02
56B4D8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56B4DA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56B4DC:  VLDR            S2, [R0]
56B4E0:  VMUL.F32        S0, S2, S0
56B4E4:  VLDR            S2, [R5]
56B4E8:  VADD.F32        S0, S2, S0
56B4EC:  VSTR            S0, [R5]
56B4F0:  ADD.W           R0, R6, #0x48 ; 'H'
56B4F4:  VLDR            S12, [R6,#0x74]
56B4F8:  VLD1.32         {D0-D1}, [R0]
56B4FC:  ADD.W           R0, R6, #0x60 ; '`'
56B500:  MOV.W           R9, #0
56B504:  MOV.W           R10, #0
56B508:  VMUL.F32        S4, S1, S1
56B50C:  VLD1.32         {D16-D17}, [R0]
56B510:  VMUL.F32        S6, S0, S0
56B514:  ADDW            R0, R6, #0x624
56B518:  VMUL.F32        S8, S2, S2
56B51C:  VLDR            S10, [R6,#0x70]
56B520:  VADD.F32        Q8, Q0, Q8
56B524:  VADD.F32        S4, S6, S4
56B528:  VLDR            S6, [R6,#0x58]
56B52C:  VADD.F32        S2, S6, S10
56B530:  VADD.F32        S4, S4, S8
56B534:  VLDR            S8, [R6,#0x5C]
56B538:  VST1.32         {D16-D17}, [R0]
56B53C:  ADD.W           R0, R6, #0x638
56B540:  VADD.F32        S0, S8, S12
56B544:  VSQRT.F32       S4, S4
56B548:  VSTR            S0, [R0]
56B54C:  VADD.F32        S0, S4, S4
56B550:  ADDW            R0, R6, #0x634
56B554:  VSTR            S2, [R0]
56B558:  ADDW            R0, R6, #0x63C
56B55C:  STR             R0, [SP,#0xB0+var_A0]
56B55E:  ADDW            R0, R6, #0x5E4
56B562:  STR             R0, [SP,#0xB0+var_A4]
56B564:  LDR             R0, =(g_fxMan_ptr - 0x56B56E)
56B566:  VMIN.F32        D8, D0, D8
56B56A:  ADD             R0, PC; g_fxMan_ptr
56B56C:  LDR             R0, [R0]; g_fxMan
56B56E:  STR             R0, [SP,#0xB0+var_A8]
56B570:  LDR             R0, [R6,#0x18]
56B572:  CBZ             R0, loc_56B5DE
56B574:  LDR             R1, [SP,#0xB0+var_A0]
56B576:  LDR.W           R11, [R0,#4]
56B57A:  ADD.W           R8, R1, R9
56B57E:  LDR.W           R0, [R1,R9]
56B582:  ADD.W           R5, R11, #0x10
56B586:  CBNZ            R0, loc_56B5EE
56B588:  LDR             R0, [SP,#0xB0+var_A4]
56B58A:  LDR.W           R0, [R0,R9,LSL#1]
56B58E:  CBZ             R0, loc_56B5E8
56B590:  MOVS            R4, #0
56B592:  STRD.W          R4, R4, [SP,#0xB0+var_90]
56B596:  STR             R4, [SP,#0xB0+var_88]
56B598:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
56B59C:  LDRD.W          R1, R2, [R0,#0x30]
56B5A0:  LDR             R0, [R0,#0x38]
56B5A2:  STRD.W          R1, R2, [R11,#0x40]
56B5A6:  STR.W           R0, [R11,#0x48]
56B5AA:  MOV             R0, R5
56B5AC:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
56B5B0:  LDR             R0, [SP,#0xB0+var_A8]; int
56B5B2:  ADR             R1, aBoatProp; "boat_prop"
56B5B4:  ADD             R2, SP, #0xB0+var_90; int
56B5B6:  MOV             R3, R5; int
56B5B8:  STR             R4, [SP,#0xB0+var_B0]; int
56B5BA:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
56B5BE:  CMP             R0, #0
56B5C0:  STR.W           R0, [R8]
56B5C4:  BEQ             loc_56B5E8
56B5C6:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
56B5CA:  LDR.W           R0, [R8]; this
56B5CE:  MOVS            R1, #1; unsigned __int8
56B5D0:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
56B5D4:  LDR.W           R0, [R8]; this
56B5D8:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
56B5DC:  B               loc_56B5E8
56B5DE:  ADD.W           R0, R6, R10,LSL#2
56B5E2:  MOVS            R5, #0
56B5E4:  ADDW            R8, R0, #0x63C
56B5E8:  LDR.W           R0, [R8]; this
56B5EC:  CBZ             R0, loc_56B658
56B5EE:  LDR             R4, [R6,#0x44]
56B5F0:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
56B5F4:  TST.W           R4, #0x100
56B5F8:  BNE             loc_56B618
56B5FA:  CBNZ            R0, loc_56B658
56B5FC:  LDR.W           R0, [R8]; this
56B600:  BLX             j__ZN10FxSystem_c4StopEv; FxSystem_c::Stop(void)
56B604:  B               loc_56B658
56B606:  ALIGN 4
56B608:  DCFS 0.3927
56B60C:  DCFS 255.0
56B610:  DCFS 6.2832
56B614:  DCFS -6.2832
56B618:  CMP             R0, #1
56B61A:  ITT EQ
56B61C:  LDREQ.W         R0, [R8]; this
56B620:  BLXEQ           j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
56B624:  LDR             R0, [SP,#0xB0+var_A4]
56B626:  LDR.W           R0, [R0,R9,LSL#1]
56B62A:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
56B62E:  LDRD.W          R1, R2, [R0,#0x30]
56B632:  LDR             R0, [R0,#0x38]
56B634:  STRD.W          R1, R2, [R5,#0x30]
56B638:  STR             R0, [R5,#0x38]
56B63A:  MOV             R0, R5
56B63C:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
56B640:  LDR.W           R0, [R8]
56B644:  MOV             R1, R5
56B646:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
56B64A:  VMOV            R2, S16; float
56B64E:  LDR.W           R0, [R8]; this
56B652:  MOVS            R1, #1; unsigned __int8
56B654:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
56B658:  ADD.W           R9, R9, #4
56B65C:  ADD.W           R10, R10, #1
56B660:  CMP.W           R9, #8
56B664:  BNE.W           loc_56B570
56B668:  ADD.W           R0, R6, #0x648
56B66C:  VLDR            S0, [R0]
56B670:  ADDW            R0, R6, #0x644
56B674:  VLDR            S2, [R0]
56B678:  VMUL.F32        S0, S0, S0
56B67C:  ADDW            R0, R6, #0x64C
56B680:  VMUL.F32        S2, S2, S2
56B684:  VLDR            S4, [R0]
56B688:  MOV             R0, R6; this
56B68A:  VMUL.F32        S4, S4, S4
56B68E:  VADD.F32        S0, S2, S0
56B692:  VADD.F32        S0, S0, S4
56B696:  VSQRT.F32       S0, S0
56B69A:  VMOV            R1, S0; float
56B69E:  BLX             j__ZN8CVehicle14DoBoatSplashesEf; CVehicle::DoBoatSplashes(float)
56B6A2:  ADD             R0, SP, #0xB0+var_70; this
56B6A4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56B6A8:  ADD             SP, SP, #0x88
56B6AA:  VPOP            {D8}
56B6AE:  ADD             SP, SP, #4
56B6B0:  POP.W           {R8-R11}
56B6B4:  POP             {R4-R7,PC}
