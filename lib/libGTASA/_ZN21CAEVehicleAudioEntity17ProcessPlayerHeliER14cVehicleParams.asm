; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17ProcessPlayerHeliER14cVehicleParams
; Address            : 0x3B6130 - 0x3B657C
; =========================================================

3B6130:  PUSH            {R4-R7,LR}
3B6132:  ADD             R7, SP, #0xC
3B6134:  PUSH.W          {R8-R10}
3B6138:  VPUSH           {D8-D15}
3B613C:  SUB             SP, SP, #0x60; float
3B613E:  MOV             R10, R0
3B6140:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3B614C)
3B6144:  MOV             R6, R1
3B6146:  MOVS            R1, #0
3B6148:  ADD             R0, PC; AEAudioHardware_ptr
3B614A:  STRD.W          R1, R1, [SP,#0xB8+var_60]
3B614E:  LDRH.W          R1, [R10,#0xDE]; unsigned __int16
3B6152:  MOVS            R2, #0x28 ; '('; __int16
3B6154:  LDR             R0, [R0]; AEAudioHardware ; this
3B6156:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B615A:  CMP             R0, #0
3B615C:  BEQ.W           loc_3B656A
3B6160:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3B616C)
3B6164:  MOVS            R1, #0x8A; unsigned __int16
3B6166:  MOVS            R2, #0x13; __int16
3B6168:  ADD             R0, PC; AEAudioHardware_ptr
3B616A:  LDR             R0, [R0]; AEAudioHardware ; this
3B616C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B6170:  CMP             R0, #0
3B6172:  BEQ.W           loc_3B656A
3B6176:  LDR             R0, [R6,#0x10]
3B6178:  VMOV.F32        S18, #1.0
3B617C:  VLDR            S0, =0.22
3B6180:  MOVS            R1, #5; float
3B6182:  ADD.W           R0, R0, #0x860
3B6186:  VLDR            S24, =0.0
3B618A:  LDR.W           R2, =(unk_6A9CD8 - 0x3B6196)
3B618E:  VLDR            S2, [R0]
3B6192:  ADD             R2, PC; unk_6A9CD8 ; __int16
3B6194:  VDIV.F32        S0, S2, S0
3B6198:  VMIN.F32        D16, D0, D9
3B619C:  VMAX.F32        D8, D16, D12
3B61A0:  VMOV            R4, S16
3B61A4:  MOV             R0, R4; this
3B61A6:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B61AA:  MOV             R8, R0
3B61AC:  LDR.W           R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B61BA)
3B61B0:  LDR.W           R2, =(unk_6A9D00 - 0x3B61C0)
3B61B4:  MOVS            R1, #5; float
3B61B6:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B61B8:  VMOV            S20, R8
3B61BC:  ADD             R2, PC; unk_6A9D00 ; __int16
3B61BE:  LDR             R5, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B61C0:  MOV             R0, R4; this
3B61C2:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B61C6:  VMOV            S22, R0
3B61CA:  LDR             R0, [R5]; this
3B61CC:  CBZ             R0, loc_3B6200
3B61CE:  LDRB.W          R1, [R10,#0xA7]
3B61D2:  CMP             R1, #0
3B61D4:  BNE             loc_3B6200
3B61D6:  LDR.W           R1, [R0,#0x44C]
3B61DA:  CMP             R1, #0x3F ; '?'
3B61DC:  BEQ             loc_3B6200
3B61DE:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3B61E2:  CBZ             R0, loc_3B6200
3B61E4:  LDR             R0, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x3B61EA)
3B61E6:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
3B61E8:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerDriver ...
3B61EA:  LDR             R0, [R0]; this
3B61EC:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
3B61F0:  MOV             R4, R0
3B61F2:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3B61F6:  STRH            R0, [R6,#0x20]
3B61F8:  MOV             R0, R4; this
3B61FA:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3B61FE:  B               loc_3B6204
3B6200:  MOVS            R0, #0
3B6202:  STRH            R0, [R6,#0x20]
3B6204:  LDR             R1, =(TheCamera_ptr - 0x3B620E)
3B6206:  STRH            R0, [R6,#0x22]
3B6208:  ADD             R0, SP, #0xB8+var_A0
3B620A:  ADD             R1, PC; TheCamera_ptr
3B620C:  LDR             R4, [R1]; TheCamera
3B620E:  ADDW            R1, R4, #0x8FC
3B6212:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3B6216:  LDR.W           R0, [R10,#4]
3B621A:  LDR             R1, [R4,#(dword_951FBC - 0x951FA8)]
3B621C:  LDR             R2, [R0,#0x14]
3B621E:  ADD.W           R3, R1, #0x30 ; '0'
3B6222:  CMP             R1, #0
3B6224:  IT EQ
3B6226:  ADDEQ           R3, R4, #4
3B6228:  ADD.W           R1, R2, #0x30 ; '0'
3B622C:  CMP             R2, #0
3B622E:  VLDR            S0, [R3]
3B6232:  VLDR            S2, [R3,#4]
3B6236:  VLDR            S4, [R3,#8]
3B623A:  IT EQ
3B623C:  ADDEQ           R1, R0, #4
3B623E:  VLDR            S6, [R1]
3B6242:  ADD             R0, SP, #0xB8+var_AC; this
3B6244:  VLDR            S8, [R1,#4]
3B6248:  VLDR            S10, [R1,#8]
3B624C:  VSUB.F32        S0, S6, S0
3B6250:  VSUB.F32        S2, S8, S2
3B6254:  VSUB.F32        S4, S10, S4
3B6258:  VSTR            S0, [SP,#0xB8+var_AC]
3B625C:  VSTR            S2, [SP,#0xB8+var_A8]
3B6260:  VSTR            S4, [SP,#0xB8+var_A4]
3B6264:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3B6268:  LDR             R0, [R6,#0x10]
3B626A:  VMOV.F32        S26, #0.5
3B626E:  VLDR            S0, [SP,#0xB8+var_AC]
3B6272:  VLDR            S2, [SP,#0xB8+var_A8]
3B6276:  LDR             R1, [R0,#0x14]
3B6278:  VLDR            S4, [SP,#0xB8+var_A4]
3B627C:  LDRSH.W         R2, [R6,#0x20]
3B6280:  VLDR            S6, [R1,#0x10]
3B6284:  VLDR            S8, [R1,#0x14]
3B6288:  CMP             R2, #0
3B628A:  VMUL.F32        S0, S6, S0
3B628E:  VLDR            S10, [R1,#0x18]
3B6292:  VMUL.F32        S2, S8, S2
3B6296:  VLDR            S12, [R1,#0x20]
3B629A:  VMUL.F32        S4, S10, S4
3B629E:  VADD.F32        S0, S0, S2
3B62A2:  VLDR            S2, [R1,#0x24]
3B62A6:  VMUL.F32        S2, S2, S24
3B62AA:  VADD.F32        S0, S0, S4
3B62AE:  VMUL.F32        S4, S12, S24
3B62B2:  VADD.F32        S0, S0, S18
3B62B6:  VADD.F32        S2, S4, S2
3B62BA:  VLDR            S4, [R1,#0x28]
3B62BE:  ADR             R1, dword_3B65BC
3B62C0:  IT GT
3B62C2:  ADDGT           R1, #4
3B62C4:  VMUL.F32        S28, S0, S26
3B62C8:  VLDR            S0, =-0.67
3B62CC:  VADD.F32        S2, S4, S2
3B62D0:  VLDR            S4, [R1]
3B62D4:  LDRSH.W         R1, [R6,#0x22]; float
3B62D8:  CMP             R1, #0
3B62DA:  VMUL.F32        S0, S28, S0
3B62DE:  VADD.F32        S0, S0, S18
3B62E2:  VMUL.F32        S0, S20, S0
3B62E6:  VMOV            R0, S0; this
3B62EA:  VLDR            S0, =-0.05
3B62EE:  VADD.F32        S0, S4, S0
3B62F2:  IT GT
3B62F4:  VMOVGT.F32      S4, S0
3B62F8:  VSUB.F32        S0, S18, S2
3B62FC:  VADD.F32        S24, S4, S18
3B6300:  VMUL.F32        S30, S0, S26
3B6304:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B6308:  VMUL.F32        S0, S28, S26
3B630C:  MOV             R9, R0
3B630E:  VADD.F32        S0, S0, S26
3B6312:  VMUL.F32        S0, S20, S0
3B6316:  VMOV            R0, S0; this
3B631A:  VLDR            S0, =0.2
3B631E:  VMUL.F32        S0, S30, S0
3B6322:  VADD.F32        S0, S0, S18
3B6326:  VMUL.F32        S18, S22, S0
3B632A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B632E:  MOV             R5, R0
3B6330:  MOV             R0, R8; this
3B6332:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B6336:  MOV             R4, R0
3B6338:  LDR             R0, [R6,#0x10]
3B633A:  VMUL.F32        S22, S24, S18
3B633E:  VLDR            S0, =390.0
3B6342:  ADDW            R0, R0, #0x4CC
3B6346:  VLDR            S2, [R0]
3B634A:  VCMPE.F32       S2, S0
3B634E:  VMRS            APSR_nzcv, FPSCR
3B6352:  BGE             loc_3B6378
3B6354:  MOVW            R0, #0xCCCD
3B6358:  MOVW            R1, #0xCCCD
3B635C:  MOVT            R0, #0xBDCC; this
3B6360:  MOVT            R1, #0x3DCC; float
3B6364:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3B6368:  VMOV.F32        S0, #0.75
3B636C:  VMOV            S2, R0
3B6370:  VADD.F32        S0, S2, S0
3B6374:  VMUL.F32        S22, S22, S0
3B6378:  VLDR            S8, [R10,#0x22C]
3B637C:  VMOV.F32        S18, #20.0
3B6380:  VMOV            S0, R9
3B6384:  VLDR            D17, =0.63
3B6388:  VCMPE.F32       S8, #0.0
3B638C:  VMRS            APSR_nzcv, FPSCR
3B6390:  VMOV            S2, R5
3B6394:  VMOV            S6, R4
3B6398:  VMOV.F32        S20, #8.0
3B639C:  VMOV.F32        S4, #2.0
3B63A0:  VMUL.F32        S0, S0, S18
3B63A4:  VMUL.F32        S2, S2, S18
3B63A8:  VMUL.F32        S6, S6, S18
3B63AC:  VCVT.F64.F32    D16, S16
3B63B0:  ITT LT
3B63B2:  VSTRLT          S22, [R10,#0x22C]
3B63B6:  VMOVLT.F32      S8, S22
3B63BA:  VCMPE.F32       S22, S8
3B63BE:  VMRS            APSR_nzcv, FPSCR
3B63C2:  BGE             loc_3B63F2
3B63C4:  VCMPE.F64       D16, D17
3B63C8:  VMRS            APSR_nzcv, FPSCR
3B63CC:  BGE             loc_3B6420
3B63CE:  VCVT.F64.F32    D16, S8
3B63D2:  VLDR            D17, =-0.03
3B63D6:  VADD.F64        D16, D16, D17
3B63DA:  VCVT.F64.F32    D17, S22
3B63DE:  VCMPE.F64       D16, D17
3B63E2:  VMRS            APSR_nzcv, FPSCR
3B63E6:  IT LT
3B63E8:  VMOVLT.F64      D16, D17
3B63EC:  VCVT.F32.F64    S16, D16
3B63F0:  B               loc_3B643A
3B63F2:  VCMPE.F64       D16, D17
3B63F6:  VMRS            APSR_nzcv, FPSCR
3B63FA:  BGE             loc_3B642E
3B63FC:  VCVT.F64.F32    D16, S8
3B6400:  VLDR            D17, =0.03
3B6404:  VADD.F64        D16, D16, D17
3B6408:  VCVT.F64.F32    D17, S22
3B640C:  VCMPE.F64       D16, D17
3B6410:  VMRS            APSR_nzcv, FPSCR
3B6414:  IT GT
3B6416:  VMOVGT.F64      D16, D17
3B641A:  VCVT.F32.F64    S16, D16
3B641E:  B               loc_3B643A
3B6420:  VLDR            S10, =-0.0053333
3B6424:  VADD.F32        S8, S8, S10
3B6428:  VMAX.F32        D8, D11, D4
3B642C:  B               loc_3B643A
3B642E:  VLDR            S10, =0.0053333
3B6432:  VADD.F32        S8, S8, S10
3B6436:  VMIN.F32        D8, D11, D4
3B643A:  LDR             R0, =(TheCamera_ptr - 0x3B644C)
3B643C:  VADD.F32        S26, S0, S20
3B6440:  LDR.W           R1, [R10,#4]
3B6444:  VADD.F32        S24, S2, S20
3B6448:  ADD             R0, PC; TheCamera_ptr
3B644A:  VSTR            S16, [R10,#0x22C]
3B644E:  VADD.F32        S22, S6, S4
3B6452:  LDR             R0, [R0]; TheCamera
3B6454:  LDR             R2, [R1,#0x14]
3B6456:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
3B6458:  ADD.W           R6, R2, #0x30 ; '0'
3B645C:  CMP             R2, #0
3B645E:  IT EQ
3B6460:  ADDEQ           R6, R1, #4
3B6462:  ADD.W           R1, R3, #0x30 ; '0'
3B6466:  CMP             R3, #0
3B6468:  VLDR            S0, [R6]
3B646C:  VLDR            S2, [R6,#4]
3B6470:  VLDR            S4, [R6,#8]
3B6474:  IT EQ
3B6476:  ADDEQ           R1, R0, #4; float
3B6478:  VLDR            S6, [R1]
3B647C:  VLDR            S8, [R1,#4]
3B6480:  VSUB.F32        S0, S0, S6
3B6484:  VLDR            S10, [R1,#8]
3B6488:  VSUB.F32        S2, S2, S8
3B648C:  VSUB.F32        S4, S4, S10
3B6490:  VMUL.F32        S0, S0, S0
3B6494:  VMUL.F32        S2, S2, S2
3B6498:  VMUL.F32        S4, S4, S4
3B649C:  VADD.F32        S0, S0, S2
3B64A0:  VLDR            S2, =128.0
3B64A4:  VADD.F32        S0, S0, S4
3B64A8:  VSQRT.F32       S0, S0
3B64AC:  VCMPE.F32       S0, S2
3B64B0:  VMRS            APSR_nzcv, FPSCR
3B64B4:  BGE             loc_3B64CA
3B64B6:  VLDR            S2, =48.0
3B64BA:  VCMPE.F32       S0, S2
3B64BE:  VMRS            APSR_nzcv, FPSCR
3B64C2:  BGE             loc_3B64E4
3B64C4:  VLDR            S18, =-100.0
3B64C8:  B               loc_3B651A
3B64CA:  MOV             R0, R8; this
3B64CC:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B64D0:  VMOV            S0, R0
3B64D4:  VMUL.F32        S0, S0, S18
3B64D8:  B               loc_3B6516
3B64DA:  ALIGN 4
3B64DC:  DCFS 0.22
3B64E0:  DCFS 0.0
3B64E4:  VLDR            S2, =-48.0
3B64E8:  VADD.F32        S0, S0, S2
3B64EC:  VLDR            S2, =80.0
3B64F0:  VDIV.F32        S0, S0, S2
3B64F4:  VMOV            R0, S0; this
3B64F8:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B64FC:  VMOV            S28, R0
3B6500:  MOV             R0, R8; this
3B6502:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B6506:  VMOV            S0, R0
3B650A:  VMUL.F32        S2, S28, S18
3B650E:  VMUL.F32        S0, S0, S18
3B6512:  VADD.F32        S0, S2, S0
3B6516:  VADD.F32        S18, S0, S20
3B651A:  MOV             R0, R10; this
3B651C:  MOVS            R1, #2; __int16
3B651E:  MOVS            R2, #0x28 ; '('; __int16
3B6520:  MOVS            R3, #0; __int16
3B6522:  VSTR            S26, [SP,#0xB8+var_B8]
3B6526:  VSTR            S16, [SP,#0xB8+var_B4]
3B652A:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B652E:  MOV             R0, R10; this
3B6530:  MOVS            R1, #4; __int16
3B6532:  MOVS            R2, #0x28 ; '('; __int16
3B6534:  MOVS            R3, #1; __int16
3B6536:  VSTR            S24, [SP,#0xB8+var_B8]
3B653A:  VSTR            S16, [SP,#0xB8+var_B4]
3B653E:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B6542:  MOV.W           R4, #0x3F800000
3B6546:  MOV             R0, R10; this
3B6548:  MOVS            R1, #3; __int16
3B654A:  MOVS            R2, #0x28 ; '('; __int16
3B654C:  MOVS            R3, #3; __int16
3B654E:  STR             R4, [SP,#0xB8+var_B4]; float
3B6550:  VSTR            S22, [SP,#0xB8+var_B8]
3B6554:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B6558:  MOV             R0, R10; this
3B655A:  MOVS            R1, #1; __int16
3B655C:  MOVS            R2, #0x13; __int16
3B655E:  MOVS            R3, #3; __int16
3B6560:  STR             R4, [SP,#0xB8+var_B4]; float
3B6562:  VSTR            S18, [SP,#0xB8+var_B8]
3B6566:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B656A:  ADD             R0, SP, #0xB8+var_A0; this
3B656C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3B6570:  ADD             SP, SP, #0x60 ; '`'
3B6572:  VPOP            {D8-D15}
3B6576:  POP.W           {R8-R10}
3B657A:  POP             {R4-R7,PC}
