; =========================================================
; Game Engine Function: _ZN5CHeli14ProcessControlEv
; Address            : 0x571238 - 0x571AE8
; =========================================================

571238:  PUSH            {R4-R7,LR}
57123A:  ADD             R7, SP, #0xC
57123C:  PUSH.W          {R8-R11}
571240:  SUB             SP, SP, #4
571242:  VPUSH           {D8-D10}
571246:  SUB             SP, SP, #0x98
571248:  MOV             R11, R0
57124A:  BLX             j__ZN11CAutomobile14ProcessControlEv; CAutomobile::ProcessControl(void)
57124E:  LDRB.W          R0, [R11,#0x42C]
571252:  LSLS            R0, R0, #0x1B
571254:  BMI             loc_57126A
571256:  LDR.W           R0, [R11,#0x590]; this
57125A:  CBZ             R0, loc_57126A
57125C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
571260:  MOVS            R0, #0
571262:  STR.W           R0, [R11,#0x998]
571266:  STR.W           R0, [R11,#0x590]
57126A:  LDR.W           R0, [R11,#0x464]
57126E:  CBZ             R0, loc_57127C
571270:  LDR.W           R0, [R0,#0x59C]
571274:  CMP             R0, #1
571276:  IT NE
571278:  MOVNE           R0, #0
57127A:  B               loc_57127E
57127C:  MOVS            R0, #0; this
57127E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
571282:  LDRB.W          R1, [R11,#0x3A]
571286:  MOVS            R2, #8
571288:  ORR.W           R1, R2, R1,LSR#3
57128C:  CMP             R1, #8
57128E:  BNE             loc_5712A8
571290:  BLX             j__ZN4CPad12HornJustDownEv; CPad::HornJustDown(void)
571294:  CMP             R0, #1
571296:  BNE             loc_5712A8
571298:  LDRB.W          R0, [R11,#0xA25]
57129C:  MOVS            R1, #0
57129E:  CMP             R0, #0
5712A0:  IT EQ
5712A2:  MOVEQ           R1, #1
5712A4:  STRB.W          R1, [R11,#0xA25]
5712A8:  LDRB.W          R0, [R11,#0x47]
5712AC:  STR.W           R11, [SP,#0xD0+var_90]
5712B0:  LSLS            R0, R0, #0x1A; this
5712B2:  BMI             loc_5712BE
5712B4:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
5712B8:  CMP             R0, #0
5712BA:  BEQ.W           loc_57146C
5712BE:  ADDW            R4, R11, #0x3BE
5712C2:  MOVS            R0, #0
5712C4:  MOVS            R1, #0
5712C6:  STR             R0, [SP,#0xD0+var_94]
5712C8:  STR.W           R1, [R11,#0xA14]
5712CC:  LDRB            R0, [R4]
5712CE:  CMP             R0, #0x28 ; '('
5712D0:  BNE             loc_5712EE
5712D2:  LDRB.W          R0, [R11,#0x9CD]
5712D6:  CBZ             R0, loc_5712EE
5712D8:  MOV             R0, R11; this
5712DA:  BLX             j__ZN5CHeli12SendDownSwatEv; CHeli::SendDownSwat(void)
5712DE:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x5712EA)
5712E2:  MOVS            R1, #0x1A
5712E4:  MOV             R2, R11
5712E6:  ADD             R0, PC; g_InterestingEvents_ptr
5712E8:  LDR             R0, [R0]; g_InterestingEvents
5712EA:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
5712EE:  VMOV.F32        S18, #-0.5
5712F2:  LDR.W           R5, =(unk_61ECC4 - 0x571302)
5712F6:  LDR.W           R10, =(unk_61ECD4 - 0x571308)
5712FA:  ADDW            R8, R11, #0x9CE
5712FE:  ADD             R5, PC; unk_61ECC4
571300:  ADR.W           R11, loc_571B4C
571304:  ADD             R10, PC; unk_61ECD4
571306:  ADR.W           R6, loc_571B5C
57130A:  VLDR            S16, =0.0
57130E:  MOV.W           R9, #0
571312:  VLDR            S20, =-0.025
571316:  LDRB.W          R0, [R8,R9]
57131A:  CMP             R0, #0
57131C:  BEQ             loc_5713CA
57131E:  SUBS            R0, #1
571320:  STRB.W          R0, [R8,R9]
571324:  CMP.W           R9, #3
571328:  LDR             R0, [SP,#0xD0+var_90]
57132A:  VMOV.F32        S0, S16
57132E:  VMOV.F32        S2, S16
571332:  ADD             R2, SP, #0xD0+var_48
571334:  VMOV.F32        S4, S16
571338:  ADD.W           R4, R0, R9
57133C:  LDR             R1, [R0,#0x14]
57133E:  ITTT LS
571340:  VLDRLS          S2, [R10]
571344:  VLDRLS          S0, [R5]
571348:  VMOVLS.F32      S4, S18
57134C:  ADD             R0, SP, #0xD0+var_8C
57134E:  VSTR            S2, [SP,#0xD0+var_48+4]
571352:  VSTR            S0, [SP,#0xD0+var_48]
571356:  VSTR            S4, [SP,#0xD0+var_40]
57135A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
57135E:  LDRD.W          R2, R3, [SP,#0xD0+var_8C]
571362:  MOVS            R1, #8
571364:  LDR             R0, [SP,#0xD0+var_84]
571366:  STR             R0, [SP,#0xD0+var_D0]
571368:  MOVS            R0, #0
57136A:  STRD.W          R0, R0, [SP,#0xD0+var_CC]
57136E:  STRD.W          R0, R0, [SP,#0xD0+var_C4]
571372:  MOVW            R0, #0x4E20
571376:  STR             R0, [SP,#0xD0+var_BC]
571378:  MOV             R0, R4
57137A:  BLX             j__ZN6CRopes12RegisterRopeEjj7CVectorbhbP9CPhysicali; CRopes::RegisterRope(uint,uint,CVector,bool,uchar,bool,CPhysical *,int)
57137E:  LDRB.W          R0, [R8,R9]
571382:  CBNZ            R0, loc_5713CA
571384:  LDR             R0, [SP,#0xD0+var_90]
571386:  CMP.W           R9, #3
57138A:  VMOV.F32        S0, S16
57138E:  ADD             R2, SP, #0xD0+var_58
571390:  VMOV.F32        S2, S16
571394:  VMOV.F32        S4, S16
571398:  LDR             R1, [R0,#0x14]; CVector *
57139A:  ITTT LS
57139C:  VLDRLS          S2, [R6]
5713A0:  VLDRLS          S0, [R11]
5713A4:  VMOVLS.F32      S4, S20
5713A8:  ADD             R0, SP, #0xD0+var_48; CMatrix *
5713AA:  VSTR            S2, [SP,#0xD0+var_58+4]
5713AE:  VSTR            S0, [SP,#0xD0+var_58]
5713B2:  VSTR            S4, [SP,#0xD0+var_50]
5713B6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5713BA:  LDRD.W          R1, R2, [SP,#0xD0+var_48]
5713BE:  MOVS            R0, #0
5713C0:  STR             R0, [SP,#0xD0+var_40]
5713C2:  MOV             R0, R4
5713C4:  MOVS            R3, #0
5713C6:  BLX             j__ZN6CRopes17SetSpeedOfTopNodeEj7CVector; CRopes::SetSpeedOfTopNode(uint,CVector)
5713CA:  ADD.W           R9, R9, #1
5713CE:  ADD.W           R10, R10, #4
5713D2:  ADDS            R5, #4
5713D4:  ADDS            R6, #4
5713D6:  ADD.W           R11, R11, #4
5713DA:  CMP.W           R9, #4
5713DE:  BNE             loc_571316
5713E0:  LDR             R4, [SP,#0xD0+var_90]
5713E2:  MOV             R0, R4; this
5713E4:  BLX             j__ZN8CVehicle11UpdateWinchEv; CVehicle::UpdateWinch(void)
5713E8:  MOV             R0, R4; this
5713EA:  BLX             j__ZN8CVehicle14ProcessWeaponsEv; CVehicle::ProcessWeapons(void)
5713EE:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x5713F6)
5713F2:  ADD             R0, PC; g_InterestingEvents_ptr
5713F4:  LDR             R0, [R0]; g_InterestingEvents
5713F6:  LDRB.W          R0, [R0,#(byte_9EFB04 - 0x9EF9D8)]
5713FA:  LSLS            R0, R0, #0x1F
5713FC:  BEQ             loc_57145E
5713FE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57140A)
571402:  VLDR            S0, =50.0
571406:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
571408:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
57140A:  VLDR            S2, [R0]
57140E:  VDIV.F32        S0, S2, S0
571412:  VMOV.F32        S2, #10.0
571416:  VDIV.F32        S16, S0, S2
57141A:  BLX             rand
57141E:  VMOV            S0, R0
571422:  VLDR            S2, =4.6566e-10
571426:  VCVT.F32.S32    S0, S0
57142A:  LDR             R0, [SP,#0xD0+var_94]
57142C:  CMP             R0, #0
57142E:  VMUL.F32        S0, S0, S2
571432:  VLDR            S2, =0.0
571436:  VADD.F32        S0, S0, S2
57143A:  VADD.F32        S2, S16, S16
57143E:  IT NE
571440:  VMOVNE.F32      S16, S2
571444:  VCMPE.F32       S0, S16
571448:  VMRS            APSR_nzcv, FPSCR
57144C:  BGE             loc_57145E
57144E:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x57145A)
571452:  MOVS            R1, #0x15
571454:  MOV             R2, R4
571456:  ADD             R0, PC; g_InterestingEvents_ptr
571458:  LDR             R0, [R0]; g_InterestingEvents
57145A:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
57145E:  ADD             SP, SP, #0x98
571460:  VPOP            {D8-D10}
571464:  ADD             SP, SP, #4
571466:  POP.W           {R8-R11}
57146A:  POP             {R4-R7,PC}
57146C:  LDRB.W          R0, [R11,#0x3BE]
571470:  ADDW            R4, R11, #0x3BE
571474:  CMP             R0, #0x28 ; '('
571476:  BNE             loc_5714AA
571478:  MOV.W           R0, #0xFFFFFFFF; int
57147C:  MOVS            R1, #0; bool
57147E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
571482:  CBZ             R0, loc_5714EE
571484:  MOV.W           R0, #0xFFFFFFFF; int
571488:  MOVS            R1, #0; bool
57148A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
57148E:  LDR.W           R0, [R0,#0x5A4]
571492:  CMP             R0, #3
571494:  BEQ             loc_5714A8
571496:  MOV.W           R0, #0xFFFFFFFF; int
57149A:  MOVS            R1, #0; bool
57149C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5714A0:  LDR.W           R0, [R0,#0x5A4]
5714A4:  CMP             R0, #4
5714A6:  BNE             loc_5714EE
5714A8:  LDRB            R0, [R4]
5714AA:  CMP             R0, #0x27 ; '''
5714AC:  BNE             loc_5714C0
5714AE:  LDR.W           R10, [R11,#0x420]
5714B2:  CMP.W           R10, #0
5714B6:  BEQ             loc_5714C0
5714B8:  LDRB.W          R0, [R11,#0x99C]
5714BC:  LSLS            R0, R0, #0x1E
5714BE:  BMI             loc_5714FE
5714C0:  LDRB.W          R0, [R11,#0x3A]
5714C4:  CMP             R0, #7
5714C6:  BHI             loc_5714E4
5714C8:  LDRH.W          R0, [R11,#0x26]
5714CC:  MOVW            R1, #0x1F1
5714D0:  CMP             R0, R1
5714D2:  BNE             loc_5714E4
5714D4:  LDRB.W          R0, [R11,#0xA25]
5714D8:  MOV.W           R10, #0
5714DC:  CMP             R0, #0
5714DE:  IT NE
5714E0:  MOVNE           R0, #1
5714E2:  B               loc_571500
5714E4:  MOV.W           R10, #0
5714E8:  MOVS            R1, #0
5714EA:  MOVS            R0, #0
5714EC:  B               loc_571502
5714EE:  MOV.W           R0, #0xFFFFFFFF; int
5714F2:  BLX             j__Z16FindPlayerEntityi; FindPlayerEntity(int)
5714F6:  MOV             R10, R0
5714F8:  MOVS            R1, #1
5714FA:  MOVS            R0, #1
5714FC:  B               loc_571502
5714FE:  MOVS            R0, #1
571500:  MOVS            R1, #0
571502:  LDR.W           R2, [R11,#0x44]
571506:  MOVS            R3, #0
571508:  TST.W           R2, #0x100
57150C:  IT EQ
57150E:  MOVEQ           R3, #1
571510:  ANDS            R0, R3
571512:  STRB.W          R0, [R11,#0xA25]
571516:  AND.W           R0, R1, R3
57151A:  STR             R0, [SP,#0xD0+var_94]
57151C:  BEQ.W           loc_5712CC
571520:  CMP.W           R10, #0
571524:  BEQ             loc_57154C
571526:  LDR.W           R0, [R10,#0x14]
57152A:  ADD.W           R2, R10, #0x48 ; 'H'
57152E:  ADD.W           R1, R0, #0x30 ; '0'
571532:  CMP             R0, #0
571534:  IT EQ
571536:  ADDEQ.W         R1, R10, #4
57153A:  VLDR            D16, [R1]
57153E:  LDR             R0, [R1,#8]
571540:  ADD.W           R1, R10, #0x4C ; 'L'
571544:  STR             R0, [SP,#0xD0+var_40]
571546:  VSTR            D16, [SP,#0xD0+var_48]
57154A:  B               loc_571614
57154C:  LDR.W           R5, [R11,#0x14]
571550:  ADD.W           R6, R5, #0x30 ; '0'
571554:  CMP             R5, #0
571556:  IT EQ
571558:  ADDEQ.W         R6, R11, #4
57155C:  BEQ             loc_57156C
57155E:  VLDR            S0, [R5,#0x10]
571562:  VLDR            S2, [R5,#0x14]
571566:  VLDR            S4, [R5,#0x18]
57156A:  B               loc_57158E
57156C:  LDR.W           R9, [R11,#0x10]
571570:  MOV             R0, R9; x
571572:  BLX             sinf
571576:  MOV             R8, R0
571578:  MOV             R0, R9; x
57157A:  BLX             cosf
57157E:  VMOV            S2, R0
571582:  EOR.W           R0, R8, #0x80000000
571586:  VLDR            S4, =0.0
57158A:  VMOV            S0, R0
57158E:  VMOV.F32        S6, #10.0
571592:  VLDR            S8, [R6]
571596:  VLDR            S10, [R6,#4]
57159A:  CMP             R5, #0
57159C:  VMUL.F32        S4, S4, S6
5715A0:  VMUL.F32        S2, S2, S6
5715A4:  VMUL.F32        S6, S0, S6
5715A8:  VLDR            S0, [R6,#8]
5715AC:  VADD.F32        S0, S4, S0
5715B0:  VADD.F32        S4, S2, S10
5715B4:  VADD.F32        S2, S6, S8
5715B8:  BEQ             loc_5715D8
5715BA:  VLDR            S6, [R5,#0x20]
5715BE:  VLDR            S10, [R5,#0x24]
5715C2:  VLDR            S8, [R5,#0x28]
5715C6:  B               loc_5715E4
5715C8:  DCFS 0.0
5715CC:  DCFS -0.025
5715D0:  DCFS 50.0
5715D4:  DCFS 4.6566e-10
5715D8:  VLDR            S6, =0.0
5715DC:  VMOV.F32        S8, #1.0
5715E0:  VMOV.F32        S10, S6
5715E4:  VMOV.F32        S12, #30.0
5715E8:  ADD.W           R1, R11, #0x4C ; 'L'
5715EC:  ADD.W           R2, R11, #0x48 ; 'H'
5715F0:  VMUL.F32        S10, S10, S12
5715F4:  VMUL.F32        S6, S6, S12
5715F8:  VMUL.F32        S8, S8, S12
5715FC:  VSUB.F32        S4, S4, S10
571600:  VSUB.F32        S2, S2, S6
571604:  VSUB.F32        S0, S0, S8
571608:  VSTR            S4, [SP,#0xD0+var_48+4]
57160C:  VSTR            S2, [SP,#0xD0+var_48]
571610:  VSTR            S0, [SP,#0xD0+var_40]
571614:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x571620)
571618:  LDR.W           R3, [R11,#0xA04]
57161C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57161E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
571620:  LDR.W           R8, [R0]; CTimer::m_snTimeInMilliseconds
571624:  SUB.W           R5, R8, R3
571628:  CMP.W           R5, #0x3E8
57162C:  BLE             loc_5716E4
57162E:  STR.W           R8, [SP,#0xD0+var_B4]
571632:  CMP.W           R5, #0x7D0
571636:  STRD.W          R10, R4, [SP,#0xD0+var_A4]
57163A:  MOV             R4, R11
57163C:  VLDR            S0, [R2]
571640:  ADD.W           R2, R3, #0x3E8
571644:  VLDR            S2, [R1]
571648:  ADDW            R1, R4, #0x9D8
57164C:  VLDR            S4, =50.0
571650:  ADD.W           R3, R4, #0x9F0
571654:  VLDR            S6, [SP,#0xD0+var_48]
571658:  VMUL.F32        S2, S2, S4
57165C:  LDR.W           R11, [R4,#0x9D4]
571660:  VMUL.F32        S0, S0, S4
571664:  LDR.W           R6, [R4,#0x9D8]
571668:  LDR.W           R0, [R4,#0x9DC]
57166C:  LDR.W           R10, [R4,#0x9E0]
571670:  LDR.W           R8, [R4,#0x9EC]
571674:  LDR.W           R9, [R4,#0x9F0]
571678:  LDR.W           LR, [R4,#0x9F4]
57167C:  VADD.F32        S2, S2, S2
571680:  LDR.W           R12, [R4,#0x9F8]
571684:  VADD.F32        S4, S0, S0
571688:  VLDR            S0, [SP,#0xD0+var_48+4]
57168C:  STR             R1, [SP,#0xD0+var_B0]
57168E:  ADDW            R1, R4, #0x9EC
571692:  STR             R1, [SP,#0xD0+var_B8]
571694:  SUB.W           R1, R5, #0x3E8
571698:  ADDW            R4, R4, #0x9D4
57169C:  STRD.W          R4, R3, [SP,#0xD0+var_AC]
5716A0:  VADD.F32        S0, S2, S0
5716A4:  VADD.F32        S2, S4, S6
5716A8:  BLE             loc_571706
5716AA:  VMOV            R3, S0
5716AE:  STR             R3, [SP,#0xD0+var_98]
5716B0:  VMOV            R3, S2
5716B4:  STR             R3, [SP,#0xD0+var_9C]
5716B6:  MOV             R4, R10
5716B8:  MOV             R3, R12
5716BA:  MOV             R10, R0
5716BC:  MOV             R12, LR
5716BE:  MOV             R0, R6
5716C0:  MOV             LR, R9
5716C2:  MOV             R6, R11
5716C4:  MOV             R9, R8
5716C6:  SUB.W           R5, R1, #0x3E8
5716CA:  LDRD.W          R11, R8, [SP,#0xD0+var_9C]
5716CE:  ADD.W           R2, R2, #0x3E8
5716D2:  CMP.W           R1, #0x7D0
5716D6:  MOV             R1, R5
5716D8:  BGT             loc_5716B6
5716DA:  VMOV.F32        S4, S0
5716DE:  VMOV.F32        S6, S2
5716E2:  B               loc_57171A
5716E4:  ADDW            R0, R11, #0x9DC
5716E8:  ADDW            R1, R11, #0x9F4
5716EC:  VLDR            S10, [R1]
5716F0:  ADD.W           R1, R11, #0x9F0
5716F4:  VLDR            S12, [R0]
5716F8:  ADDW            R0, R11, #0x9D8
5716FC:  VLDR            S4, [R1]
571700:  VLDR            S6, [R0]
571704:  B               loc_571768
571706:  LDR             R4, [SP,#0xD0+var_90]
571708:  VMOV            S4, R8
57170C:  VMOV            S6, R11
571710:  MOV             R5, R1
571712:  LDR.W           R3, [R4,#0x9FC]
571716:  LDR.W           R4, [R4,#0x9E4]
57171A:  LDR.W           R11, [SP,#0xD0+var_90]
57171E:  VMOV            S12, R6
571722:  LDRD.W          R1, R8, [SP,#0xD0+var_B8]
571726:  VMOV            S10, R9
57172A:  STR.W           R3, [R11,#0xA00]
57172E:  STR.W           R12, [R11,#0x9FC]
571732:  STR.W           LR, [R11,#0x9F8]
571736:  STR.W           R6, [R11,#0x9DC]
57173A:  STR.W           R0, [R11,#0x9E0]
57173E:  STR.W           R10, [R11,#0x9E4]
571742:  STR.W           R4, [R11,#0x9E8]
571746:  STR.W           R9, [R11,#0x9F4]
57174A:  LDR             R0, [SP,#0xD0+var_B0]
57174C:  VSTR            S6, [R0]
571750:  LDR             R0, [SP,#0xD0+var_A8]
571752:  VSTR            S4, [R0]
571756:  LDR             R0, [SP,#0xD0+var_AC]
571758:  VSTR            S2, [R0]
57175C:  VSTR            S0, [R1]
571760:  STR.W           R2, [R11,#0xA04]
571764:  LDRD.W          R10, R4, [SP,#0xD0+var_A4]
571768:  VMOV            S0, R5
57176C:  VLDR            S2, =1000.0
571770:  VMOV.F32        S8, #1.0
571774:  ADDW            R1, R11, #0xA0C
571778:  VCVT.F32.S32    S0, S0
57177C:  LDR.W           R0, [R11,#0x14]
571780:  CMP             R0, #0
571782:  VDIV.F32        S0, S0, S2
571786:  VSUB.F32        S2, S8, S0
57178A:  VMUL.F32        S4, S0, S4
57178E:  VMUL.F32        S0, S0, S6
571792:  VMUL.F32        S10, S2, S10
571796:  VMUL.F32        S6, S2, S12
57179A:  VADD.F32        S2, S4, S10
57179E:  VADD.F32        S0, S0, S6
5717A2:  VSTR            S2, [R1]
5717A6:  ADDW            R1, R11, #0xA08
5717AA:  VSTR            S0, [R1]
5717AE:  LDR             R1, [SP,#0xD0+var_40]
5717B0:  STR.W           R1, [R11,#0xA10]
5717B4:  ADD.W           R1, R0, #0x30 ; '0'
5717B8:  IT EQ
5717BA:  ADDEQ.W         R1, R11, #4
5717BE:  VLDR            S4, [R1]
5717C2:  VLDR            S6, [R1,#4]
5717C6:  VSUB.F32        S4, S0, S4
5717CA:  VSUB.F32        S6, S2, S6
5717CE:  VMUL.F32        S4, S4, S4
5717D2:  VMUL.F32        S6, S6, S6
5717D6:  VADD.F32        S4, S4, S6
5717DA:  VLDR            S6, =60.0
5717DE:  VSQRT.F32       S4, S4
5717E2:  VCMPE.F32       S4, S6
5717E6:  VMRS            APSR_nzcv, FPSCR
5717EA:  BLE             loc_5717F2
5717EC:  VLDR            S8, =0.0
5717F0:  B               loc_571818
5717F2:  VLDR            S6, =40.0
5717F6:  VCMPE.F32       S4, S6
5717FA:  VMRS            APSR_nzcv, FPSCR
5717FE:  BLT             loc_571818
571800:  VLDR            S6, =-40.0
571804:  VMOV.F32        S8, #-20.0
571808:  VADD.F32        S4, S4, S6
57180C:  VMOV.F32        S6, #1.0
571810:  VDIV.F32        S4, S4, S8
571814:  VADD.F32        S8, S4, S6
571818:  VLDR            S4, =0.9
57181C:  ADDW            R0, R11, #0xA14
571820:  VCMPE.F32       S8, S4
571824:  VSTR            S8, [R0]
571828:  VMRS            APSR_nzcv, FPSCR
57182C:  BLT             loc_571876
57182E:  VLDR            S4, [SP,#0xD0+var_48]
571832:  VLDR            S6, [SP,#0xD0+var_48+4]
571836:  VSUB.F32        S0, S4, S0
57183A:  VSUB.F32        S2, S6, S2
57183E:  VMUL.F32        S0, S0, S0
571842:  VMUL.F32        S2, S2, S2
571846:  VADD.F32        S0, S0, S2
57184A:  VLDR            S2, =49.0
57184E:  VCMPE.F32       S0, S2
571852:  VMRS            APSR_nzcv, FPSCR
571856:  BGT             loc_571876
571858:  LDR.W           R0, [R11,#0xA1C]
57185C:  CMP             R8, R0
57185E:  BLS             loc_57187E
571860:  BLX             rand
571864:  BFC.W           R0, #0xC, #0x14
571868:  MOVW            R1, #0x1194
57186C:  ADD             R0, R8
57186E:  ADD             R0, R1
571870:  STR.W           R0, [R11,#0xA1C]
571874:  B               loc_57187E
571876:  STR.W           R8, [R11,#0x514]
57187A:  STR.W           R8, [R11,#0xA18]
57187E:  LDR             R0, [SP,#0xD0+var_94]
571880:  CMP             R0, #1
571882:  BNE.W           loc_5712CC
571886:  MOV.W           R0, #0xFFFFFFFF; int
57188A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
57188E:  LDR.W           R0, [R0,#0x444]
571892:  LDR             R0, [R0]
571894:  LDR             R0, [R0,#0x2C]
571896:  SUBS            R0, #3
571898:  CMP             R0, #3
57189A:  BHI             loc_5718A4
57189C:  ADR             R1, dword_571B08
57189E:  LDR.W           R8, [R1,R0,LSL#2]
5718A2:  B               loc_5718AC
5718A4:  MOV             R8, #0xF423F
5718AC:  MOV.W           R0, #0xFFFFFFFF; int
5718B0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5718B4:  LDR.W           R0, [R0,#0x444]
5718B8:  LDR             R0, [R0]
5718BA:  LDR             R0, [R0,#0x2C]
5718BC:  CBZ             R0, loc_5718DE
5718BE:  LDR             R0, =(AudioEngine_ptr - 0x5718CC)
5718C0:  MOVS            R1, #0
5718C2:  MOV.W           R2, #0x3F800000
5718C6:  MOV             R3, R11; CEntity *
5718C8:  ADD             R0, PC; AudioEngine_ptr
5718CA:  STRD.W          R1, R2, [SP,#0xD0+var_D0]; unsigned int
5718CE:  STRD.W          R1, R1, [SP,#0xD0+var_C8]; unsigned __int8
5718D2:  MOVS            R2, #0xAE; __int16
5718D4:  LDR             R0, [R0]; AudioEngine ; this
5718D6:  STR             R1, [SP,#0xD0+var_C0]; unsigned __int8
5718D8:  MOVS            R1, #0x34 ; '4'; int
5718DA:  BLX             j__ZN12CAudioEngine10SayPedlessEisP7CEntityjfhhh; CAudioEngine::SayPedless(int,short,CEntity *,uint,float,uchar,uchar,uchar)
5718DE:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
5718E2:  MOV             R5, R0
5718E4:  MOV.W           R0, #0xFFFFFFFF; int
5718E8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5718EC:  MOV             R6, R0
5718EE:  MOV.W           R0, #0xFFFFFFFF; int
5718F2:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
5718F6:  LDRB            R0, [R0,#0x1E]
5718F8:  MOVW            R9, #0x1388
5718FC:  CMP             R10, R6
5718FE:  IT EQ
571900:  LSREQ.W         R9, R8, R5
571904:  LSLS            R0, R0, #0x1D
571906:  BEQ             loc_57191A
571908:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57190E)
57190A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57190C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
57190E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
571910:  STR.W           R0, [R11,#0x514]
571914:  STR.W           R0, [R11,#0xA18]
571918:  B               loc_5712CC
57191A:  MOVS            R0, #0
57191C:  LDR.W           R1, [R11,#0x14]
571920:  MOVT            R0, #0x4060
571924:  ADD             R2, SP, #0xD0+var_68
571926:  STR             R0, [SP,#0xD0+var_68+4]
571928:  MOVS            R0, #0
57192A:  STR             R0, [SP,#0xD0+var_68]
57192C:  MOVS            R0, #0xBF800000
571932:  STR             R0, [SP,#0xD0+var_60]
571934:  ADD             R0, SP, #0xD0+var_58
571936:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
57193A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x571940)
57193C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
57193E:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
571940:  LDR.W           R0, [R11,#0xA18]
571944:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
571946:  ADD.W           R2, R0, R9
57194A:  CMP             R1, R2
57194C:  BLS             loc_57198E
57194E:  LDR             R3, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x571954)
571950:  ADD             R3, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
571952:  LDR             R3, [R3]; CTimer::m_snPreviousTimeInMilliseconds ...
571954:  LDR             R3, [R3]; CTimer::m_snPreviousTimeInMilliseconds
571956:  CMP             R3, R2
571958:  BHI             loc_57198E
57195A:  MOVS            R0, #0
57195C:  ADD             R1, SP, #0xD0+var_48; CVector *
57195E:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; bool
571962:  MOVS            R2, #(stderr+1); CVector *
571964:  STRD.W          R0, R0, [SP,#0xD0+var_C8]; bool
571968:  MOVS            R3, #0; bool
57196A:  STR             R0, [SP,#0xD0+var_C0]; bool
57196C:  ADD             R0, SP, #0xD0+var_58; this
57196E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
571972:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x57197A)
571974:  CMP             R0, #1
571976:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
571978:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
57197A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
57197C:  BNE             loc_571984
57197E:  LDR.W           R0, [R11,#0xA18]
571982:  B               loc_57198E
571984:  MOV             R0, R1
571986:  STR.W           R1, [R11,#0x514]
57198A:  STR.W           R1, [R11,#0xA18]
57198E:  ADD             R0, R9
571990:  CMP             R1, R0
571992:  ITT HI
571994:  LDRHI.W         R0, [R11,#0x514]
571998:  CMPHI           R1, R0
57199A:  BLS.W           loc_5712CC
57199E:  VLDR            D16, [SP,#0xD0+var_48]
5719A2:  LDR             R0, [SP,#0xD0+var_40]
5719A4:  STR             R0, [SP,#0xD0+var_60]
5719A6:  VSTR            D16, [SP,#0xD0+var_68]
5719AA:  BLX             rand
5719AE:  MOV             R5, R0
5719B0:  VLDR            S16, [SP,#0xD0+var_68]
5719B4:  BLX             rand
5719B8:  VLDR            S0, [SP,#0xD0+var_58]
5719BC:  MOV             R6, R0
5719BE:  VLDR            S6, [SP,#0xD0+var_48]
5719C2:  ADD             R0, SP, #0xD0+var_74; this
5719C4:  VLDR            S2, [SP,#0xD0+var_58+4]
5719C8:  VLDR            S8, [SP,#0xD0+var_48+4]
5719CC:  VSUB.F32        S0, S6, S0
5719D0:  VLDR            S4, [SP,#0xD0+var_50]
5719D4:  VLDR            S10, [SP,#0xD0+var_40]
5719D8:  VSUB.F32        S2, S8, S2
5719DC:  VLDR            S18, [SP,#0xD0+var_68+4]
5719E0:  VSUB.F32        S4, S10, S4
5719E4:  VSTR            S0, [SP,#0xD0+var_74]
5719E8:  VSTR            S2, [SP,#0xD0+var_70]
5719EC:  VSTR            S4, [SP,#0xD0+var_6C]
5719F0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5719F4:  MOV             R0, #0xFFFFFF80
5719F8:  UXTAB.W         R1, R0, R5
5719FC:  UXTAB.W         R0, R0, R6
571A00:  VLDR            S4, =0.02
571A04:  VMOV            S0, R1
571A08:  ADD             R1, SP, #0xD0+var_68; CVector *
571A0A:  VMOV            S2, R0
571A0E:  MOVS            R2, #0x14; int
571A10:  VCVT.F32.S32    S0, S0
571A14:  VCVT.F32.S32    S2, S2
571A18:  VLDR            S8, [SP,#0xD0+var_70]
571A1C:  VMOV.F32        S6, #3.0
571A20:  VLDR            S10, [SP,#0xD0+var_6C]
571A24:  VLDR            D16, [SP,#0xD0+var_58]
571A28:  LDR             R0, [SP,#0xD0+var_50]
571A2A:  VSTR            D16, [SP,#0xD0+var_80]
571A2E:  VMUL.F32        S0, S0, S4
571A32:  VMUL.F32        S2, S2, S4
571A36:  VLDR            S4, [SP,#0xD0+var_74]
571A3A:  VMUL.F32        S8, S8, S6
571A3E:  VMUL.F32        S4, S4, S6
571A42:  VMUL.F32        S6, S10, S6
571A46:  VLDR            S10, [SP,#0xD0+var_60]
571A4A:  VADD.F32        S0, S16, S0
571A4E:  VADD.F32        S2, S18, S2
571A52:  VADD.F32        S10, S6, S10
571A56:  VADD.F32        S0, S4, S0
571A5A:  VADD.F32        S2, S8, S2
571A5E:  VSTR            S0, [SP,#0xD0+var_68]
571A62:  VLDR            S0, [SP,#0xD0+var_80]
571A66:  STR             R0, [SP,#0xD0+var_78]
571A68:  ADD             R0, SP, #0xD0+var_80; CVector *
571A6A:  VSTR            S2, [SP,#0xD0+var_68+4]
571A6E:  VADD.F32        S0, S4, S0
571A72:  VLDR            S2, [SP,#0xD0+var_80+4]
571A76:  VSTR            S10, [SP,#0xD0+var_60]
571A7A:  VLDR            S10, [SP,#0xD0+var_78]
571A7E:  VADD.F32        S2, S8, S2
571A82:  VADD.F32        S4, S6, S10
571A86:  VSTR            S0, [SP,#0xD0+var_80]
571A8A:  VSTR            S2, [SP,#0xD0+var_80+4]
571A8E:  VSTR            S4, [SP,#0xD0+var_78]
571A92:  BLX             j__Z22FireOneInstantHitRoundP7CVectorS0_i; FireOneInstantHitRound(CVector *,CVector *,int)
571A96:  LDR             R0, =(AudioEngine_ptr - 0x571AA2)
571A98:  MOVS            R1, #0x91
571A9A:  MOVS            R2, #0x1F
571A9C:  MOV             R3, R11
571A9E:  ADD             R0, PC; AudioEngine_ptr
571AA0:  LDR             R0, [R0]; AudioEngine
571AA2:  BLX             j__ZN12CAudioEngine17ReportWeaponEventEi11eWeaponTypeP9CPhysical; CAudioEngine::ReportWeaponEvent(int,eWeaponType,CPhysical *)
571AA6:  BLX             rand
571AAA:  VMOV            S0, R0
571AAE:  VLDR            S2, =4.6566e-10
571AB2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x571ABE)
571AB4:  MOVS            R1, #0x96
571AB6:  VCVT.F32.S32    S0, S0
571ABA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
571ABC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
571ABE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
571AC0:  VMUL.F32        S0, S0, S2
571AC4:  VLDR            S2, =0.0
571AC8:  VADD.F32        S0, S0, S2
571ACC:  VLDR            S2, =0.15
571AD0:  VCMPE.F32       S0, S2
571AD4:  VMRS            APSR_nzcv, FPSCR
571AD8:  IT LT
571ADA:  MOVLT.W         R1, #0x190
571ADE:  ADD             R0, R1
571AE0:  STR.W           R0, [R11,#0x514]
571AE4:  B.W             loc_5712CC
