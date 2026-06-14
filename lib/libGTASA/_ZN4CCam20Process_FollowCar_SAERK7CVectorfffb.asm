; =========================================================
; Game Engine Function: _ZN4CCam20Process_FollowCar_SAERK7CVectorfffb
; Address            : 0x3C0250 - 0x3C20BA
; =========================================================

3C0250:  PUSH            {R4-R7,LR}
3C0252:  ADD             R7, SP, #0xC
3C0254:  PUSH.W          {R8-R11}
3C0258:  SUB             SP, SP, #4
3C025A:  VPUSH           {D8-D15}
3C025E:  SUB             SP, SP, #0x88
3C0260:  MOV             R8, R0
3C0262:  LDR.W           R11, [R8,#0x1F4]
3C0266:  CMP.W           R11, #0
3C026A:  BEQ.W           loc_3C20AC
3C026E:  LDRB.W          R0, [R11,#0x3A]
3C0272:  AND.W           R0, R0, #7
3C0276:  CMP             R0, #2
3C0278:  BNE.W           loc_3C20AC
3C027C:  VLDR            D16, [R1]
3C0280:  LDR             R0, [R1,#8]
3C0282:  STR             R0, [SP,#0xE8+var_88]
3C0284:  MOVS            R0, #0; this
3C0286:  VSTR            D16, [SP,#0xE8+var_90]
3C028A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C028E:  MOV             R6, R0
3C0290:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C0298)
3C0294:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C0296:  LDR             R0, [R0]; MobileSettings::settings ...
3C0298:  LDR.W           R0, [R0,#(dword_6E053C - 0x6E03F4)]
3C029C:  CBZ             R0, loc_3C02B6
3C029E:  MOV             R0, R11; this
3C02A0:  BLX             j__ZN8CVehicle25CanUseCameraHeightSettingEv; CVehicle::CanUseCameraHeightSetting(void)
3C02A4:  VMOV.F32        S2, #3.0
3C02A8:  VLDR            S0, =1.3
3C02AC:  CMP             R0, #0
3C02AE:  IT NE
3C02B0:  VMOVNE.F32      S0, S2
3C02B4:  B               loc_3C02BA
3C02B6:  VLDR            S0, =1.3
3C02BA:  LDR.W           R0, =(CARCAM_SET_ptr - 0x3C02C2)
3C02BE:  ADD             R0, PC; CARCAM_SET_ptr
3C02C0:  LDR             R0, [R0]; CARCAM_SET
3C02C2:  VSTR            S0, [R0]
3C02C6:  LDR.W           R0, [R11,#0x464]
3C02CA:  CBZ             R0, loc_3C02DC
3C02CC:  LDR.W           R0, [R0,#0x59C]
3C02D0:  CMP             R0, #1
3C02D2:  BNE             loc_3C02DC
3C02D4:  MOVS            R0, #(stderr+1); this
3C02D6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C02DA:  MOV             R6, R0
3C02DC:  LDR.W           R0, =(TheCamera_ptr - 0x3C02E6)
3C02E0:  MOV             R1, R11; CVehicle *
3C02E2:  ADD             R0, PC; TheCamera_ptr
3C02E4:  LDR             R0, [R0]; TheCamera ; this
3C02E6:  BLX             j__ZN7CCamera24ApplyVehicleCameraTweaksEP8CVehicle; CCamera::ApplyVehicleCameraTweaks(CVehicle *)
3C02EA:  LDRSH.W         R0, [R11,#0x26]
3C02EE:  MOV.W           R9, #5
3C02F2:  CMP.W           R0, #0x1F4
3C02F6:  BGT             loc_3C0310
3C02F8:  MOVW            R1, #0x1B9
3C02FC:  CMP             R0, R1
3C02FE:  IT NE
3C0300:  CMPNE.W         R0, #0x1D0
3C0304:  BEQ             loc_3C033A
3C0306:  MOVW            R1, #0x1D1
3C030A:  CMP             R0, R1
3C030C:  BEQ             loc_3C0336
3C030E:  B               loc_3C0326
3C0310:  MOVW            R1, #0x1F5
3C0314:  CMP             R0, R1
3C0316:  BEQ             loc_3C0336
3C0318:  CMP.W           R0, #0x234
3C031C:  ITT NE
3C031E:  MOVWNE          R1, #0x252
3C0322:  CMPNE           R0, R1
3C0324:  BEQ             loc_3C033A
3C0326:  LDR.W           R1, [R11,#0x5A0]
3C032A:  CMP             R1, #9
3C032C:  BNE.W           loc_3C0566
3C0330:  MOV.W           R9, #1
3C0334:  B               loc_3C033A
3C0336:  MOV.W           R9, #6
3C033A:  LDR.W           R0, =(TheCamera_ptr - 0x3C034A)
3C033E:  RSB.W           R10, R9, R9,LSL#4
3C0342:  LDR.W           R1, =(CARCAM_SET_ptr - 0x3C034C)
3C0346:  ADD             R0, PC; TheCamera_ptr
3C0348:  ADD             R1, PC; CARCAM_SET_ptr
3C034A:  LDR             R0, [R0]; TheCamera
3C034C:  LDR             R1, [R1]; CARCAM_SET
3C034E:  VLDR            S16, [R0,#0xBC]
3C0352:  ADD.W           R0, R1, R10,LSL#2
3C0356:  VLDR            S20, [R0,#4]
3C035A:  MOV             R0, R11; this
3C035C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3C0360:  SUBS            R0, #1
3C0362:  CMP             R0, #4
3C0364:  BHI             loc_3C0372
3C0366:  LDR.W           R1, =(unk_616AE0 - 0x3C036E)
3C036A:  ADD             R1, PC; unk_616AE0
3C036C:  LDR.W           R0, [R1,R0,LSL#2]
3C0370:  B               loc_3C0374
3C0372:  MOVS            R0, #0
3C0374:  LDRB.W          R1, [R11,#0x3A]
3C0378:  AND.W           R1, R1, #0xF8
3C037C:  CMP             R1, #0x40 ; '@'
3C037E:  BNE             loc_3C038A
3C0380:  LDR.W           R1, =(ZmTwoAlphaOffset_ptr - 0x3C0388)
3C0384:  ADD             R1, PC; ZmTwoAlphaOffset_ptr
3C0386:  LDR             R1, [R1]; ZmTwoAlphaOffset
3C0388:  B               loc_3C03A6
3C038A:  LDR.W           R1, =(TheCamera_ptr - 0x3C0392)
3C038E:  ADD             R1, PC; TheCamera_ptr
3C0390:  LDR             R1, [R1]; TheCamera
3C0392:  LDR.W           R1, [R1,#(dword_952058 - 0x951FA8)]
3C0396:  SUBS            R1, #1
3C0398:  CMP             R1, #2
3C039A:  BHI             loc_3C03B8
3C039C:  LDR.W           R2, =(off_6679B4 - 0x3C03A4)
3C03A0:  ADD             R2, PC; off_6679B4
3C03A2:  LDR.W           R1, [R2,R1,LSL#2]
3C03A6:  ADD.W           R0, R1, R0,LSL#2
3C03AA:  VLDR            S0, =0.0
3C03AE:  VLDR            S2, [R0]
3C03B2:  VADD.F32        S18, S2, S0
3C03B6:  B               loc_3C03BC
3C03B8:  VLDR            S18, =0.0
3C03BC:  MOV             R0, R11; this
3C03BE:  VADD.F32        S16, S16, S20
3C03C2:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C03C6:  VLDR            S24, [R0,#0x14]
3C03CA:  MOV             R0, R11; this
3C03CC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C03D0:  VLDR            S0, [R0,#4]
3C03D4:  LDR.W           R0, [R11,#0x4D4]; this
3C03D8:  VABS.F32        S0, S0
3C03DC:  CMP             R0, #0
3C03DE:  VADD.F32        S20, S0, S0
3C03E2:  BEQ.W           loc_3C050A
3C03E6:  VMOV.F32        S26, #1.0
3C03EA:  LDR.W           R1, =(dword_952E04 - 0x3C03F2)
3C03EE:  ADD             R1, PC; dword_952E04
3C03F0:  VLDR            S22, [R1]
3C03F4:  VCMPE.F32       S22, S26
3C03F8:  VMRS            APSR_nzcv, FPSCR
3C03FC:  BGE             loc_3C0424
3C03FE:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C040A)
3C0402:  VLDR            S0, =0.02
3C0406:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C0408:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3C040A:  VLDR            S2, [R1]
3C040E:  LDR.W           R1, =(dword_952E04 - 0x3C041A)
3C0412:  VMUL.F32        S0, S2, S0
3C0416:  ADD             R1, PC; dword_952E04
3C0418:  VADD.F32        S0, S22, S0
3C041C:  VMIN.F32        D11, D0, D13
3C0420:  VSTR            S22, [R1]
3C0424:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C0428:  MOV             R5, R0
3C042A:  LDR.W           R0, [R11,#0x4D4]; this
3C042E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C0432:  VLDR            S0, [R0]
3C0436:  VMOV.F32        S28, #0.5
3C043A:  VLDR            S6, [R5,#0xC]
3C043E:  VLDR            S2, [R0,#4]
3C0442:  VLDR            S8, [R5,#0x10]
3C0446:  VSUB.F32        S0, S6, S0
3C044A:  VLDR            S4, [R0,#8]
3C044E:  VSUB.F32        S2, S8, S2
3C0452:  VLDR            S10, [R5,#0x14]
3C0456:  LDR.W           R4, =(dword_952E04 - 0x3C0466)
3C045A:  VSUB.F32        S4, S10, S4
3C045E:  LDR.W           R0, [R11,#0x4D4]; this
3C0462:  ADD             R4, PC; dword_952E04
3C0464:  VMUL.F32        S0, S0, S0
3C0468:  VLDR            S17, [R4]
3C046C:  VMUL.F32        S2, S2, S2
3C0470:  VMUL.F32        S4, S4, S4
3C0474:  VADD.F32        S0, S0, S2
3C0478:  VADD.F32        S30, S0, S4
3C047C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C0480:  VLDR            S0, [R4]
3C0484:  VSQRT.F32       S2, S30
3C0488:  LDR.W           R1, [R11,#0x4D4]
3C048C:  VMUL.F32        S0, S0, S28
3C0490:  VLDR            S4, [R0,#0x14]
3C0494:  LDR             R0, [R1,#0x14]
3C0496:  VMAX.F32        D2, D12, D2
3C049A:  ADD.W           R2, R0, #0x30 ; '0'
3C049E:  CMP             R0, #0
3C04A0:  IT EQ
3C04A2:  ADDEQ           R2, R1, #4
3C04A4:  VLDR            S14, [SP,#0xE8+var_90]
3C04A8:  VLDR            S10, [R2,#4]
3C04AC:  VLDR            S12, [R2,#8]
3C04B0:  VSUB.F32        S6, S26, S0
3C04B4:  VLDR            S1, [SP,#0xE8+var_90+4]
3C04B8:  VLDR            S3, [SP,#0xE8+var_88]
3C04BC:  VSUB.F32        S4, S4, S24
3C04C0:  VLDR            S8, [R2]
3C04C4:  VMUL.F32        S5, S22, S28
3C04C8:  VMUL.F32        S10, S0, S10
3C04CC:  VMUL.F32        S12, S0, S12
3C04D0:  VMUL.F32        S0, S0, S8
3C04D4:  VMUL.F32        S1, S1, S6
3C04D8:  VMUL.F32        S3, S6, S3
3C04DC:  VMUL.F32        S6, S14, S6
3C04E0:  VMUL.F32        S4, S17, S4
3C04E4:  VMUL.F32        S2, S5, S2
3C04E8:  VADD.F32        S8, S1, S10
3C04EC:  VADD.F32        S10, S3, S12
3C04F0:  VADD.F32        S0, S6, S0
3C04F4:  VADD.F32        S24, S24, S4
3C04F8:  VADD.F32        S20, S20, S2
3C04FC:  VSTR            S8, [SP,#0xE8+var_90+4]
3C0500:  VSTR            S10, [SP,#0xE8+var_88]
3C0504:  VSTR            S0, [SP,#0xE8+var_90]
3C0508:  B               loc_3C05D0
3C050A:  LDR.W           R0, [R11,#0x5A4]
3C050E:  CMP             R0, #9
3C0510:  IT NE
3C0512:  CMPNE           R0, #2
3C0514:  BNE             loc_3C055A
3C0516:  LDR.W           R0, =(dword_952E04 - 0x3C0522)
3C051A:  LDR.W           R1, [R11,#0x468]
3C051E:  ADD             R0, PC; dword_952E04
3C0520:  CMP             R1, #0
3C0522:  VLDR            S0, [R0]
3C0526:  BEQ             loc_3C0590
3C0528:  VMOV.F32        S2, #1.0
3C052C:  VCMPE.F32       S0, S2
3C0530:  VMRS            APSR_nzcv, FPSCR
3C0534:  BGE             loc_3C05C4
3C0536:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C0542)
3C053A:  VLDR            S4, =0.02
3C053E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C0540:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C0542:  VLDR            S6, [R0]
3C0546:  LDR.W           R0, =(dword_952E04 - 0x3C0552)
3C054A:  VMUL.F32        S4, S6, S4
3C054E:  ADD             R0, PC; dword_952E04
3C0550:  VADD.F32        S0, S0, S4
3C0554:  VMIN.F32        D0, D0, D1
3C0558:  B               loc_3C05C0
3C055A:  LDR.W           R0, =(dword_952E04 - 0x3C0564)
3C055E:  MOVS            R1, #0
3C0560:  ADD             R0, PC; dword_952E04
3C0562:  STR             R1, [R0]
3C0564:  B               loc_3C05D0
3C0566:  LDR.W           R1, [R11,#0x5A4]
3C056A:  CMP             R1, #2
3C056C:  BEQ.W           loc_3C0330
3C0570:  CMP             R1, #3
3C0572:  BEQ.W           loc_3C0F90
3C0576:  CMP             R1, #4
3C0578:  BNE.W           loc_3C0F98
3C057C:  UXTH            R0, R0
3C057E:  MOVW            R1, #0x21B
3C0582:  MOV.W           R9, #3
3C0586:  CMP             R0, R1
3C0588:  IT EQ
3C058A:  MOVEQ.W         R9, #0
3C058E:  B               loc_3C033A
3C0590:  VCMPE.F32       S0, #0.0
3C0594:  VMRS            APSR_nzcv, FPSCR
3C0598:  BLE             loc_3C05C4
3C059A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C05A6)
3C059E:  VLDR            S2, =-0.02
3C05A2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C05A4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C05A6:  VLDR            S4, [R0]
3C05AA:  LDR.W           R0, =(dword_952E04 - 0x3C05BA)
3C05AE:  VMUL.F32        S2, S4, S2
3C05B2:  VLDR            S4, =0.0
3C05B6:  ADD             R0, PC; dword_952E04
3C05B8:  VADD.F32        S0, S0, S2
3C05BC:  VMAX.F32        D0, D0, D2
3C05C0:  VSTR            S0, [R0]
3C05C4:  VLDR            S2, =0.4
3C05C8:  VMUL.F32        S0, S0, S2
3C05CC:  VADD.F32        S24, S24, S0
3C05D0:  LDR.W           R0, =(TheCamera_ptr - 0x3C05DC)
3C05D4:  LDR.W           R1, =(CARCAM_SET_ptr - 0x3C05DE)
3C05D8:  ADD             R0, PC; TheCamera_ptr
3C05DA:  ADD             R1, PC; CARCAM_SET_ptr
3C05DC:  LDR             R0, [R0]; TheCamera
3C05DE:  ADD.W           R0, R0, #0xCD0
3C05E2:  VLDR            S0, [R0]
3C05E6:  LDR             R0, [R1]; CARCAM_SET
3C05E8:  VMUL.F32        S20, S20, S0
3C05EC:  ADD.W           R0, R0, R10,LSL#2
3C05F0:  VLDR            S22, [R0,#0xC]
3C05F4:  MOV             R0, R11; this
3C05F6:  VADD.F32        S16, S16, S20
3C05FA:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3C05FE:  CMP             R0, #3
3C0600:  BNE             loc_3C060E
3C0602:  LDRB.W          R0, [R11,#0x3A]
3C0606:  AND.W           R0, R0, #0xF8
3C060A:  CMP             R0, #0x40 ; '@'
3C060C:  BNE             loc_3C068C
3C060E:  LDR.W           R0, =(CARCAM_SET_ptr - 0x3C0616)
3C0612:  ADD             R0, PC; CARCAM_SET_ptr
3C0614:  LDR             R0, [R0]; CARCAM_SET
3C0616:  ADD.W           R0, R0, R10,LSL#2
3C061A:  VLDR            S0, [R0]
3C061E:  VLDR            S2, [R0,#8]
3C0622:  ADD             R0, SP, #0xE8+var_90
3C0624:  VMUL.F32        S0, S24, S0
3C0628:  ADD.W           R2, R0, #8
3C062C:  VSUB.F32        S2, S0, S2
3C0630:  VLDR            S0, [SP,#0xE8+var_88]
3C0634:  VCMPE.F32       S2, #0.0
3C0638:  VMRS            APSR_nzcv, FPSCR
3C063C:  BLE             loc_3C06EA
3C063E:  VLDR            S4, =0.3
3C0642:  VADD.F32        S16, S16, S2
3C0646:  VADD.F32        S0, S2, S0
3C064A:  VMUL.F32        S4, S2, S4
3C064E:  VSTR            S0, [SP,#0xE8+var_88]
3C0652:  VDIV.F32        S4, S4, S16
3C0656:  VADD.F32        S18, S18, S4
3C065A:  B               loc_3C06EA
3C065C:  DCFS 1.3
3C0660:  DCFS 0.0
3C0664:  DCFS 0.02
3C0668:  DCFS -0.02
3C066C:  DCFS 0.4
3C0670:  DCFS 0.3
3C0674:  DCFS 0.65
3C0678:  DCFS 70.0
3C067C:  DCFS -70.0
3C0680:  DCFS 100.0
3C0684:  DCFS -1.5708
3C0688:  DCFS 3.1416
3C068C:  LDR.W           R0, =(fTestShiftHeliCamTarget_ptr - 0x3C0698)
3C0690:  LDR.W           R1, [R11,#0x14]
3C0694:  ADD             R0, PC; fTestShiftHeliCamTarget_ptr
3C0696:  VLDR            S8, [SP,#0xE8+var_90+4]
3C069A:  VLDR            S10, [SP,#0xE8+var_88]
3C069E:  LDR             R0, [R0]; fTestShiftHeliCamTarget
3C06A0:  VLDR            S0, [R1,#0x20]
3C06A4:  VLDR            S2, [R1,#0x24]
3C06A8:  VLDR            S6, [R0]
3C06AC:  ADD             R0, SP, #0xE8+var_90
3C06AE:  VLDR            S4, [R1,#0x28]
3C06B2:  ADD.W           R2, R0, #8
3C06B6:  VMUL.F32        S0, S6, S0
3C06BA:  VMUL.F32        S2, S6, S2
3C06BE:  VMUL.F32        S4, S6, S4
3C06C2:  VLDR            S6, [SP,#0xE8+var_90]
3C06C6:  VMUL.F32        S0, S24, S0
3C06CA:  VMUL.F32        S2, S24, S2
3C06CE:  VMUL.F32        S4, S24, S4
3C06D2:  VADD.F32        S6, S0, S6
3C06D6:  VADD.F32        S2, S2, S8
3C06DA:  VADD.F32        S0, S4, S10
3C06DE:  VSTR            S6, [SP,#0xE8+var_90]
3C06E2:  VSTR            S2, [SP,#0xE8+var_90+4]
3C06E6:  VSTR            S0, [SP,#0xE8+var_88]
3C06EA:  LDR.W           R0, =(TheCamera_ptr - 0x3C06F2)
3C06EE:  ADD             R0, PC; TheCamera_ptr
3C06F0:  LDR             R0, [R0]; TheCamera
3C06F2:  ADDW            R1, R0, #0xCD4
3C06F6:  VLDR            S2, [R1]
3C06FA:  LDR.W           R1, =(CARCAM_SET_ptr - 0x3C070A)
3C06FE:  VMUL.F32        S24, S2, S0
3C0702:  VLDR            S0, =0.65
3C0706:  ADD             R1, PC; CARCAM_SET_ptr
3C0708:  LDR             R1, [R1]; CARCAM_SET
3C070A:  ADD.W           R1, R1, R10,LSL#2
3C070E:  VLDR            S2, [R1,#0x10]
3C0712:  ADDW            R1, R0, #0xCD8
3C0716:  LDR.W           R0, [R0,#(dword_952058 - 0x951FA8)]
3C071A:  VMUL.F32        S0, S2, S0
3C071E:  VLDR            S4, [R1]
3C0722:  CMP             R0, #1
3C0724:  VMOV.F32        S6, S2
3C0728:  VSTR            S24, [R2]
3C072C:  VADD.F32        S31, S18, S4
3C0730:  MOV             R0, #0x40600000
3C0738:  IT EQ
3C073A:  VMOVEQ.F32      S6, S0
3C073E:  CMP.W           R9, #2
3C0742:  IT CC
3C0744:  VMOVCC.F32      S2, S6
3C0748:  LDRB.W          R1, [R8,#0xA]
3C074C:  VMAX.F32        D16, D8, D1
3C0750:  CMP             R1, #0
3C0752:  VSTR            D16, [SP,#0xE8+var_B0]
3C0756:  STR.W           R0, [R8,#0xA4]
3C075A:  VSTR            S16, [R8,#0xA8]
3C075E:  STR.W           R9, [SP,#0xE8+var_B4]
3C0762:  STR             R6, [SP,#0xE8+var_C0]
3C0764:  STR             R2, [SP,#0xE8+var_CC]
3C0766:  STR.W           R10, [SP,#0xE8+var_98]
3C076A:  BEQ             loc_3C0778
3C076C:  MOVS            R0, #0x428C0000
3C0772:  STR.W           R0, [R8,#0x8C]
3C0776:  B               loc_3C08A4
3C0778:  LDR.W           R0, [R11,#0x5A4]
3C077C:  CMP             R0, #9
3C077E:  IT NE
3C0780:  CMPNE           R0, #0
3C0782:  BNE             loc_3C07EA
3C0784:  LDR.W           R0, [R11,#0x14]
3C0788:  VLDR            S0, [R11,#0x48]
3C078C:  VLDR            S2, [R11,#0x4C]
3C0790:  VLDR            S6, [R0,#0x10]
3C0794:  VLDR            S8, [R0,#0x14]
3C0798:  VMUL.F32        S0, S0, S6
3C079C:  VLDR            S10, [R0,#0x18]
3C07A0:  VMUL.F32        S2, S2, S8
3C07A4:  VLDR            S4, [R11,#0x50]
3C07A8:  LDR.W           R0, =(CAR_FOV_START_SPEED_ptr - 0x3C07B4)
3C07AC:  VMUL.F32        S4, S4, S10
3C07B0:  ADD             R0, PC; CAR_FOV_START_SPEED_ptr
3C07B2:  LDR             R0, [R0]; CAR_FOV_START_SPEED
3C07B4:  VADD.F32        S0, S0, S2
3C07B8:  VLDR            S2, [R0]
3C07BC:  VADD.F32        S0, S0, S4
3C07C0:  VCMPE.F32       S0, S2
3C07C4:  VMRS            APSR_nzcv, FPSCR
3C07C8:  BLE             loc_3C07EA
3C07CA:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C07D6)
3C07CE:  VSUB.F32        S0, S0, S2
3C07D2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C07D4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C07D6:  VLDR            S2, [R0]
3C07DA:  VMUL.F32        S0, S0, S2
3C07DE:  VLDR            S2, [R8,#0x8C]
3C07E2:  VADD.F32        S0, S2, S0
3C07E6:  VSTR            S0, [R8,#0x8C]
3C07EA:  VLDR            S18, =70.0
3C07EE:  VLDR            S0, [R8,#0x8C]
3C07F2:  VCMPE.F32       S0, S18
3C07F6:  VMRS            APSR_nzcv, FPSCR
3C07FA:  BLE             loc_3C0830
3C07FC:  LDR.W           R0, =(CAR_FOV_FADE_MULT_ptr - 0x3C0808)
3C0800:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C080E)
3C0804:  ADD             R0, PC; CAR_FOV_FADE_MULT_ptr
3C0806:  VLDR            S2, =-70.0
3C080A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C080C:  LDR             R0, [R0]; CAR_FOV_FADE_MULT
3C080E:  VADD.F32        S26, S0, S2
3C0812:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3C0814:  LDR             R0, [R0]; x
3C0816:  LDR             R1, [R1]; y
3C0818:  BLX             powf
3C081C:  VMOV            S0, R0
3C0820:  VLDR            S2, =70.0
3C0824:  VMUL.F32        S0, S26, S0
3C0828:  VADD.F32        S0, S0, S2
3C082C:  VSTR            S0, [R8,#0x8C]
3C0830:  VLDR            S2, =100.0
3C0834:  VCMPE.F32       S0, S2
3C0838:  VMRS            APSR_nzcv, FPSCR
3C083C:  BLE             loc_3C0844
3C083E:  VSTR            S2, [R8,#0x8C]
3C0842:  B               loc_3C0856
3C0844:  VCMPE.F32       S0, S18
3C0848:  VMRS            APSR_nzcv, FPSCR
3C084C:  VMOV.F32        S2, S18
3C0850:  IT LT
3C0852:  VSTRLT          S2, [R8,#0x8C]
3C0856:  MOV.W           R0, #0xFFFFFFFF; int
3C085A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C085E:  CBZ             R0, loc_3C0890
3C0860:  MOV.W           R0, #0xFFFFFFFF; int
3C0864:  MOVS            R1, #0; bool
3C0866:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C086A:  CBZ             R0, loc_3C0890
3C086C:  LDR.W           R0, [R0,#0x5A4]
3C0870:  SUBS            R0, #3
3C0872:  CMP             R0, #2
3C0874:  BCC             loc_3C08A4
3C0876:  LDR.W           R0, =(currentPad_ptr - 0x3C087E)
3C087A:  ADD             R0, PC; currentPad_ptr
3C087C:  LDR             R0, [R0]; currentPad
3C087E:  LDR             R0, [R0]
3C0880:  CMP             R0, #0
3C0882:  ITT EQ
3C0884:  MOVEQ           R0, #0; this
3C0886:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C088A:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C088E:  CBNZ            R0, loc_3C08A4
3C0890:  LDR.W           R0, =(TheCamera_ptr - 0x3C0898)
3C0894:  ADD             R0, PC; TheCamera_ptr
3C0896:  LDR             R0, [R0]; TheCamera
3C0898:  LDRB            R1, [R0,#(word_951FC2 - 0x951FA8)]
3C089A:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3C089C:  ORRS            R0, R1
3C089E:  LSLS            R0, R0, #0x18
3C08A0:  BEQ.W           loc_3C0DD0
3C08A4:  LDR.W           R0, =(TheCamera_ptr - 0x3C08B2)
3C08A8:  MOVS            R2, #1
3C08AA:  STRB.W          R2, [R8,#3]
3C08AE:  ADD             R0, PC; TheCamera_ptr
3C08B0:  LDR             R1, [R7,#arg_4]
3C08B2:  LDR             R3, [R0]; TheCamera
3C08B4:  MOVS            R0, #0
3C08B6:  STRB.W          R0, [R8,#0xC]
3C08BA:  STRB.W          R0, [R8,#0xA]
3C08BE:  LDRB.W          R6, [R3,#(byte_951FCE - 0x951FA8)]
3C08C2:  STRB.W          R2, [R3,#(byte_95289D - 0x951FA8)]
3C08C6:  CMP             R6, #0
3C08C8:  IT NE
3C08CA:  MOVNE           R6, #1
3C08CC:  ORRS            R1, R6
3C08CE:  STR             R1, [SP,#0xE8+var_9C]
3C08D0:  BEQ             loc_3C08E0
3C08D2:  VLDR            S18, [R8,#0x84]
3C08D6:  ADD.W           R9, R8, #0x84
3C08DA:  VLDR            S0, [R8,#0x94]
3C08DE:  B               loc_3C092C
3C08E0:  MOV             R9, R8
3C08E2:  STR.W           R0, [R9,#0x84]!
3C08E6:  LDR.W           R0, [R11,#0x14]
3C08EA:  CBZ             R0, loc_3C08FE
3C08EC:  LDRD.W          R2, R1, [R0,#0x10]; x
3C08F0:  EOR.W           R0, R2, #0x80000000; y
3C08F4:  BLX             atan2f
3C08F8:  VMOV            S0, R0
3C08FC:  B               loc_3C0902
3C08FE:  VLDR            S0, [R11,#0x10]
3C0902:  VLDR            S2, =-1.5708
3C0906:  LDR.W           R0, =(TheCamera_ptr - 0x3C0916)
3C090A:  VADD.F32        S0, S0, S2
3C090E:  VLDR            S18, =0.0
3C0912:  ADD             R0, PC; TheCamera_ptr
3C0914:  LDR             R0, [R0]; TheCamera
3C0916:  VSTR            S0, [R8,#0x94]
3C091A:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3C091C:  CMP             R0, #0
3C091E:  ITTT NE
3C0920:  VLDRNE          S2, =3.1416
3C0924:  VADDNE.F32      S0, S0, S2
3C0928:  VSTRNE          S0, [R8,#0x94]
3C092C:  VMOV            R5, S0
3C0930:  MOV             R0, R5; x
3C0932:  BLX             cosf
3C0936:  VMOV            R4, S18
3C093A:  MOV             R10, R0
3C093C:  MOV             R0, R4; x
3C093E:  BLX             cosf
3C0942:  MOV             R6, R0
3C0944:  MOV             R0, R5; x
3C0946:  BLX             sinf
3C094A:  VMOV            S0, R0
3C094E:  MOVS            R5, #0
3C0950:  VMOV            S2, R6
3C0954:  MOV             R0, R4; x
3C0956:  VMOV            S4, R10
3C095A:  STR.W           R5, [R8,#0x88]
3C095E:  VMUL.F32        S28, S2, S0
3C0962:  VMUL.F32        S18, S4, S2
3C0966:  VNMUL.F32       S26, S2, S0
3C096A:  VNMUL.F32       S30, S4, S2
3C096E:  BLX             sinf
3C0972:  VMOV            S0, R0
3C0976:  VLDR            D3, [SP,#0xE8+var_B0]
3C097A:  VMUL.F32        S10, S16, S18
3C097E:  MOVS            R1, #0
3C0980:  VMUL.F32        S8, S16, S0
3C0984:  MOVT            R1, #0x447A
3C0988:  VMUL.F32        S2, S6, S0
3C098C:  STRD.W          R5, R1, [R8,#0x98]
3C0990:  VMUL.F32        S4, S6, S28
3C0994:  STR.W           R0, [R8,#0x170]
3C0998:  VMUL.F32        S6, S6, S18
3C099C:  VSTR            S30, [R8,#0x168]
3C09A0:  VMUL.F32        S12, S16, S28
3C09A4:  VSTR            S26, [R8,#0x16C]
3C09A8:  VLDR            S18, [SP,#0xE8+var_90]
3C09AC:  ADD.W           R2, R8, #0x1B4
3C09B0:  VLDR            S26, [SP,#0xE8+var_90+4]
3C09B4:  ADD.W           R1, R8, #0x1B8
3C09B8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C09D0)
3C09BC:  VSUB.F32        S8, S24, S8
3C09C0:  VSUB.F32        S0, S24, S2
3C09C4:  ADD.W           R3, R8, #0x170
3C09C8:  VADD.F32        S2, S26, S4
3C09CC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3C09CE:  VADD.F32        S4, S18, S6
3C09D2:  ADD.W           R4, R8, #0x16C
3C09D6:  VADD.F32        S6, S18, S10
3C09DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3C09DC:  VADD.F32        S10, S26, S12
3C09E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3C09E2:  STR.W           R0, [R8,#0x1E0]
3C09E6:  ADD.W           R0, R8, #0x1C0
3C09EA:  VSTR            S4, [R8,#0x1B0]
3C09EE:  VSTR            S2, [R8,#0x1B4]
3C09F2:  VSTR            S0, [R8,#0x1B8]
3C09F6:  VSTR            S6, [R8,#0x1BC]
3C09FA:  VSTR            S10, [R8,#0x1C0]
3C09FE:  VSTR            S8, [R8,#0x1C4]
3C0A02:  STR.W           R5, [R8,#0x1F0]
3C0A06:  ADD.W           R5, R8, #0x1C4
3C0A0A:  LDR             R6, [SP,#0xE8+var_9C]
3C0A0C:  STR             R0, [SP,#0xE8+var_A0]
3C0A0E:  ADD.W           R0, R8, #0x1BC
3C0A12:  STR             R0, [SP,#0xE8+var_A4]
3C0A14:  ADD             R0, SP, #0xE8+var_90
3C0A16:  CMP             R6, #0
3C0A18:  STR             R3, [SP,#0xE8+var_94]
3C0A1A:  ORR.W           R0, R0, #4
3C0A1E:  STR             R1, [SP,#0xE8+var_DC]
3C0A20:  STRD.W          R0, R2, [SP,#0xE8+var_E4]
3C0A24:  ITT EQ
3C0A26:  VNEGEQ.F32      S6, S31
3C0A2A:  VSTREQ          S6, [R9]
3C0A2E:  LDR.W           R9, [SP,#0xE8+var_B4]
3C0A32:  ADD.W           R3, R8, #0x168
3C0A36:  LDR.W           R10, [SP,#0xE8+var_98]
3C0A3A:  VSUB.F32        S4, S18, S4
3C0A3E:  STR             R3, [SP,#0xE8+var_D8]
3C0A40:  VSUB.F32        S2, S26, S2
3C0A44:  ADD.W           R6, R8, #0x168
3C0A48:  VSUB.F32        S0, S24, S0
3C0A4C:  VSTR            S4, [R3]
3C0A50:  VSTR            S2, [R4]
3C0A54:  LDR             R0, [SP,#0xE8+var_94]
3C0A56:  VSTR            S0, [R0]
3C0A5A:  MOV             R0, R6; this
3C0A5C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C0A60:  VLDR            S28, [R8,#0x168]
3C0A64:  VLDR            S30, [R4]
3C0A68:  VMOV            R0, S28
3C0A6C:  LDR             R2, [SP,#0xE8+var_A0]
3C0A6E:  VMOV            R1, S30; x
3C0A72:  VLDR            S0, [R2]
3C0A76:  LDR             R2, [SP,#0xE8+var_A4]
3C0A78:  VSUB.F32        S26, S26, S0
3C0A7C:  VLDR            S0, [R5]
3C0A80:  VLDR            S2, [R2]
3C0A84:  VSUB.F32        S24, S24, S0
3C0A88:  VSUB.F32        S18, S18, S2
3C0A8C:  EOR.W           R0, R0, #0x80000000; y
3C0A90:  BLX             atan2f
3C0A94:  VMUL.F32        S0, S26, S26
3C0A98:  VLDR            S19, [R11,#0x48]
3C0A9C:  VMUL.F32        S2, S18, S18
3C0AA0:  VLDR            S23, [R11,#0x4C]
3C0AA4:  VMUL.F32        S6, S19, S19
3C0AA8:  VLDR            S26, =-1.5708
3C0AAC:  VMUL.F32        S4, S23, S23
3C0AB0:  VMUL.F32        S21, S24, S24
3C0AB4:  VADD.F32        S25, S2, S0
3C0AB8:  VMOV            S2, R0
3C0ABC:  VADD.F32        S18, S6, S4
3C0AC0:  VLDR            S4, =-3.1416
3C0AC4:  VADD.F32        S24, S2, S26
3C0AC8:  VLDR            S2, =6.2832
3C0ACC:  VSQRT.F32       S0, S18
3C0AD0:  VCMPE.F32       S24, S4
3C0AD4:  VMRS            APSR_nzcv, FPSCR
3C0AD8:  VADD.F32        S2, S24, S2
3C0ADC:  IT LT
3C0ADE:  VMOVLT.F32      S24, S2
3C0AE2:  VLDR            S2, =0.02
3C0AE6:  VCMPE.F32       S0, S2
3C0AEA:  VMOV.F32        S2, S24
3C0AEE:  VMRS            APSR_nzcv, FPSCR
3C0AF2:  BLE             loc_3C0B0C
3C0AF4:  VMOV            R0, S19
3C0AF8:  VMOV            R1, S23; x
3C0AFC:  EOR.W           R0, R0, #0x80000000; y
3C0B00:  BLX             atan2f
3C0B04:  VMOV            S0, R0
3C0B08:  VADD.F32        S2, S0, S26
3C0B0C:  VLDR            S4, =3.1416
3C0B10:  VADD.F32        S0, S25, S21
3C0B14:  VADD.F32        S4, S24, S4
3C0B18:  VCMPE.F32       S2, S4
3C0B1C:  VMRS            APSR_nzcv, FPSCR
3C0B20:  BLE             loc_3C0B28
3C0B22:  VLDR            S4, =-6.2832
3C0B26:  B               loc_3C0B3E
3C0B28:  VLDR            S4, =-3.1416
3C0B2C:  VADD.F32        S4, S24, S4
3C0B30:  VCMPE.F32       S2, S4
3C0B34:  VMRS            APSR_nzcv, FPSCR
3C0B38:  BGE             loc_3C0B42
3C0B3A:  VLDR            S4, =6.2832
3C0B3E:  VADD.F32        S2, S2, S4
3C0B42:  VSQRT.F32       S0, S0
3C0B46:  LDR             R0, [SP,#0xE8+var_94]
3C0B48:  LDR.W           R1, =(CARCAM_SET_ptr - 0x3C0B50)
3C0B4C:  ADD             R1, PC; CARCAM_SET_ptr
3C0B4E:  LDR             R1, [R1]; CARCAM_SET
3C0B50:  VMUL.F32        S4, S30, S23
3C0B54:  VSTR            D0, [SP,#0xE8+var_C8]
3C0B58:  VMUL.F32        S6, S28, S19
3C0B5C:  VLDR            S0, [R0]
3C0B60:  VMUL.F32        S20, S22, S20
3C0B64:  VLDR            S22, [R11,#0x50]
3C0B68:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C0B78)
3C0B6C:  VMOV.F32        S10, #1.0
3C0B70:  VMUL.F32        S8, S0, S22
3C0B74:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C0B76:  VSUB.F32        S2, S2, S24
3C0B7A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C0B7C:  VADD.F32        S4, S6, S4
3C0B80:  VADD.F32        S4, S4, S8
3C0B84:  VMUL.F32        S8, S28, S4
3C0B88:  VLDR            S28, [R0]
3C0B8C:  VMUL.F32        S6, S30, S4
3C0B90:  ADD.W           R0, R1, R10,LSL#2
3C0B94:  VMUL.F32        S4, S0, S4
3C0B98:  VSUB.F32        S8, S19, S8
3C0B9C:  VLDR            S19, [R8,#0x94]
3C0BA0:  VSUB.F32        S6, S23, S6
3C0BA4:  VSUB.F32        S4, S22, S4
3C0BA8:  VMUL.F32        S8, S8, S8
3C0BAC:  VMUL.F32        S6, S6, S6
3C0BB0:  VMUL.F32        S4, S4, S4
3C0BB4:  VADD.F32        S6, S8, S6
3C0BB8:  VLDR            S8, [R0,#0x2C]
3C0BBC:  VADD.F32        S4, S4, S6
3C0BC0:  VLDR            S6, [R0,#0x28]
3C0BC4:  VMUL.F32        S6, S6, S28
3C0BC8:  VSQRT.F32       S4, S4
3C0BCC:  VMUL.F32        S4, S6, S4
3C0BD0:  VMUL.F32        S6, S28, S8
3C0BD4:  VNMUL.F32       S8, S28, S8
3C0BD8:  VMIN.F32        D2, D2, D5
3C0BDC:  VMUL.F32        S2, S2, S4
3C0BE0:  VLDR            S4, =3.1416
3C0BE4:  VADD.F32        S4, S19, S4
3C0BE8:  VMIN.F32        D16, D1, D3
3C0BEC:  VMAX.F32        D1, D16, D4
3C0BF0:  VADD.F32        S27, S24, S2
3C0BF4:  VCMPE.F32       S27, S4
3C0BF8:  VMRS            APSR_nzcv, FPSCR
3C0BFC:  BLE             loc_3C0C04
3C0BFE:  VLDR            S2, =-6.2832
3C0C02:  B               loc_3C0C1A
3C0C04:  VLDR            S2, =-3.1416
3C0C08:  VADD.F32        S2, S19, S2
3C0C0C:  VCMPE.F32       S27, S2
3C0C10:  VMRS            APSR_nzcv, FPSCR
3C0C14:  BGE             loc_3C0C1E
3C0C16:  VLDR            S2, =6.2832
3C0C1A:  VADD.F32        S27, S27, S2
3C0C1E:  VMOV.F32        S4, #1.0
3C0C22:  VMOV.F32        S2, #-1.0
3C0C26:  VMOV.F64        D3, D2
3C0C2A:  VCMPE.F32       S0, S6
3C0C2E:  VMRS            APSR_nzcv, FPSCR
3C0C32:  VMOV.F32        S4, S0
3C0C36:  IT GT
3C0C38:  VMOVGT.F32      S4, S6
3C0C3C:  VCMPE.F32       S4, S2
3C0C40:  VMRS            APSR_nzcv, FPSCR
3C0C44:  VMOV.F32        S4, S6
3C0C48:  VCMPE.F32       S0, S6
3C0C4C:  IT LT
3C0C4E:  VMOVLT.F32      S4, S2
3C0C52:  IT LT
3C0C54:  VMOVLT.F32      S0, S4
3C0C58:  VMRS            APSR_nzcv, FPSCR
3C0C5C:  IT GT
3C0C5E:  VMOVGT.F32      S0, S4
3C0C62:  VMOV            R0, S0; x
3C0C66:  BLX             asinf
3C0C6A:  VLDR            D2, [SP,#0xE8+var_C8]
3C0C6E:  VMUL.F32        S0, S22, S22
3C0C72:  VMAX.F32        D1, D10, D2
3C0C76:  LDR.W           R1, =(CARCAM_SET_ptr - 0x3C0C8E)
3C0C7A:  VCMPE.F32       S4, S16
3C0C7E:  VMRS            APSR_nzcv, FPSCR
3C0C82:  VMOV.F32        S4, S16
3C0C86:  VCMPE.F32       S16, S20
3C0C8A:  ADD             R1, PC; CARCAM_SET_ptr
3C0C8C:  VMOV            S20, R0
3C0C90:  LDR             R1, [R1]; CARCAM_SET
3C0C92:  VADD.F32        S0, S18, S0
3C0C96:  ADD.W           R1, R1, R10,LSL#2
3C0C9A:  IT LT
3C0C9C:  VMOVLT.F32      S4, S2
3C0CA0:  VMRS            APSR_nzcv, FPSCR
3C0CA4:  VLDR            S2, =0.04
3C0CA8:  VCMPE.F32       S0, S2
3C0CAC:  IT GT
3C0CAE:  VMOVGT.F32      S16, S4
3C0CB2:  VLDR            S30, [R1,#0x34]
3C0CB6:  VMRS            APSR_nzcv, FPSCR
3C0CBA:  STR             R4, [SP,#0xE8+var_9C]
3C0CBC:  STR             R5, [SP,#0xE8+var_D4]
3C0CBE:  BGE.W           loc_3C0FF8
3C0CC2:  LDR.W           R0, [R11,#0x5A0]
3C0CC6:  CMP             R0, #9
3C0CC8:  BNE             loc_3C0CD4
3C0CCA:  LDRB.W          R0, [R11,#0x818]
3C0CCE:  CMP             R0, #4
3C0CD0:  BCC.W           loc_3C0FF8
3C0CD4:  LDR.W           R0, [R11,#0x5A4]
3C0CD8:  CMP             R0, #3
3C0CDA:  BEQ.W           loc_3C0FF8
3C0CDE:  CMP             R0, #4
3C0CE0:  ITT EQ
3C0CE2:  LDRBEQ.W        R0, [R11,#0x974]
3C0CE6:  CMPEQ           R0, #0
3C0CE8:  BEQ.W           loc_3C0FF8
3C0CEC:  LDR.W           R0, [R11,#0x14]
3C0CF0:  MOVS            R1, #0
3C0CF2:  STRD.W          R1, R1, [SP,#0xE8+var_80]
3C0CF6:  MOV.W           R1, #0x3F800000
3C0CFA:  ADD             R4, SP, #0xE8+iptr
3C0CFC:  STR             R1, [SP,#0xE8+var_78]
3C0CFE:  ADD.W           R1, R0, #0x10; CVector *
3C0D02:  ADD             R2, SP, #0xE8+var_80
3C0D04:  MOV             R0, R4; CVector *
3C0D06:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C0D0A:  MOV             R0, R4; this
3C0D0C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C0D10:  LDR.W           R0, [R11,#0x14]
3C0D14:  ADD             R5, SP, #0xE8+var_80
3C0D16:  MOV             R1, R4; CVector *
3C0D18:  ADD.W           R2, R0, #0x10
3C0D1C:  MOV             R0, R5; CVector *
3C0D1E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C0D22:  MOV             R0, R5; this
3C0D24:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C0D28:  LDR             R0, [SP,#0xE8+var_9C]
3C0D2A:  VLDR            S0, [SP,#0xE8+var_80]
3C0D2E:  VLDR            S8, [R6]
3C0D32:  VLDR            S6, [R0]
3C0D36:  VLDR            S2, [SP,#0xE8+var_80+4]
3C0D3A:  VMUL.F32        S0, S8, S0
3C0D3E:  LDR             R0, [SP,#0xE8+var_94]
3C0D40:  VMUL.F32        S2, S6, S2
3C0D44:  VLDR            S4, [SP,#0xE8+var_78]
3C0D48:  VLDR            S6, [R0]
3C0D4C:  VMUL.F32        S4, S6, S4
3C0D50:  VADD.F32        S0, S0, S2
3C0D54:  VADD.F32        S0, S0, S4
3C0D58:  VCMPE.F32       S0, #0.0
3C0D5C:  VMRS            APSR_nzcv, FPSCR
3C0D60:  BLE.W           loc_3C0FF8
3C0D64:  MOV             R0, R11; this
3C0D66:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3C0D6A:  MOV             R4, R0
3C0D6C:  LDR.W           R0, [R11]
3C0D70:  LDR.W           R1, [R0,#0xD8]
3C0D74:  MOV             R0, R11
3C0D76:  BLX             R1
3C0D78:  VLDR            S24, [R4,#4]
3C0D7C:  VMOV            S23, R0
3C0D80:  VLDR            S22, [R4,#0xC]
3C0D84:  VMOV            R1, S24
3C0D88:  LDR             R3, [SP,#0xE8+var_CC]
3C0D8A:  VMOV            R2, S22
3C0D8E:  LDR.W           R4, [R11,#0x14]
3C0D92:  VLDR            S0, [R3]
3C0D96:  ADD.W           R3, R4, #0x30 ; '0'
3C0D9A:  CMP             R4, #0
3C0D9C:  IT EQ
3C0D9E:  ADDEQ.W         R3, R11, #4
3C0DA2:  VLDR            S2, [R3,#8]
3C0DA6:  VSUB.F32        S30, S0, S2
3C0DAA:  EOR.W           R1, R1, #0x80000000; x
3C0DAE:  MOV             R0, R2; y
3C0DB0:  BLX             atan2f
3C0DB4:  VMOV            S21, R0
3C0DB8:  VLDR            S18, [R8,#0x94]
3C0DBC:  CBZ             R4, loc_3C0E18
3C0DBE:  LDRD.W          R0, R1, [R4,#0x10]; x
3C0DC2:  EOR.W           R0, R0, #0x80000000; y
3C0DC6:  BLX             atan2f
3C0DCA:  VMOV            S0, R0
3C0DCE:  B               loc_3C0E1C
3C0DD0:  ADD.W           R0, R8, #0x1C0
3C0DD4:  VLDR            S4, [R8,#0x1B0]
3C0DD8:  VLDR            S2, [R8,#0x1B4]
3C0DDC:  ADD.W           R5, R8, #0x1C4
3C0DE0:  VLDR            S0, [R8,#0x1B8]
3C0DE4:  ADD.W           R4, R8, #0x16C
3C0DE8:  STR             R0, [SP,#0xE8+var_A0]
3C0DEA:  ADD.W           R0, R8, #0x1BC
3C0DEE:  STR             R0, [SP,#0xE8+var_A4]
3C0DF0:  ADD.W           R0, R8, #0x170
3C0DF4:  STR             R0, [SP,#0xE8+var_94]
3C0DF6:  ADD.W           R0, R8, #0x1B8
3C0DFA:  STR             R0, [SP,#0xE8+var_DC]
3C0DFC:  ADD.W           R0, R8, #0x1B4
3C0E00:  STR             R0, [SP,#0xE8+var_E0]
3C0E02:  ADD             R0, SP, #0xE8+var_90
3C0E04:  ORR.W           R0, R0, #4
3C0E08:  ADD.W           R3, R8, #0x168
3C0E0C:  STR             R0, [SP,#0xE8+var_E4]
3C0E0E:  VLDR            S18, [SP,#0xE8+var_90]
3C0E12:  VLDR            S26, [SP,#0xE8+var_90+4]
3C0E16:  B               loc_3C0A3A
3C0E18:  VLDR            S0, [R11,#0x10]
3C0E1C:  VADD.F32        S0, S0, S26
3C0E20:  VADD.F32        S30, S23, S30
3C0E24:  VSUB.F32        S0, S18, S0
3C0E28:  VMOV            R0, S0; x
3C0E2C:  BLX             sinf
3C0E30:  BIC.W           R0, R0, #0x80000000; x
3C0E34:  BLX             asinf
3C0E38:  VMOV            S0, R0
3C0E3C:  VCMPE.F32       S0, S21
3C0E40:  VMRS            APSR_nzcv, FPSCR
3C0E44:  BLE             loc_3C0E90
3C0E46:  VLDR            S4, =1.5708
3C0E4A:  VLDR            S2, =1.2
3C0E4E:  VSUB.F32        S0, S4, S0
3C0E52:  VADD.F32        S22, S22, S2
3C0E56:  VLDR            S2, =0.0
3C0E5A:  VMAX.F32        D0, D0, D1
3C0E5E:  B               loc_3C0E98
3C0E60:  DCFS -1.5708
3C0E64:  DCFS -3.1416
3C0E68:  DCFS 6.2832
3C0E6C:  DCFS 0.02
3C0E70:  DCFS 3.1416
3C0E74:  DCFS -6.2832
3C0E78:  DCFS 0.04
3C0E7C:  DCFS 1.5708
3C0E80:  DCFS 1.2
3C0E84:  DCFS 0.0
3C0E88:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C0298
3C0E8C:  DCD CARCAM_SET_ptr - 0x3C02C2
3C0E90:  VMOV.F32        S2, #1.5
3C0E94:  VSUB.F32        S22, S2, S24
3C0E98:  VMOV            R0, S0; x
3C0E9C:  BLX             cosf
3C0EA0:  VMOV            S0, R0
3C0EA4:  VLDR            S2, =1.2
3C0EA8:  VMOV            R0, S30; y
3C0EAC:  VDIV.F32        S0, S22, S0
3C0EB0:  VMUL.F32        S0, S0, S2
3C0EB4:  VMOV            R1, S0; x
3C0EB8:  BLX             atan2f
3C0EBC:  VMOV            S30, R0
3C0EC0:  CBZ             R4, loc_3C0EE4
3C0EC2:  VLDR            S24, [R4,#0x10]
3C0EC6:  VLDR            S22, [R4,#0x14]
3C0ECA:  VMOV            R0, S24
3C0ECE:  VMOV            R1, S22; x
3C0ED2:  EOR.W           R0, R0, #0x80000000; y
3C0ED6:  BLX             atan2f
3C0EDA:  VMOV            S0, R0
3C0EDE:  ADD.W           R5, R4, #0x10
3C0EE2:  B               loc_3C0EF4
3C0EE4:  MOVS            R0, #0x14
3C0EE6:  MOVS            R5, #0x10
3C0EE8:  VLDR            S22, [R0]
3C0EEC:  VLDR            S24, [R5]
3C0EF0:  VLDR            S0, [R11,#0x10]
3C0EF4:  VADD.F32        S0, S0, S26
3C0EF8:  VSUB.F32        S0, S18, S0
3C0EFC:  VMOV            R0, S0; x
3C0F00:  BLX             cosf
3C0F04:  VMUL.F32        S0, S22, S22
3C0F08:  VLDR            S21, [R5,#8]
3C0F0C:  VMUL.F32        S2, S24, S24
3C0F10:  VMOV            R2, S21
3C0F14:  VMOV            S23, R0
3C0F18:  VADD.F32        S0, S2, S0
3C0F1C:  VSQRT.F32       S0, S0
3C0F20:  MOV             R0, R2; y
3C0F22:  VMOV            R1, S0; x
3C0F26:  BLX             atan2f
3C0F2A:  VMOV            S0, R0
3C0F2E:  LDR.W           R0, [R11,#0x5A0]
3C0F32:  VMUL.F32        S0, S23, S0
3C0F36:  CMP             R0, #0
3C0F38:  VADD.F32        S30, S30, S0
3C0F3C:  BNE             loc_3C0FF8
3C0F3E:  LDRB.W          R0, [R11,#0x974]
3C0F42:  CMP             R0, #2
3C0F44:  BCC             loc_3C0FF8
3C0F46:  VLDR            S0, [R11,#0x54]
3C0F4A:  VLDR            S2, [R11,#0x58]
3C0F4E:  VMUL.F32        S0, S24, S0
3C0F52:  VLDR            S4, [R11,#0x5C]
3C0F56:  VMUL.F32        S2, S22, S2
3C0F5A:  VMUL.F32        S4, S21, S4
3C0F5E:  VADD.F32        S0, S0, S2
3C0F62:  VLDR            S2, =0.05
3C0F66:  VADD.F32        S0, S0, S4
3C0F6A:  VABS.F32        S0, S0
3C0F6E:  VCMPE.F32       S0, S2
3C0F72:  VMRS            APSR_nzcv, FPSCR
3C0F76:  BGE             loc_3C0FF8
3C0F78:  CBZ             R4, loc_3C0FA8
3C0F7A:  VMOV            R0, S24
3C0F7E:  VMOV            R1, S22; x
3C0F82:  EOR.W           R0, R0, #0x80000000; y
3C0F86:  BLX             atan2f
3C0F8A:  VMOV            S0, R0
3C0F8E:  B               loc_3C0FAC
3C0F90:  MOV.W           R9, #2
3C0F94:  B.W             loc_3C033A
3C0F98:  MOV.W           R9, #0
3C0F9C:  CMP             R1, #5
3C0F9E:  IT EQ
3C0FA0:  MOVEQ.W         R9, #4
3C0FA4:  B.W             loc_3C033A
3C0FA8:  VLDR            S0, [R11,#0x10]
3C0FAC:  VADD.F32        S0, S0, S26
3C0FB0:  VLDR            S2, =1.5708
3C0FB4:  VSUB.F32        S0, S18, S0
3C0FB8:  VADD.F32        S0, S0, S2
3C0FBC:  VMOV            R0, S0; x
3C0FC0:  BLX             cosf
3C0FC4:  VLDR            S0, [R4]
3C0FC8:  VMOV            S18, R0
3C0FCC:  VLDR            S2, [R4,#4]
3C0FD0:  VMUL.F32        S0, S0, S0
3C0FD4:  LDR             R2, [R4,#8]
3C0FD6:  VMUL.F32        S2, S2, S2
3C0FDA:  MOV             R0, R2; y
3C0FDC:  VADD.F32        S0, S0, S2
3C0FE0:  VSQRT.F32       S0, S0
3C0FE4:  VMOV            R1, S0; x
3C0FE8:  BLX             atan2f
3C0FEC:  VMOV            S0, R0
3C0FF0:  VMUL.F32        S0, S18, S0
3C0FF4:  VADD.F32        S30, S30, S0
3C0FF8:  VSUB.F32        S0, S20, S31
3C0FFC:  MOV             R10, R9
3C0FFE:  VMOV.F32        S25, S30
3C1002:  STR             R6, [SP,#0xE8+var_BC]
3C1004:  VCMPE.F32       S0, S30
3C1008:  VMRS            APSR_nzcv, FPSCR
3C100C:  BGT             loc_3C1034
3C100E:  LDR             R0, =(CARCAM_SET_ptr - 0x3C101A)
3C1010:  VMOV.F32        S25, S0
3C1014:  LDR             R1, [SP,#0xE8+var_98]
3C1016:  ADD             R0, PC; CARCAM_SET_ptr
3C1018:  LDR             R0, [R0]; CARCAM_SET
3C101A:  ADD.W           R0, R0, R1,LSL#2
3C101E:  VLDR            S2, [R0,#0x38]
3C1022:  VNEG.F32        S2, S2
3C1026:  VCMPE.F32       S0, S2
3C102A:  VMRS            APSR_nzcv, FPSCR
3C102E:  IT LT
3C1030:  VMOVLT.F32      S25, S2
3C1034:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C103C)
3C1036:  LDR             R2, [SP,#0xE8+var_98]
3C1038:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C103A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C103C:  VLDR            S20, [R0]
3C1040:  LDR             R0, =(CARCAM_SET_ptr - 0x3C104A)
3C1042:  VMOV            R1, S20; y
3C1046:  ADD             R0, PC; CARCAM_SET_ptr
3C1048:  LDR             R0, [R0]; CARCAM_SET
3C104A:  ADD.W           R4, R0, R2,LSL#2
3C104E:  LDR             R0, [R4,#0x14]; x
3C1050:  BLX             powf
3C1054:  LDR.W           R9, [SP,#0xE8+var_C0]
3C1058:  MOV             R6, R0
3C105A:  MOVS            R1, #0; CPed *
3C105C:  MOVS            R2, #0; bool *
3C105E:  VLDR            S22, [R8,#0x84]
3C1062:  MOV             R0, R9; this
3C1064:  VLDR            S26, [R4,#0x18]
3C1068:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C106C:  MOV             R5, R0
3C106E:  MOV             R0, R9; this
3C1070:  MOVS            R1, #0; CPed *
3C1072:  MOVS            R2, #0; bool *
3C1074:  BLX             j__ZN4CPad15AimWeaponUpDownEP4CPedPb; CPad::AimWeaponUpDown(CPed *,bool *)
3C1078:  VMOV            S0, R0; this
3C107C:  VLDR            S2, =1.2
3C1080:  VLDR            S18, =0.0006
3C1084:  VCVT.F32.S32    S0, S0
3C1088:  VLDR            S24, =0.0
3C108C:  VMUL.F32        S0, S0, S2
3C1090:  VMUL.F32        S21, S0, S18
3C1094:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C1098:  CMP             R0, #2
3C109A:  IT EQ
3C109C:  VMOVEQ.F32      S21, S24
3C10A0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C10A4:  CMP             R0, #1
3C10A6:  VSTR            S31, [SP,#0xE8+var_B8]
3C10AA:  VSTR            S30, [SP,#0xE8+var_D0]
3C10AE:  BNE             loc_3C1140
3C10B0:  MOV             R0, R9; this
3C10B2:  MOVS            R1, #0; CPed *
3C10B4:  MOVS            R2, #0; bool *
3C10B6:  BLX             j__ZN4CPad18AimWeaponLeftRightEP4CPedPb; CPad::AimWeaponLeftRight(CPed *,bool *)
3C10BA:  MOV             R4, R0
3C10BC:  MOV             R0, R9; this
3C10BE:  MOVS            R1, #0; CPed *
3C10C0:  MOVS            R2, #0; bool *
3C10C2:  BLX             j__ZN4CPad15AimWeaponUpDownEP4CPedPb; CPad::AimWeaponUpDown(CPed *,bool *)
3C10C6:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x3C10D0)
3C10C8:  VLDR            S4, =100.0
3C10CC:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
3C10CE:  VLDR            S10, =0.0005
3C10D2:  VLDR            S6, =80.0
3C10D6:  LDR             R1, [R1]; MobileSettings::settings ...
3C10D8:  VLDR            S0, [R1,#0x328]
3C10DC:  VLDR            S2, [R1,#0x348]
3C10E0:  VCVT.F32.S32    S2, S2
3C10E4:  VCVT.F32.S32    S0, S0
3C10E8:  VLDR            S8, [R8,#0x8C]
3C10EC:  VDIV.F32        S2, S2, S4
3C10F0:  VDIV.F32        S0, S0, S4
3C10F4:  VLDR            S4, =0.0004
3C10F8:  VMUL.F32        S0, S0, S10
3C10FC:  VMUL.F32        S2, S2, S4
3C1100:  VDIV.F32        S4, S8, S6
3C1104:  VMOV            S8, R0
3C1108:  VLDR            S6, =0.000175
3C110C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C111A)
3C110E:  VCVT.F32.S32    S8, S8
3C1112:  VADD.F32        S2, S2, S6
3C1116:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C1118:  VADD.F32        S0, S0, S6
3C111C:  VMOV            S6, R4
3C1120:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C1122:  VMUL.F32        S2, S2, S8
3C1126:  VMUL.F32        S0, S6, S0
3C112A:  VMUL.F32        S2, S4, S2
3C112E:  VMUL.F32        S0, S4, S0
3C1132:  VLDR            S4, [R0]
3C1136:  VMUL.F32        S21, S4, S2
3C113A:  VNMUL.F32       S0, S4, S0
3C113E:  B               loc_3C1150
3C1140:  VLDR            S0, =-1.6
3C1144:  VMOV            S2, R5
3C1148:  VMUL.F32        S0, S2, S0
3C114C:  VMUL.F32        S0, S0, S18
3C1150:  VMOV.F32        S2, #1.0
3C1154:  LDRSH.W         R0, [R11,#0x26]
3C1158:  MOVS            R5, #1
3C115A:  MOV             R9, R10
3C115C:  CMP.W           R0, #0x208
3C1160:  VMAX.F32        D15, D14, D1
3C1164:  BLT.W           loc_3C13C6
3C1168:  SUB.W           R1, R0, #0x208; switch 45 cases
3C116C:  CMP             R1, #0x2C ; ','
3C116E:  BHI.W           def_3C1176; jumptable 003C1176 default case
3C1172:  LDR.W           R10, [SP,#0xE8+var_98]
3C1176:  TBH.W           [PC,R1,LSL#1]; switch jump
3C117A:  DCW 0xA1; jump table for switch statement
3C117C:  DCW 0x2B4
3C117E:  DCW 0x2B4
3C1180:  DCW 0x2B4
3C1182:  DCW 0xA1
3C1184:  DCW 0xA1
3C1186:  DCW 0x2B4
3C1188:  DCW 0x2B4
3C118A:  DCW 0x2B4
3C118C:  DCW 0x2B4
3C118E:  DCW 0xA1
3C1190:  DCW 0xA1
3C1192:  DCW 0x2B4
3C1194:  DCW 0x2B4
3C1196:  DCW 0x2B4
3C1198:  DCW 0x2B4
3C119A:  DCW 0x2B4
3C119C:  DCW 0x2B4
3C119E:  DCW 0x2B4
3C11A0:  DCW 0x2B4
3C11A2:  DCW 0x2B4
3C11A4:  DCW 0x2B4
3C11A6:  DCW 0x2B4
3C11A8:  DCW 0x2B4
3C11AA:  DCW 0x2B4
3C11AC:  DCW 0x2B4
3C11AE:  DCW 0x2B4
3C11B0:  DCW 0x2B4
3C11B2:  DCW 0x2B4
3C11B4:  DCW 0x2B4
3C11B6:  DCW 0x2B4
3C11B8:  DCW 0x2B4
3C11BA:  DCW 0x2B4
3C11BC:  DCW 0x2B4
3C11BE:  DCW 0x2B4
3C11C0:  DCW 0x2B4
3C11C2:  DCW 0x2B4
3C11C4:  DCW 0x2B4
3C11C6:  DCW 0x2B4
3C11C8:  DCW 0x2B4
3C11CA:  DCW 0x2B4
3C11CC:  DCW 0x2B4
3C11CE:  DCW 0x2B4
3C11D0:  DCW 0x2B4
3C11D2:  DCW 0xA1
3C11D4:  DCD TheCamera_ptr - 0x3C02E6
3C11D8:  DCD TheCamera_ptr - 0x3C034A
3C11DC:  DCD CARCAM_SET_ptr - 0x3C034C
3C11E0:  DCD unk_616AE0 - 0x3C036E
3C11E4:  DCD ZmTwoAlphaOffset_ptr - 0x3C0388
3C11E8:  DCD TheCamera_ptr - 0x3C0392
3C11EC:  DCD off_6679B4 - 0x3C03A4
3C11F0:  DCD dword_952E04 - 0x3C03F2
3C11F4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C040A
3C11F8:  DCD dword_952E04 - 0x3C041A
3C11FC:  DCD dword_952E04 - 0x3C0466
3C1200:  DCD dword_952E04 - 0x3C0522
3C1204:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C0542
3C1208:  DCD dword_952E04 - 0x3C0552
3C120C:  DCD dword_952E04 - 0x3C0564
3C1210:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C05A6
3C1214:  DCD dword_952E04 - 0x3C05BA
3C1218:  DCD TheCamera_ptr - 0x3C05DC
3C121C:  DCD CARCAM_SET_ptr - 0x3C05DE
3C1220:  DCD CARCAM_SET_ptr - 0x3C0616
3C1224:  DCD fTestShiftHeliCamTarget_ptr - 0x3C0698
3C1228:  DCD TheCamera_ptr - 0x3C06F2
3C122C:  DCD CARCAM_SET_ptr - 0x3C070A
3C1230:  DCD CAR_FOV_START_SPEED_ptr - 0x3C07B4
3C1234:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C07D6
3C1238:  DCD CAR_FOV_FADE_MULT_ptr - 0x3C0808
3C123C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C080E
3C1240:  DCD currentPad_ptr - 0x3C087E
3C1244:  DCD TheCamera_ptr - 0x3C0898
3C1248:  DCD TheCamera_ptr - 0x3C08B2
3C124C:  DCD TheCamera_ptr - 0x3C0916
3C1250:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3C09D0
3C1254:  DCD CARCAM_SET_ptr - 0x3C0B50
3C1258:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C0B78
3C125C:  DCD CARCAM_SET_ptr - 0x3C0C8E
3C1260:  DCFS 0.05
3C1264:  DCD CARCAM_SET_ptr - 0x3C101A
3C1268:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C103C
3C126C:  DCD CARCAM_SET_ptr - 0x3C104A
3C1270:  DCFS 0.0006
3C1274:  DCD _ZN14MobileSettings8settingsE_ptr - 0x3C10D0
3C1278:  DCFS 100.0
3C127C:  DCFS 0.0005
3C1280:  DCFS 80.0
3C1284:  DCFS 0.0004
3C1288:  DCFS 0.000175
3C128C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x3C111A
3C1290:  DCFS -1.6
3C1294:  DCFS -0.1
3C1298:  DCFS 0.0035
3C129C:  DCFS 0.0
3C12A0:  DCFS 0.0001
3C12A4:  DCFS 3.1416
3C12A8:  DCFS 50.0
3C12AC:  DCFS 1000.0
3C12B0:  DCFS -6.2832
3C12B4:  DCFS 0.02
3C12B8:  DCFS 0.015
3C12BC:  LDR.W           R0, =(dword_6A9F18 - 0x3C12CC); jumptable 003C1176 cases 520,524,525,530,531,564
3C12C0:  VMOV.F32        S28, S24
3C12C4:  VMOV.F32        S2, #0.5
3C12C8:  ADD             R0, PC; dword_6A9F18
3C12CA:  VMOV            S23, R6
3C12CE:  LDR             R0, [R0]; this
3C12D0:  CMP             R0, #3
3C12D2:  IT EQ
3C12D4:  VMOVEQ.F32      S28, S21
3C12D8:  VMOV.F32        S21, S24
3C12DC:  VCMPE.F32       S28, #0.0
3C12E0:  IT EQ
3C12E2:  VMOVEQ.F32      S21, S0
3C12E6:  VMRS            APSR_nzcv, FPSCR
3C12EA:  VMUL.F32        S2, S28, S2
3C12EE:  IT GT
3C12F0:  VMOVGT.F32      S28, S2
3C12F4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3C12F8:  CMP             R0, #2
3C12FA:  BNE             loc_3C1308
3C12FC:  LDR             R0, [SP,#0xE8+var_C0]
3C12FE:  LDRH.W          R0, [R0,#0x110]
3C1302:  CMP             R0, #0
3C1304:  BEQ.W           loc_3C15D6
3C1308:  MOVS            R4, #0
3C130A:  VMOV.F32        S29, S25
3C130E:  VMOV.F32        S0, #1.0
3C1312:  LDR.W           R0, [R11,#0x468]
3C1316:  VSUB.F32        S18, S25, S22
3C131A:  VSUB.F32        S22, S27, S19
3C131E:  CMP             R0, #0
3C1320:  VSUB.F32        S23, S0, S23
3C1324:  BEQ             loc_3C1396
3C1326:  LDR.W           R0, [R0,#0x440]
3C132A:  ADDS            R0, #4; this
3C132C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3C1330:  CBZ             R0, loc_3C1396
3C1332:  LDR.W           R0, [R11,#0x468]
3C1336:  LDR.W           R0, [R0,#0x440]
3C133A:  ADDS            R0, #4; this
3C133C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3C1340:  LDR             R1, [R0]
3C1342:  LDR             R1, [R1,#0x14]
3C1344:  BLX             R1
3C1346:  MOVW            R1, #0x51D
3C134A:  CMP             R0, R1
3C134C:  BNE             loc_3C1396
3C134E:  LDR.W           R0, [R11,#0x468]
3C1352:  LDR.W           R0, [R0,#0x440]
3C1356:  ADDS            R0, #4; this
3C1358:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
3C135C:  LDRB.W          R0, [R0,#0x2D]
3C1360:  LSLS            R0, R0, #0x1F
3C1362:  BEQ             loc_3C1396
3C1364:  VLDR            S0, =-0.1
3C1368:  VMOV.F32        S28, S24
3C136C:  VLDR            S2, [SP,#0xE8+var_D0]
3C1370:  VADD.F32        S0, S2, S0
3C1374:  VLDR            S2, [R8,#0x84]
3C1378:  VCMPE.F32       S2, S0
3C137C:  VMRS            APSR_nzcv, FPSCR
3C1380:  BGE             loc_3C1396
3C1382:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C138E)
3C1386:  VLDR            S0, =0.0035
3C138A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C138C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C138E:  VLDR            S2, [R0]
3C1392:  VMUL.F32        S28, S2, S0
3C1396:  VDIV.F32        S0, S22, S30
3C139A:  CMP             R5, #1
3C139C:  VMOV.F32        S24, S26
3C13A0:  VMUL.F32        S26, S20, S26
3C13A4:  VMUL.F32        S18, S23, S18
3C13A8:  BNE             loc_3C1422
3C13AA:  LDR.W           R0, =(dword_6A9F20 - 0x3C13B6)
3C13AE:  VLDR            S8, [SP,#0xE8+var_B8]
3C13B2:  ADD             R0, PC; dword_6A9F20
3C13B4:  LDR             R0, [R0]
3C13B6:  CMP             R0, #0x12
3C13B8:  BNE             loc_3C13E6
3C13BA:  LDR.W           R0, =(byte_952E08 - 0x3C13C2)
3C13BE:  ADD             R0, PC; byte_952E08
3C13C0:  LDRB            R0, [R0]
3C13C2:  CBZ             R0, loc_3C13F0
3C13C4:  B               loc_3C1418
3C13C6:  CMP.W           R0, #0x196
3C13CA:  BEQ.W           loc_3C16F6
3C13CE:  LDR.W           R10, [SP,#0xE8+var_98]
3C13D2:  MOVW            R1, #0x1BB
3C13D6:  CMP             R0, R1
3C13D8:  BEQ.W           loc_3C12BC; jumptable 003C1176 cases 520,524,525,530,531,564
3C13DC:  CMP.W           R0, #0x1E6
3C13E0:  BEQ.W           loc_3C12BC; jumptable 003C1176 cases 520,524,525,530,531,564
3C13E4:  B               loc_3C16E2; jumptable 003C1176 cases 521-523,526-529,532-563
3C13E6:  LDR.W           R0, =(byte_952E08 - 0x3C13F0)
3C13EA:  MOVS            R1, #0
3C13EC:  ADD             R0, PC; byte_952E08
3C13EE:  STRB            R1, [R0]
3C13F0:  VLDR            S2, [R8,#0x84]
3C13F4:  VADD.F32        S4, S8, S2
3C13F8:  VABS.F32        S6, S4
3C13FC:  VLDR            S4, =0.05
3C1400:  VCMPE.F32       S6, S4
3C1404:  VMRS            APSR_nzcv, FPSCR
3C1408:  BLE             loc_3C1418
3C140A:  VNEG.F32        S6, S8
3C140E:  VSUB.F32        S2, S6, S2
3C1412:  VMUL.F32        S28, S2, S4
3C1416:  B               loc_3C1422
3C1418:  LDR.W           R0, =(byte_952E08 - 0x3C1422)
3C141C:  MOVS            R1, #1
3C141E:  ADD             R0, PC; byte_952E08
3C1420:  STRB            R1, [R0]
3C1422:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C142E)
3C1426:  LDR.W           R2, =(CARCAM_SET_ptr - 0x3C1430)
3C142A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C142C:  ADD             R2, PC; CARCAM_SET_ptr
3C142E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C1430:  VLDR            S30, [R0]
3C1434:  LDR             R0, [R2]; CARCAM_SET
3C1436:  VMOV            R1, S30; y
3C143A:  ADD.W           R0, R0, R10,LSL#2
3C143E:  VLDR            S23, [R0,#0x30]
3C1442:  VLDR            S31, [R0,#0x24]
3C1446:  VMUL.F32        S21, S21, S23
3C144A:  LDR             R0, [R0,#0x20]; x
3C144C:  VADD.F32        S22, S0, S21
3C1450:  BLX             powf
3C1454:  VMOV.F32        S0, S31
3C1458:  VCMPE.F32       S22, S31
3C145C:  VMOV            S25, R0
3C1460:  VMRS            APSR_nzcv, FPSCR
3C1464:  BGT             loc_3C147C
3C1466:  VNEG.F32        S2, S31
3C146A:  VMOV.F32        S0, S22
3C146E:  VCMPE.F32       S22, S2
3C1472:  VMRS            APSR_nzcv, FPSCR
3C1476:  IT LT
3C1478:  VMOVLT.F32      S0, S2
3C147C:  VMOV.F32        S2, #1.0
3C1480:  VLDR            S4, =0.0
3C1484:  VMIN.F32        D9, D9, D13
3C1488:  VLDR            S27, =0.0001
3C148C:  VSUB.F32        S22, S2, S25
3C1490:  VLDR            S2, [R8,#0x98]
3C1494:  VMUL.F32        S2, S25, S2
3C1498:  VMUL.F32        S0, S22, S0
3C149C:  VADD.F32        S0, S0, S2
3C14A0:  VABS.F32        S2, S0
3C14A4:  VCMPE.F32       S2, S27
3C14A8:  VMRS            APSR_nzcv, FPSCR
3C14AC:  IT LT
3C14AE:  VMOVLT.F32      S0, S4
3C14B2:  CMP             R4, #1
3C14B4:  VSTR            S0, [R8,#0x98]
3C14B8:  BNE             loc_3C1550
3C14BA:  LDR.W           R0, =(byte_952E10 - 0x3C14C6)
3C14BE:  VLDR            S26, =3.1416
3C14C2:  ADD             R0, PC; byte_952E10
3C14C4:  LDRB            R0, [R0]
3C14C6:  DMB.W           ISH
3C14CA:  TST.W           R0, #1
3C14CE:  BNE             loc_3C14F2
3C14D0:  LDR.W           R0, =(byte_952E10 - 0x3C14D8)
3C14D4:  ADD             R0, PC; byte_952E10 ; __guard *
3C14D6:  BLX             j___cxa_guard_acquire
3C14DA:  CBZ             R0, loc_3C14F2
3C14DC:  LDR.W           R1, =(dword_952E0C - 0x3C14E8)
3C14E0:  LDR.W           R0, =(byte_952E10 - 0x3C14EE)
3C14E4:  ADD             R1, PC; dword_952E0C
3C14E6:  LDR.W           R2, [R8,#0x94]
3C14EA:  ADD             R0, PC; byte_952E10 ; __guard *
3C14EC:  STR             R2, [R1]
3C14EE:  BLX             j___cxa_guard_release
3C14F2:  LDRB.W          R0, [R8,#0xB]
3C14F6:  VLDR            S30, [SP,#0xE8+var_D0]
3C14FA:  CBZ             R0, loc_3C1508
3C14FC:  LDR.W           R0, =(dword_952E0C - 0x3C1508)
3C1500:  LDR.W           R1, [R8,#0x94]
3C1504:  ADD             R0, PC; dword_952E0C
3C1506:  STR             R1, [R0]
3C1508:  MOV.W           R0, #0xFFFFFFFF; int
3C150C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C1510:  CBZ             R0, loc_3C155E
3C1512:  MOV.W           R0, #0xFFFFFFFF; int
3C1516:  MOVS            R1, #0; bool
3C1518:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C151C:  CBZ             R0, loc_3C155E
3C151E:  LDR.W           R0, [R0,#0x5A4]
3C1522:  SUBS            R0, #3
3C1524:  CMP             R0, #2
3C1526:  BCC.W           loc_3C1768
3C152A:  LDR.W           R0, =(currentPad_ptr - 0x3C1532)
3C152E:  ADD             R0, PC; currentPad_ptr
3C1530:  LDR             R0, [R0]; currentPad
3C1532:  LDR             R0, [R0]
3C1534:  CMP             R0, #0
3C1536:  ITT EQ
3C1538:  MOVEQ           R0, #0; this
3C153A:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C153E:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C1542:  CMP             R0, #0
3C1544:  BNE.W           loc_3C1768
3C1548:  LDR.W           R0, =(TheCamera_ptr - 0x3C1550)
3C154C:  ADD             R0, PC; TheCamera_ptr
3C154E:  B               loc_3C1564
3C1550:  VMUL.F32        S21, S0, S30
3C1554:  VLDR            S26, =3.1416
3C1558:  VLDR            S30, [SP,#0xE8+var_D0]
3C155C:  B               loc_3C1768
3C155E:  LDR.W           R0, =(TheCamera_ptr - 0x3C1566)
3C1562:  ADD             R0, PC; TheCamera_ptr
3C1564:  LDR             R0, [R0]; TheCamera
3C1566:  LDRB            R0, [R0,#(word_951FC2 - 0x951FA8)]
3C1568:  CMP             R0, #0
3C156A:  BNE.W           loc_3C1768
3C156E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C157E)
3C1572:  VMOV.F32        S6, #1.0
3C1576:  VLDR            S0, =50.0
3C157A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C157C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C157E:  VLDR            S2, [R0]
3C1582:  LDR.W           R0, =(dword_952E0C - 0x3C158E)
3C1586:  VDIV.F32        S0, S2, S0
3C158A:  ADD             R0, PC; dword_952E0C
3C158C:  VLDR            S2, =1000.0
3C1590:  VMUL.F32        S0, S0, S2
3C1594:  VCVT.U32.F32    S0, S0
3C1598:  VCVT.F32.U32    S0, S0
3C159C:  VLDR            S4, [R8,#0x98]
3C15A0:  VDIV.F32        S0, S0, S2
3C15A4:  VLDR            S2, =100.0
3C15A8:  VMUL.F32        S2, S0, S2
3C15AC:  VMIN.F32        D1, D1, D3
3C15B0:  VMUL.F32        S2, S4, S2
3C15B4:  VLDR            S4, [R0]
3C15B8:  VADD.F32        S2, S21, S2
3C15BC:  VADD.F32        S2, S4, S2
3C15C0:  VCMPE.F32       S2, S26
3C15C4:  VSTR            S2, [R0]
3C15C8:  VMRS            APSR_nzcv, FPSCR
3C15CC:  BLE.W           loc_3C16FC
3C15D0:  VLDR            S4, =-6.2832
3C15D4:  B               loc_3C170E
3C15D6:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C15E2)
3C15DA:  VLDR            S4, =100.0
3C15DE:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C15E0:  VLDR            S6, =0.02
3C15E4:  VLDR            S8, =0.0005
3C15E8:  LDR             R0, [R0]; MobileSettings::settings ...
3C15EA:  ADD.W           R1, R0, #0x408
3C15EE:  VLDR            S0, [R0,#0x3E8]
3C15F2:  VCVT.F32.S32    S0, S0
3C15F6:  VLDR            S2, [R1]
3C15FA:  LDR.W           R1, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3C160A)
3C15FE:  VCVT.F32.S32    S2, S2
3C1602:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3C1606:  ADD             R1, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3C1608:  CMP             R0, #0
3C160A:  MOV.W           R0, #0xFFFFFFFF; int
3C160E:  LDR             R1, [R1]; CPad::NewMouseControllerState ...
3C1610:  VDIV.F32        S0, S0, S4
3C1614:  VDIV.F32        S2, S2, S4
3C1618:  VLDR            S4, =0.015
3C161C:  VMUL.F32        S0, S0, S6
3C1620:  VLDR            S28, [R1,#0x10]
3C1624:  VMUL.F32        S2, S2, S4
3C1628:  VLDR            S4, [R1,#0xC]
3C162C:  VNEG.F32        S6, S28
3C1630:  VNEG.F32        S21, S4
3C1634:  VADD.F32        S18, S0, S8
3C1638:  VADD.F32        S0, S2, S8
3C163C:  IT EQ
3C163E:  VMOVEQ.F32      S28, S6
3C1642:  VSTR            S0, [SP,#0xE8+var_C0]
3C1646:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C164A:  CBZ             R0, loc_3C1680
3C164C:  MOV.W           R0, #0xFFFFFFFF; int
3C1650:  MOVS            R1, #0; bool
3C1652:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C1656:  CBZ             R0, loc_3C1680
3C1658:  LDR.W           R0, [R0,#0x5A4]
3C165C:  SUBS            R0, #3
3C165E:  CMP             R0, #2
3C1660:  BCC             loc_3C167C
3C1662:  LDR.W           R0, =(currentPad_ptr - 0x3C166A)
3C1666:  ADD             R0, PC; currentPad_ptr
3C1668:  LDR             R0, [R0]; currentPad
3C166A:  LDR             R0, [R0]
3C166C:  CMP             R0, #0
3C166E:  ITT EQ
3C1670:  MOVEQ           R0, #0; this
3C1672:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C1676:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C167A:  CBZ             R0, loc_3C1680
3C167C:  MOVS            R0, #1
3C167E:  B               loc_3C1690
3C1680:  LDR.W           R0, =(TheCamera_ptr - 0x3C1688)
3C1684:  ADD             R0, PC; TheCamera_ptr
3C1686:  LDR             R0, [R0]; TheCamera
3C1688:  LDRB            R0, [R0,#(word_951FC2 - 0x951FA8)]
3C168A:  CMP             R0, #0
3C168C:  IT NE
3C168E:  MOVNE           R0, #1
3C1690:  VLDR            S0, =80.0
3C1694:  CMP             R0, #0
3C1696:  VLDR            S2, [R8,#0x8C]
3C169A:  MOV.W           R0, #0
3C169E:  VLDR            S29, [R8,#0x84]
3C16A2:  MOV.W           R4, #1
3C16A6:  VDIV.F32        S0, S2, S0
3C16AA:  VLDR            S2, =0.0
3C16AE:  ITT NE
3C16B0:  VMOVNE.F32      S28, S2
3C16B4:  VMOVNE.F32      S21, S2
3C16B8:  VLDR            S2, [SP,#0xE8+var_C0]
3C16BC:  STR.W           R0, [R8,#0x88]
3C16C0:  VMUL.F32        S2, S2, S28
3C16C4:  STR.W           R0, [R8,#0x98]
3C16C8:  VMUL.F32        S4, S18, S21
3C16CC:  VMUL.F32        S28, S2, S0
3C16D0:  VMUL.F32        S21, S4, S0
3C16D4:  B               loc_3C130E
3C16D6:  LDR.W           R10, [SP,#0xE8+var_98]; jumptable 003C1176 default case
3C16DA:  CMP.W           R0, #0x250
3C16DE:  BEQ.W           loc_3C12BC; jumptable 003C1176 cases 520,524,525,530,531,564
3C16E2:  LDR.W           R0, [R11,#0x5A0]; jumptable 003C1176 cases 521-523,526-529,532-563
3C16E6:  CMP             R0, #0
3C16E8:  ITTE EQ
3C16EA:  LDRBEQ.W        R0, [R11,#0x392]
3C16EE:  UBFXEQ.W        R5, R0, #1, #1
3C16F2:  MOVNE           R5, #0
3C16F4:  B               loc_3C12BC; jumptable 003C1176 cases 520,524,525,530,531,564
3C16F6:  LDR.W           R10, [SP,#0xE8+var_98]
3C16FA:  B               loc_3C12BC; jumptable 003C1176 cases 520,524,525,530,531,564
3C16FC:  VLDR            S4, =-3.1416
3C1700:  VCMPE.F32       S2, S4
3C1704:  VMRS            APSR_nzcv, FPSCR
3C1708:  BGE             loc_3C171C
3C170A:  VLDR            S4, =6.2832
3C170E:  VADD.F32        S2, S2, S4
3C1712:  LDR.W           R0, =(dword_952E0C - 0x3C171A)
3C1716:  ADD             R0, PC; dword_952E0C
3C1718:  VSTR            S2, [R0]
3C171C:  VLDR            S4, [R8,#0x94]
3C1720:  VMOV.F32        S6, #12.5
3C1724:  VLDR            S8, =-3.1416
3C1728:  VSUB.F32        S2, S2, S4
3C172C:  VLDR            S4, =-6.2832
3C1730:  VMUL.F32        S0, S0, S6
3C1734:  VCMPE.F32       S2, S26
3C1738:  VMRS            APSR_nzcv, FPSCR
3C173C:  VADD.F32        S4, S2, S4
3C1740:  IT GT
3C1742:  VMOVGT.F32      S2, S4
3C1746:  VLDR            S4, =6.2832
3C174A:  VCMPE.F32       S2, S8
3C174E:  VMRS            APSR_nzcv, FPSCR
3C1752:  VADD.F32        S4, S2, S4
3C1756:  IT LT
3C1758:  VMOVLT.F32      S2, S4
3C175C:  VMOV.F32        S4, #1.0
3C1760:  VMIN.F32        D0, D0, D2
3C1764:  VMUL.F32        S21, S2, S0
3C1768:  VLDR            S0, [R8,#0x94]
3C176C:  LDR.W           R0, =(TheCamera_ptr - 0x3C1778)
3C1770:  VADD.F32        S2, S21, S0
3C1774:  ADD             R0, PC; TheCamera_ptr
3C1776:  LDR             R0, [R0]; TheCamera
3C1778:  VSTR            S2, [R8,#0x94]
3C177C:  LDRB.W          R0, [R0,#(byte_951FCE - 0x951FA8)]
3C1780:  CBZ             R0, loc_3C179A
3C1782:  LDR             R0, [SP,#0xE8+var_9C]
3C1784:  LDR             R1, [R0]; float
3C1786:  LDR.W           R0, [R8,#0x168]; this
3C178A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3C178E:  VMOV            S0, R0
3C1792:  VADD.F32        S2, S0, S26
3C1796:  VSTR            S2, [R8,#0x94]
3C179A:  VNMUL.F32       S0, S20, S24
3C179E:  VCMPE.F32       S2, S26
3C17A2:  VMRS            APSR_nzcv, FPSCR
3C17A6:  BLE             loc_3C17AE
3C17A8:  VLDR            S4, =-6.2832
3C17AC:  B               loc_3C17C0
3C17AE:  VLDR            S4, =-3.1416
3C17B2:  VCMPE.F32       S2, S4
3C17B6:  VLDR            S4, =6.2832
3C17BA:  VMRS            APSR_nzcv, FPSCR
3C17BE:  BGE             loc_3C17C8
3C17C0:  VADD.F32        S2, S2, S4
3C17C4:  VSTR            S2, [R8,#0x94]
3C17C8:  VMUL.F32        S20, S28, S23
3C17CC:  CMP.W           R9, #1
3C17D0:  BHI             loc_3C1818
3C17D2:  VLDR            D1, [SP,#0xE8+var_C8]
3C17D6:  VCMPE.F32       S2, S16
3C17DA:  VMRS            APSR_nzcv, FPSCR
3C17DE:  BLT             loc_3C1818
3C17E0:  VLDR            S2, [R8,#0x84]
3C17E4:  VCMPE.F32       S29, S2
3C17E8:  VMRS            APSR_nzcv, FPSCR
3C17EC:  BGE             loc_3C1818
3C17EE:  LDR.W           R0, [R11,#0x5A0]
3C17F2:  CMP             R0, #9
3C17F4:  BEQ             loc_3C17FE
3C17F6:  CBNZ            R0, loc_3C1818
3C17F8:  ADDW            R0, R11, #0x974
3C17FC:  B               loc_3C1802
3C17FE:  ADDW            R0, R11, #0x818
3C1802:  LDRB            R0, [R0]
3C1804:  CMP             R0, #2
3C1806:  ITTTT CS
3C1808:  VSUBCS.F32      S2, S29, S2
3C180C:  VLDRCS          S4, =0.075
3C1810:  VMULCS.F32      S2, S2, S4
3C1814:  VADDCS.F32      S20, S20, S2
3C1818:  VCMPE.F32       S20, #0.0
3C181C:  VMRS            APSR_nzcv, FPSCR
3C1820:  VMAX.F32        D9, D9, D0
3C1824:  VLDR            S0, [R8,#0x88]
3C1828:  VMOV.F32        S4, #0.5
3C182C:  VMUL.F32        S2, S22, S20
3C1830:  VMUL.F32        S0, S25, S0
3C1834:  VMUL.F32        S4, S31, S4
3C1838:  VADD.F32        S0, S2, S0
3C183C:  IT GT
3C183E:  VMOVGT.F32      S31, S4
3C1842:  VSTR            S0, [R8,#0x88]
3C1846:  VCMPE.F32       S0, S31
3C184A:  VMRS            APSR_nzcv, FPSCR
3C184E:  BGT             loc_3C185E
3C1850:  VNEG.F32        S31, S31
3C1854:  VCMPE.F32       S0, S31
3C1858:  VMRS            APSR_nzcv, FPSCR
3C185C:  BGE             loc_3C1866
3C185E:  VMOV.F32        S0, S31
3C1862:  VSTR            S31, [R8,#0x88]
3C1866:  VABS.F32        S2, S0
3C186A:  VCMPE.F32       S2, S27
3C186E:  VMRS            APSR_nzcv, FPSCR
3C1872:  ITTT LT
3C1874:  MOVLT           R0, #0
3C1876:  STRLT.W         R0, [R8,#0x88]
3C187A:  VLDRLT          S0, =0.0
3C187E:  CMP             R4, #1
3C1880:  VLDR            S21, [SP,#0xE8+var_B8]
3C1884:  BNE             loc_3C18D8
3C1886:  LDR.W           R0, =(byte_952E18 - 0x3C188E)
3C188A:  ADD             R0, PC; byte_952E18
3C188C:  LDRB            R0, [R0]
3C188E:  DMB.W           ISH
3C1892:  TST.W           R0, #1
3C1896:  BNE             loc_3C18BA
3C1898:  LDR.W           R0, =(byte_952E18 - 0x3C18A0)
3C189C:  ADD             R0, PC; byte_952E18 ; __guard *
3C189E:  BLX             j___cxa_guard_acquire
3C18A2:  CBZ             R0, loc_3C18BA
3C18A4:  LDR.W           R1, =(dword_952E14 - 0x3C18B0)
3C18A8:  LDR.W           R0, =(byte_952E18 - 0x3C18B6)
3C18AC:  ADD             R1, PC; dword_952E14
3C18AE:  LDR.W           R2, [R8,#0x84]
3C18B2:  ADD             R0, PC; byte_952E18 ; __guard *
3C18B4:  STR             R2, [R1]
3C18B6:  BLX             j___cxa_guard_release
3C18BA:  LDRB.W          R0, [R8,#0xB]
3C18BE:  CBZ             R0, loc_3C18F2
3C18C0:  LDR.W           R0, =(dword_952E14 - 0x3C18CC)
3C18C4:  LDR.W           R1, [R8,#0x84]
3C18C8:  ADD             R0, PC; dword_952E14
3C18CA:  VMOV            S0, R1
3C18CE:  STR             R1, [R0]
3C18D0:  MOVS            R0, #0
3C18D2:  STRB.W          R0, [R8,#0xB]
3C18D6:  B               loc_3C18FC
3C18D8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C18E0)
3C18DC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C18DE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C18E0:  VLDR            S2, [R0]
3C18E4:  VMUL.F32        S0, S0, S2
3C18E8:  VADD.F32        S29, S29, S0
3C18EC:  VLDR            S0, [R8,#0x84]
3C18F0:  B               loc_3C1A6E
3C18F2:  LDR.W           R0, =(dword_952E14 - 0x3C18FA)
3C18F6:  ADD             R0, PC; dword_952E14
3C18F8:  VLDR            S0, [R0]
3C18FC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C1908)
3C1900:  VLDR            S24, =50.0
3C1904:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C1906:  VLDR            S22, =1000.0
3C190A:  VLDR            S4, =45.0
3C190E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C1910:  VLDR            S2, [R0]
3C1914:  LDR.W           R0, =(dword_952E14 - 0x3C1920)
3C1918:  VDIV.F32        S2, S2, S24
3C191C:  ADD             R0, PC; dword_952E14
3C191E:  VMUL.F32        S2, S2, S22
3C1922:  VCVT.U32.F32    S2, S2
3C1926:  VCVT.F32.U32    S2, S2
3C192A:  VDIV.F32        S2, S2, S22
3C192E:  VMUL.F32        S2, S2, S4
3C1932:  VMOV.F32        S4, #1.0
3C1936:  VMIN.F32        D1, D1, D2
3C193A:  VMUL.F32        S2, S18, S2
3C193E:  VADD.F32        S2, S20, S2
3C1942:  VADD.F32        S0, S0, S2
3C1946:  VCMPE.F32       S0, S26
3C194A:  VSTR            S0, [R0]
3C194E:  VMRS            APSR_nzcv, FPSCR
3C1952:  BLE             loc_3C195A
3C1954:  VLDR            S2, =-6.2832
3C1958:  B               loc_3C196C
3C195A:  VLDR            S2, =-3.1416
3C195E:  VCMPE.F32       S0, S2
3C1962:  VMRS            APSR_nzcv, FPSCR
3C1966:  BGE             loc_3C197A
3C1968:  VLDR            S2, =6.2832
3C196C:  VADD.F32        S0, S0, S2
3C1970:  LDR.W           R0, =(dword_952E14 - 0x3C1978)
3C1974:  ADD             R0, PC; dword_952E14
3C1976:  VSTR            S0, [R0]
3C197A:  MOV.W           R0, #0xFFFFFFFF; int
3C197E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3C1982:  CBZ             R0, loc_3C19EC
3C1984:  MOV.W           R0, #0xFFFFFFFF; int
3C1988:  MOVS            R1, #0; bool
3C198A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C198E:  CBZ             R0, loc_3C19EC
3C1990:  LDR.W           R0, [R0,#0x5A4]
3C1994:  SUBS            R0, #3
3C1996:  CMP             R0, #2
3C1998:  BCC             loc_3C1A76
3C199A:  LDR.W           R0, =(currentPad_ptr - 0x3C19A2)
3C199E:  ADD             R0, PC; currentPad_ptr
3C19A0:  LDR             R0, [R0]; currentPad
3C19A2:  LDR             R0, [R0]
3C19A4:  CMP             R0, #0
3C19A6:  ITT EQ
3C19A8:  MOVEQ           R0, #0; this
3C19AA:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3C19AE:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3C19B2:  CMP             R0, #0
3C19B4:  BNE             loc_3C1A76
3C19B6:  LDR.W           R0, =(TheCamera_ptr - 0x3C19BE)
3C19BA:  ADD             R0, PC; TheCamera_ptr
3C19BC:  B               loc_3C19F2
3C19BE:  ALIGN 0x10
3C19C0:  DCFS 80.0
3C19C4:  DCFS 0.0
3C19C8:  DCFS -3.1416
3C19CC:  DCFS 6.2832
3C19D0:  DCFS -6.2832
3C19D4:  DCFS 0.075
3C19D8:  DCFS 50.0
3C19DC:  DCFS 1000.0
3C19E0:  DCFS 45.0
3C19E4:  DCFS 100000.0
3C19E8:  DCFS 10000.0
3C19EC:  LDR.W           R0, =(TheCamera_ptr - 0x3C19F4)
3C19F0:  ADD             R0, PC; TheCamera_ptr
3C19F2:  LDR             R0, [R0]; TheCamera
3C19F4:  LDRB            R0, [R0,#(word_951FC2 - 0x951FA8)]
3C19F6:  CBNZ            R0, loc_3C1A76
3C19F8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3C1A08)
3C19FC:  VMOV.F32        S8, #12.5
3C1A00:  VLDR            S6, =-6.2832
3C1A04:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3C1A06:  VLDR            S10, =-3.1416
3C1A0A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3C1A0C:  VLDR            S0, [R0]
3C1A10:  LDR.W           R0, =(dword_952E14 - 0x3C1A1C)
3C1A14:  VDIV.F32        S0, S0, S24
3C1A18:  ADD             R0, PC; dword_952E14
3C1A1A:  VMUL.F32        S0, S0, S22
3C1A1E:  VCVT.U32.F32    S0, S0
3C1A22:  VCVT.F32.U32    S2, S0
3C1A26:  VLDR            S0, [R8,#0x84]
3C1A2A:  VLDR            S4, [R0]
3C1A2E:  VSUB.F32        S4, S4, S0
3C1A32:  VDIV.F32        S2, S2, S22
3C1A36:  VCMPE.F32       S4, S26
3C1A3A:  VMRS            APSR_nzcv, FPSCR
3C1A3E:  VADD.F32        S6, S4, S6
3C1A42:  VMUL.F32        S2, S2, S8
3C1A46:  IT GT
3C1A48:  VMOVGT.F32      S4, S6
3C1A4C:  VLDR            S6, =6.2832
3C1A50:  VCMPE.F32       S4, S10
3C1A54:  VMRS            APSR_nzcv, FPSCR
3C1A58:  VADD.F32        S6, S4, S6
3C1A5C:  IT LT
3C1A5E:  VMOVLT.F32      S4, S6
3C1A62:  VMOV.F32        S6, #1.0
3C1A66:  VMIN.F32        D1, D1, D3
3C1A6A:  VMUL.F32        S18, S4, S2
3C1A6E:  VADD.F32        S0, S18, S0
3C1A72:  VSTR            S0, [R8,#0x84]
3C1A76:  VLDR            S18, [R8,#0x84]
3C1A7A:  VCMPE.F32       S18, S30
3C1A7E:  VMRS            APSR_nzcv, FPSCR
3C1A82:  BGT             loc_3C1AA2
3C1A84:  LDR.W           R0, =(CARCAM_SET_ptr - 0x3C1A8C)
3C1A88:  ADD             R0, PC; CARCAM_SET_ptr
3C1A8A:  LDR             R0, [R0]; CARCAM_SET
3C1A8C:  ADD.W           R0, R0, R10,LSL#2
3C1A90:  VLDR            S0, [R0,#0x38]
3C1A94:  VNEG.F32        S30, S0
3C1A98:  VCMPE.F32       S18, S30
3C1A9C:  VMRS            APSR_nzcv, FPSCR
3C1AA0:  BGE             loc_3C1AB0
3C1AA2:  VMOV.F32        S18, S30
3C1AA6:  MOVS            R0, #0
3C1AA8:  STR.W           R0, [R8,#0x88]
3C1AAC:  VSTR            S30, [R8,#0x84]
3C1AB0:  LDR.W           R0, =(unk_6AA238 - 0x3C1ABC)
3C1AB4:  LDR.W           R1, =(unk_6AA23C - 0x3C1ABE)
3C1AB8:  ADD             R0, PC; unk_6AA238
3C1ABA:  ADD             R1, PC; unk_6AA23C
3C1ABC:  VLDR            S0, [R0]
3C1AC0:  ADD.W           R0, R8, #0x1B0
3C1AC4:  VSUB.F32        S2, S0, S18
3C1AC8:  VABS.F32        S2, S2
3C1ACC:  VCMPE.F32       S2, S27
3C1AD0:  VMRS            APSR_nzcv, FPSCR
3C1AD4:  ITT LT
3C1AD6:  VSTRLT          S0, [R8,#0x84]
3C1ADA:  VMOVLT.F32      S18, S0
3C1ADE:  STR             R0, [SP,#0xE8+var_98]
3C1AE0:  LDR.W           R0, =(unk_6AA238 - 0x3C1AEC)
3C1AE4:  VLDR            S0, [R1]
3C1AE8:  ADD             R0, PC; unk_6AA238
3C1AEA:  VSTR            S18, [R0]
3C1AEE:  VLDR            S22, [R8,#0x94]
3C1AF2:  VSUB.F32        S2, S0, S22
3C1AF6:  VABS.F32        S2, S2
3C1AFA:  VCMPE.F32       S2, S27
3C1AFE:  VMRS            APSR_nzcv, FPSCR
3C1B02:  ITT LT
3C1B04:  VSTRLT          S0, [R8,#0x94]
3C1B08:  VMOVLT.F32      S22, S0
3C1B0C:  STR.W           R11, [SP,#0xE8+var_C0]
3C1B10:  VMOV            R4, S22
3C1B14:  MOV             R0, R4; x
3C1B16:  BLX             cosf
3C1B1A:  VMOV            R6, S18
3C1B1E:  MOV             R5, R0
3C1B20:  MOV             R0, R6; x
3C1B22:  BLX             cosf
3C1B26:  VMOV            S18, R0
3C1B2A:  MOV             R0, R4; x
3C1B2C:  VMOV            S20, R5
3C1B30:  BLX             sinf
3C1B34:  VMOV            S0, R0
3C1B38:  MOV             R0, R6; x
3C1B3A:  VNMUL.F32       S24, S20, S18
3C1B3E:  VNMUL.F32       S18, S18, S0
3C1B42:  BLX             sinf
3C1B46:  LDR.W           R1, =(unk_6AA23C - 0x3C1B56)
3C1B4A:  VMOV.F32        S20, #5.0
3C1B4E:  VMOV.F32        S26, #-5.0
3C1B52:  ADD             R1, PC; unk_6AA23C
3C1B54:  VMOV.F32        S28, #10.0
3C1B58:  VSTR            S22, [R1]
3C1B5C:  LDR             R1, [SP,#0xE8+var_D8]
3C1B5E:  VMOV.F32        S2, S20
3C1B62:  VSTR            S24, [R1]
3C1B66:  LDR.W           R11, [SP,#0xE8+var_9C]
3C1B6A:  VLDR            S24, =100000.0
3C1B6E:  VSTR            S18, [R11]
3C1B72:  LDR             R1, [SP,#0xE8+var_94]
3C1B74:  STR             R0, [R1]
3C1B76:  ADD             R1, SP, #0xE8+iptr; iptr
3C1B78:  VLDR            S0, [R8,#0x174]
3C1B7C:  VCMPE.F32       S0, #0.0
3C1B80:  VMRS            APSR_nzcv, FPSCR
3C1B84:  VMUL.F32        S0, S0, S24
3C1B88:  IT LT
3C1B8A:  VMOVLT.F32      S2, S26
3C1B8E:  VADD.F32        S0, S0, S2
3C1B92:  VDIV.F32        S0, S0, S28
3C1B96:  VMOV            R0, S0; x
3C1B9A:  BLX             modff
3C1B9E:  VLDR            S2, [R8,#0x178]
3C1BA2:  VMOV.F32        S4, S20
3C1BA6:  VLDR            S0, [SP,#0xE8+iptr]
3C1BAA:  ADD             R1, SP, #0xE8+iptr; iptr
3C1BAC:  VCMPE.F32       S2, #0.0
3C1BB0:  VLDR            S30, =10000.0
3C1BB4:  VMRS            APSR_nzcv, FPSCR
3C1BB8:  VMUL.F32        S2, S2, S24
3C1BBC:  VDIV.F32        S0, S0, S30
3C1BC0:  IT LT
3C1BC2:  VMOVLT.F32      S4, S26
3C1BC6:  VADD.F32        S2, S2, S4
3C1BCA:  VSTR            S0, [R8,#0x174]
3C1BCE:  VDIV.F32        S2, S2, S28
3C1BD2:  VMOV            R0, S2; x
3C1BD6:  BLX             modff
3C1BDA:  VLDR            S2, [R8,#0x17C]
3C1BDE:  VMOV.F32        S4, S20
3C1BE2:  VLDR            S0, [SP,#0xE8+iptr]
3C1BE6:  ADD             R1, SP, #0xE8+iptr; iptr
3C1BE8:  VCMPE.F32       S2, #0.0
3C1BEC:  VMRS            APSR_nzcv, FPSCR
3C1BF0:  VMUL.F32        S2, S2, S24
3C1BF4:  VDIV.F32        S0, S0, S30
3C1BF8:  IT LT
3C1BFA:  VMOVLT.F32      S4, S26
3C1BFE:  VADD.F32        S2, S2, S4
3C1C02:  VSTR            S0, [R8,#0x178]
3C1C06:  VDIV.F32        S2, S2, S28
3C1C0A:  VMOV            R0, S2; x
3C1C0E:  BLX             modff
3C1C12:  VLDR            S0, [SP,#0xE8+iptr]
3C1C16:  MOVS            R5, #0
3C1C18:  MOV.W           R0, #0x3F800000
3C1C1C:  VDIV.F32        S0, S0, S30
3C1C20:  VSTR            S0, [R8,#0x17C]
3C1C24:  STRD.W          R5, R5, [R8,#0x18C]
3C1C28:  STR.W           R0, [R8,#0x194]
3C1C2C:  LDR             R6, [SP,#0xE8+var_BC]
3C1C2E:  MOV             R0, R6; this
3C1C30:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C1C34:  VLDR            S0, [R8,#0x168]
3C1C38:  ADD.W           R9, R8, #0x18C
3C1C3C:  VCMP.F32        S0, #0.0
3C1C40:  VMRS            APSR_nzcv, FPSCR
3C1C44:  BNE             loc_3C1C62
3C1C46:  VLDR            S0, [R11]
3C1C4A:  VCMP.F32        S0, #0.0
3C1C4E:  VMRS            APSR_nzcv, FPSCR
3C1C52:  ITTTT EQ
3C1C54:  MOVWEQ          R0, #0xB717
3C1C58:  MOVTEQ          R0, #0x38D1
3C1C5C:  STREQ           R0, [R6]
3C1C5E:  STREQ.W         R0, [R11]
3C1C62:  ADD             R0, SP, #0xE8+var_80; CVector *
3C1C64:  MOV             R1, R6; CVector *
3C1C66:  MOV             R2, R9
3C1C68:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C1C6C:  ADD             R4, SP, #0xE8+iptr
3C1C6E:  LDR             R0, [SP,#0xE8+var_78]
3C1C70:  VLDR            D16, [SP,#0xE8+var_80]
3C1C74:  STR             R0, [SP,#0xE8+var_68]
3C1C76:  MOV             R0, R4; this
3C1C78:  VSTR            D16, [SP,#0xE8+iptr]
3C1C7C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C1C80:  ADD             R0, SP, #0xE8+var_80; CVector *
3C1C82:  MOV             R1, R4; CVector *
3C1C84:  MOV             R2, R6
3C1C86:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C1C8A:  LDR.W           R0, =(TheCamera_ptr - 0x3C1C9A)
3C1C8E:  VADD.F32        S2, S21, S29
3C1C92:  VLDR            D16, [SP,#0xE8+var_80]
3C1C96:  ADD             R0, PC; TheCamera_ptr
3C1C98:  LDR             R1, [SP,#0xE8+var_78]
3C1C9A:  STR.W           R1, [R9,#8]
3C1C9E:  VSTR            D16, [R9]
3C1CA2:  LDR.W           R10, [R0]; TheCamera
3C1CA6:  LDR             R0, [SP,#0xE8+var_94]
3C1CA8:  VLDR            S22, [SP,#0xE8+var_90]
3C1CAC:  STRH.W          R5, [R10,#(word_951FC2 - 0x951FA8)]
3C1CB0:  VMOV            R5, S2
3C1CB4:  VLDR            S6, [R0]
3C1CB8:  VLDR            S0, [R8,#0x168]
3C1CBC:  VLDR            S4, [R11]
3C1CC0:  VMUL.F32        S6, S16, S6
3C1CC4:  LDR             R0, [SP,#0xE8+var_E4]
3C1CC6:  VMUL.F32        S0, S16, S0
3C1CCA:  VMUL.F32        S4, S16, S4
3C1CCE:  VLDR            S19, [R0]
3C1CD2:  LDR             R0, [SP,#0xE8+var_CC]
3C1CD4:  VLDR            S18, [R0]
3C1CD8:  VSUB.F32        S0, S22, S0
3C1CDC:  VSUB.F32        S2, S19, S4
3C1CE0:  VSUB.F32        S4, S18, S6
3C1CE4:  VSTR            S0, [R8,#0x174]
3C1CE8:  VSTR            S2, [R8,#0x178]
3C1CEC:  VSTR            S4, [R8,#0x17C]
3C1CF0:  VLDR            D16, [SP,#0xE8+var_90]
3C1CF4:  LDR             R0, [SP,#0xE8+var_88]
3C1CF6:  STR.W           R0, [R8,#0x128]
3C1CFA:  VSTR            D16, [R8,#0x120]
3C1CFE:  LDR             R0, [SP,#0xE8+var_98]
3C1D00:  VLDR            D16, [R0]
3C1D04:  LDR             R0, [R0,#8]
3C1D06:  STR.W           R0, [R8,#0x1D0]
3C1D0A:  MOV             R0, R5; x
3C1D0C:  VSTR            D16, [R8,#0x1C8]
3C1D10:  BLX             cosf
3C1D14:  LDR.W           R4, [R8,#0x94]
3C1D18:  VMOV            S21, R0
3C1D1C:  MOV             R0, R4; x
3C1D1E:  BLX             cosf
3C1D22:  VMOV            S23, R0
3C1D26:  MOV             R0, R4; x
3C1D28:  BLX             sinf
3C1D2C:  VMOV            S0, R0
3C1D30:  MOV             R0, R5; x
3C1D32:  VMUL.F32        S23, S23, S21
3C1D36:  VMUL.F32        S21, S21, S0
3C1D3A:  BLX             sinf
3C1D3E:  VLDR            D3, [SP,#0xE8+var_B0]
3C1D42:  VMOV            S0, R0
3C1D46:  VMUL.F32        S8, S16, S23
3C1D4A:  VMUL.F32        S2, S6, S23
3C1D4E:  VMUL.F32        S4, S6, S21
3C1D52:  VMUL.F32        S6, S6, S0
3C1D56:  VMUL.F32        S10, S16, S21
3C1D5A:  VMUL.F32        S0, S16, S0
3C1D5E:  VADD.F32        S8, S22, S8
3C1D62:  VADD.F32        S2, S2, S22
3C1D66:  VADD.F32        S4, S4, S19
3C1D6A:  VSUB.F32        S6, S18, S6
3C1D6E:  VADD.F32        S10, S19, S10
3C1D72:  VSUB.F32        S0, S18, S0
3C1D76:  VSTR            S2, [R8,#0x1B0]
3C1D7A:  LDR             R0, [SP,#0xE8+var_E0]
3C1D7C:  VSTR            S4, [R0]
3C1D80:  LDR             R0, [SP,#0xE8+var_DC]
3C1D82:  VSTR            S6, [R0]
3C1D86:  LDR             R0, [SP,#0xE8+var_A4]
3C1D88:  VSTR            S8, [R0]
3C1D8C:  LDR             R0, [SP,#0xE8+var_A0]
3C1D8E:  VSTR            S10, [R0]
3C1D92:  LDR             R0, [SP,#0xE8+var_D4]
3C1D94:  VSTR            S0, [R0]
3C1D98:  LDR.W           R1, [R10,#(dword_952058 - 0x951FA8)]; int
3C1D9C:  LDR             R0, [SP,#0xE8+var_B4]; this
3C1D9E:  BLX             j__ZN7CCamera17SetColVarsVehicleEii; CCamera::SetColVarsVehicle(int,int)
3C1DA2:  LDR             R0, =(dword_6A9F18 - 0x3C1DA8)
3C1DA4:  ADD             R0, PC; dword_6A9F18
3C1DA6:  LDR             R0, [R0]
3C1DA8:  CMP             R0, #3
3C1DAA:  BNE.W           loc_3C1F7A
3C1DAE:  LDR             R0, =(TheCamera_ptr - 0x3C1DB6)
3C1DB0:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C1DBA)
3C1DB2:  ADD             R0, PC; TheCamera_ptr
3C1DB4:  LDR             R6, [SP,#0xE8+var_C0]
3C1DB6:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C1DB8:  LDR             R3, =(_ZN10CCollision19bCamCollideWithPedsE_ptr - 0x3C1DC4)
3C1DBA:  LDR             R2, [R0]; TheCamera
3C1DBC:  MOVS            R0, #0
3C1DBE:  LDR             R1, [R1]; CWorld::pIgnoreEntity ...
3C1DC0:  ADD             R3, PC; _ZN10CCollision19bCamCollideWithPedsE_ptr
3C1DC2:  LDR             R5, =(_ZN10CCollision22bCamCollideWithObjectsE_ptr - 0x3C1DCE)
3C1DC4:  STR.W           R0, [R2,#(dword_952B78 - 0x951FA8)]
3C1DC8:  STR             R6, [R1]; CWorld::pIgnoreEntity
3C1DCA:  ADD             R5, PC; _ZN10CCollision22bCamCollideWithObjectsE_ptr
3C1DCC:  VLDR            S0, [R6,#0x48]
3C1DD0:  VLDR            S2, [R6,#0x4C]
3C1DD4:  VMUL.F32        S0, S0, S0
3C1DD8:  VLDR            S4, [R6,#0x50]
3C1DDC:  VMUL.F32        S2, S2, S2
3C1DE0:  LDR             R1, =(_ZN10CCollision23bCamCollideWithVehiclesE_ptr - 0x3C1DEC)
3C1DE2:  VMUL.F32        S4, S4, S4
3C1DE6:  LDR             R2, =(_ZN10CCollision29relVelCamCollisionVehiclesSqrE_ptr - 0x3C1DF0)
3C1DE8:  ADD             R1, PC; _ZN10CCollision23bCamCollideWithVehiclesE_ptr
3C1DEA:  LDR             R3, [R3]; CCollision::bCamCollideWithPeds ...
3C1DEC:  ADD             R2, PC; _ZN10CCollision29relVelCamCollisionVehiclesSqrE_ptr
3C1DEE:  LDR             R5, [R5]; CCollision::bCamCollideWithObjects ...
3C1DF0:  LDR             R4, [R1]; CCollision::bCamCollideWithVehicles ...
3C1DF2:  MOVS            R1, #1
3C1DF4:  LDR             R2, [R2]; CCollision::relVelCamCollisionVehiclesSqr ...
3C1DF6:  VADD.F32        S0, S0, S2
3C1DFA:  VLDR            S2, =0.01
3C1DFE:  VADD.F32        S0, S0, S4
3C1E02:  VLDR            S4, =0.04
3C1E06:  VMOV.F32        S6, S4
3C1E0A:  VMOV.F32        S4, #1.0
3C1E0E:  VCMPE.F32       S0, S6
3C1E12:  VMRS            APSR_nzcv, FPSCR
3C1E16:  VCMPE.F32       S0, S6
3C1E1A:  IT GT
3C1E1C:  VMOVGT.F32      S2, S4
3C1E20:  VMRS            APSR_nzcv, FPSCR
3C1E24:  STRB            R1, [R4]; CCollision::bCamCollideWithVehicles
3C1E26:  IT LE
3C1E28:  MOVLE           R0, #1
3C1E2A:  VSTR            S2, [R2]
3C1E2E:  STRB            R0, [R3]; CCollision::bCamCollideWithPeds
3C1E30:  STRB            R0, [R5]; CCollision::bCamCollideWithObjects
3C1E32:  LDR.W           R0, [R6,#0x4D4]
3C1E36:  CBZ             R0, loc_3C1E46
3C1E38:  LDR             R2, =(TheCamera_ptr - 0x3C1E3E)
3C1E3A:  ADD             R2, PC; TheCamera_ptr
3C1E3C:  LDR             R2, [R2]; TheCamera
3C1E3E:  STR.W           R1, [R2,#(dword_952B78 - 0x951FA8)]
3C1E42:  STR.W           R0, [R2,#(dword_952B7C - 0x951FA8)]
3C1E46:  LDRB.W          R0, [R6,#0x42D]
3C1E4A:  ADD.W           R5, R8, #0x174
3C1E4E:  LSLS            R0, R0, #0x1D
3C1E50:  BPL             loc_3C1E5C
3C1E52:  LDR             R0, =(gTopSphereCastTest_ptr - 0x3C1E5A)
3C1E54:  MOVS            R1, #1
3C1E56:  ADD             R0, PC; gTopSphereCastTest_ptr
3C1E58:  LDR             R0, [R0]; gTopSphereCastTest
3C1E5A:  STRB            R1, [R0]
3C1E5C:  MOV             R0, R6; this
3C1E5E:  BLX             j__ZN8CVehicle25CanUseCameraHeightSettingEv; CVehicle::CanUseCameraHeightSetting(void)
3C1E62:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x3C1E68)
3C1E64:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
3C1E66:  LDR             R1, [R1]; MobileSettings::settings ...
3C1E68:  LDR.W           R1, [R1,#(dword_6E053C - 0x6E03F4)]
3C1E6C:  CMP             R1, #0
3C1E6E:  IT NE
3C1E70:  CMPNE           R0, #0
3C1E72:  BEQ             loc_3C1EAA
3C1E74:  VLDR            S0, =-0.425
3C1E78:  ADD             R2, SP, #0xE8+var_90; CVector *
3C1E7A:  LDR             R4, [SP,#0xE8+var_CC]
3C1E7C:  MOV             R1, R5; CVector *
3C1E7E:  VADD.F32        S0, S18, S0
3C1E82:  VSTR            S0, [R4]
3C1E86:  BLX             j__ZN7CCamera20CameraColDetAndReactEP7CVectorS1_; CCamera::CameraColDetAndReact(CVector *,CVector *)
3C1E8A:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3C1E90)
3C1E8C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3C1E8E:  LDR             R0, [R0]; MobileSettings::settings ...
3C1E90:  LDR.W           R0, [R0,#(dword_6E053C - 0x6E03F4)]
3C1E94:  CMP             R0, #0
3C1E96:  ITTTT NE
3C1E98:  VLDRNE          S0, =0.425
3C1E9C:  VLDRNE          S2, [R4]
3C1EA0:  VADDNE.F32      S0, S2, S0
3C1EA4:  VSTRNE          S0, [R4]
3C1EA8:  B               loc_3C1EB2
3C1EAA:  ADD             R2, SP, #0xE8+var_90; CVector *
3C1EAC:  MOV             R1, R5; CVector *
3C1EAE:  BLX             j__ZN7CCamera20CameraColDetAndReactEP7CVectorS1_; CCamera::CameraColDetAndReact(CVector *,CVector *)
3C1EB2:  LDR             R0, =(TheCamera_ptr - 0x3C1EBE)
3C1EB4:  ADD             R1, SP, #0xE8+var_90
3C1EB6:  STR             R1, [SP,#0xE8+var_E8]; CVector *
3C1EB8:  MOV             R1, R6; CVehicle *
3C1EBA:  ADD             R0, PC; TheCamera_ptr
3C1EBC:  MOVS            R2, #0; CPed *
3C1EBE:  MOV             R3, R5; CVector *
3C1EC0:  MOVS            R4, #0
3C1EC2:  LDR             R0, [R0]; TheCamera ; this
3C1EC4:  BLX             j__ZN7CCamera15ImproveNearClipEP8CVehicleP4CPedP7CVectorS5_; CCamera::ImproveNearClip(CVehicle *,CPed *,CVector *,CVector *)
3C1EC8:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C1ED4)
3C1ECA:  VMOV.F32        S2, S20
3C1ECE:  ADD             R1, SP, #0xE8+iptr; iptr
3C1ED0:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C1ED2:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3C1ED4:  STR             R4, [R0]; CWorld::pIgnoreEntity
3C1ED6:  VLDR            S0, [R8,#0x174]
3C1EDA:  VCMPE.F32       S0, #0.0
3C1EDE:  VMRS            APSR_nzcv, FPSCR
3C1EE2:  VMUL.F32        S0, S0, S24
3C1EE6:  IT LT
3C1EE8:  VMOVLT.F32      S2, S26
3C1EEC:  VADD.F32        S0, S0, S2
3C1EF0:  VDIV.F32        S0, S0, S28
3C1EF4:  VMOV            R0, S0; x
3C1EF8:  BLX             modff
3C1EFC:  VLDR            S2, [R8,#0x178]
3C1F00:  VMOV.F32        S4, S20
3C1F04:  VLDR            S0, [SP,#0xE8+iptr]
3C1F08:  ADD             R1, SP, #0xE8+iptr; iptr
3C1F0A:  VCMPE.F32       S2, #0.0
3C1F0E:  VMRS            APSR_nzcv, FPSCR
3C1F12:  VMUL.F32        S2, S2, S24
3C1F16:  VDIV.F32        S0, S0, S30
3C1F1A:  IT LT
3C1F1C:  VMOVLT.F32      S4, S26
3C1F20:  VADD.F32        S2, S2, S4
3C1F24:  VSTR            S0, [R8,#0x174]
3C1F28:  VDIV.F32        S2, S2, S28
3C1F2C:  VMOV            R0, S2; x
3C1F30:  BLX             modff
3C1F34:  VLDR            S2, [R8,#0x17C]
3C1F38:  VMOV.F32        S4, S20
3C1F3C:  VLDR            S0, [SP,#0xE8+iptr]
3C1F40:  ADD             R1, SP, #0xE8+iptr; iptr
3C1F42:  VCMPE.F32       S2, #0.0
3C1F46:  VMRS            APSR_nzcv, FPSCR
3C1F4A:  VMUL.F32        S2, S2, S24
3C1F4E:  VDIV.F32        S0, S0, S30
3C1F52:  IT LT
3C1F54:  VMOVLT.F32      S4, S26
3C1F58:  VADD.F32        S2, S2, S4
3C1F5C:  VSTR            S0, [R8,#0x178]
3C1F60:  VDIV.F32        S2, S2, S28
3C1F64:  VMOV            R0, S2; x
3C1F68:  BLX             modff
3C1F6C:  VLDR            S0, [SP,#0xE8+iptr]
3C1F70:  VDIV.F32        S0, S0, S30
3C1F74:  VSTR            S0, [R8,#0x17C]
3C1F78:  LDR             R6, [SP,#0xE8+var_BC]
3C1F7A:  LDR             R0, =(TheCamera_ptr - 0x3C1F88)
3C1F7C:  MOVS            R4, #0
3C1F7E:  VMOV.F32        S2, S20
3C1F82:  ADD             R1, SP, #0xE8+iptr; iptr
3C1F84:  ADD             R0, PC; TheCamera_ptr
3C1F86:  LDR             R0, [R0]; TheCamera
3C1F88:  STRH            R4, [R0,#(word_951FC2 - 0x951FA8)]
3C1F8A:  VLDR            S0, [R8,#0x174]
3C1F8E:  VCMPE.F32       S0, #0.0
3C1F92:  VMRS            APSR_nzcv, FPSCR
3C1F96:  VMUL.F32        S0, S0, S24
3C1F9A:  IT LT
3C1F9C:  VMOVLT.F32      S2, S26
3C1FA0:  VADD.F32        S0, S0, S2
3C1FA4:  VDIV.F32        S0, S0, S28
3C1FA8:  VMOV            R0, S0; x
3C1FAC:  BLX             modff
3C1FB0:  VLDR            S2, [R8,#0x178]
3C1FB4:  VMOV.F32        S4, S20
3C1FB8:  VLDR            S0, [SP,#0xE8+iptr]
3C1FBC:  ADD             R1, SP, #0xE8+iptr; iptr
3C1FBE:  VCMPE.F32       S2, #0.0
3C1FC2:  VMRS            APSR_nzcv, FPSCR
3C1FC6:  VMUL.F32        S2, S2, S24
3C1FCA:  VDIV.F32        S0, S0, S30
3C1FCE:  IT LT
3C1FD0:  VMOVLT.F32      S4, S26
3C1FD4:  VADD.F32        S2, S2, S4
3C1FD8:  VSTR            S0, [R8,#0x174]
3C1FDC:  VDIV.F32        S2, S2, S28
3C1FE0:  VMOV            R0, S2; x
3C1FE4:  BLX             modff
3C1FE8:  VLDR            S2, [R8,#0x17C]
3C1FEC:  ADD             R1, SP, #0xE8+iptr; iptr
3C1FEE:  VLDR            S0, [SP,#0xE8+iptr]
3C1FF2:  VCMPE.F32       S2, #0.0
3C1FF6:  VMRS            APSR_nzcv, FPSCR
3C1FFA:  VMUL.F32        S2, S2, S24
3C1FFE:  VDIV.F32        S0, S0, S30
3C2002:  IT LT
3C2004:  VMOVLT.F32      S20, S26
3C2008:  VADD.F32        S2, S2, S20
3C200C:  VSTR            S0, [R8,#0x178]
3C2010:  VDIV.F32        S2, S2, S28
3C2014:  VMOV            R0, S2; x
3C2018:  BLX             modff
3C201C:  VLDR            S0, [SP,#0xE8+iptr]
3C2020:  MOV.W           R0, #0x3F800000
3C2024:  VDIV.F32        S0, S0, S30
3C2028:  VSTR            S0, [R8,#0x17C]
3C202C:  STRD.W          R4, R4, [R8,#0x18C]
3C2030:  STR.W           R0, [R8,#0x194]
3C2034:  MOV             R0, R6; this
3C2036:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C203A:  VLDR            S0, [R8,#0x168]
3C203E:  LDR             R1, [SP,#0xE8+var_9C]
3C2040:  VCMP.F32        S0, #0.0
3C2044:  VMRS            APSR_nzcv, FPSCR
3C2048:  BNE             loc_3C2064
3C204A:  VLDR            S0, [R1]
3C204E:  VCMP.F32        S0, #0.0
3C2052:  VMRS            APSR_nzcv, FPSCR
3C2056:  ITTTT EQ
3C2058:  MOVWEQ          R0, #0xB717
3C205C:  MOVTEQ          R0, #0x38D1
3C2060:  STREQ           R0, [R6]
3C2062:  STREQ           R0, [R1]
3C2064:  ADD             R0, SP, #0xE8+var_80; CVector *
3C2066:  MOV             R1, R6; CVector *
3C2068:  MOV             R2, R9
3C206A:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C206E:  ADD             R4, SP, #0xE8+iptr
3C2070:  LDR             R0, [SP,#0xE8+var_78]
3C2072:  VLDR            D16, [SP,#0xE8+var_80]
3C2076:  STR             R0, [SP,#0xE8+var_68]
3C2078:  MOV             R0, R4; this
3C207A:  VSTR            D16, [SP,#0xE8+iptr]
3C207E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C2082:  ADD             R0, SP, #0xE8+var_80; CVector *
3C2084:  MOV             R1, R4; CVector *
3C2086:  MOV             R2, R6
3C2088:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C208C:  LDR             R0, =(gTargetCoordsForLookingBehind_ptr - 0x3C2096)
3C208E:  VLDR            D16, [SP,#0xE8+var_80]
3C2092:  ADD             R0, PC; gTargetCoordsForLookingBehind_ptr
3C2094:  LDR             R1, [SP,#0xE8+var_78]
3C2096:  STR.W           R1, [R9,#8]
3C209A:  VSTR            D16, [R9]
3C209E:  LDR             R0, [R0]; gTargetCoordsForLookingBehind
3C20A0:  VLDR            D16, [SP,#0xE8+var_90]
3C20A4:  LDR             R1, [SP,#0xE8+var_88]
3C20A6:  STR             R1, [R0,#(dword_951F9C - 0x951F94)]
3C20A8:  VSTR            D16, [R0]
3C20AC:  ADD             SP, SP, #0x88
3C20AE:  VPOP            {D8-D15}
3C20B2:  ADD             SP, SP, #4
3C20B4:  POP.W           {R8-R11}
3C20B8:  POP             {R4-R7,PC}
