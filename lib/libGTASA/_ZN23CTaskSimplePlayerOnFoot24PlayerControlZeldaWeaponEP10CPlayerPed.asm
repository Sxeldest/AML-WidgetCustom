; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot24PlayerControlZeldaWeaponEP10CPlayerPed
; Address            : 0x539474 - 0x5396F0
; =========================================================

539474:  PUSH            {R4-R7,LR}
539476:  ADD             R7, SP, #0xC
539478:  PUSH.W          {R8-R10}
53947C:  VPUSH           {D8-D11}
539480:  SUB             SP, SP, #0x10; float
539482:  MOV             R4, R1
539484:  LDR.W           R0, [R4,#0x440]; this
539488:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
53948C:  MOV             R5, R0
53948E:  CMP             R5, #0
539490:  BEQ.W           loc_5396E4
539494:  LDR.W           R0, [R4,#0x100]
539498:  CMP             R0, #0
53949A:  BNE.W           loc_5396E4
53949E:  MOV             R0, R4; this
5394A0:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5394A4:  MOV             R8, R0
5394A6:  MOVS            R0, #0
5394A8:  STRD.W          R0, R0, [SP,#0x48+var_40]
5394AC:  LDR             R0, [R5,#0x30]
5394AE:  LDRB            R0, [R0,#0x18]
5394B0:  LSLS            R0, R0, #0x1D
5394B2:  BPL             loc_5394C0
5394B4:  MOV             R0, R4; this
5394B6:  BLX             j__ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed; CGameLogic::IsPlayerUse2PlayerControls(CPlayerPed *)
5394BA:  CMP             R0, #0
5394BC:  BEQ.W           loc_5395E8
5394C0:  MOV             R0, R8; this
5394C2:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
5394C6:  VMOV            S0, R0
5394CA:  MOV             R0, R8; this
5394CC:  VCVT.F32.S32    S18, S0
5394D0:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
5394D4:  VMOV            S0, R0
5394D8:  VCVT.F32.S32    S0, S0
5394DC:  VLDR            S2, =0.0078125
5394E0:  VSTR            S0, [SP,#0x48+var_3C]
5394E4:  VMUL.F32        S4, S0, S2
5394E8:  VSTR            S18, [SP,#0x48+var_40]
5394EC:  VMUL.F32        S16, S18, S2
5394F0:  VMOV.F32        S18, S4
5394F4:  MOV             R0, R4; this
5394F6:  VSTR            S18, [SP,#0x48+var_3C]
5394FA:  VSTR            S16, [SP,#0x48+var_40]
5394FE:  BLX             j__ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed; CGameLogic::IsPlayerUse2PlayerControls(CPlayerPed *)
539502:  CMP             R0, #1
539504:  BNE.W           loc_53968A
539508:  VMUL.F32        S0, S18, S18
53950C:  VMUL.F32        S2, S16, S16
539510:  VADD.F32        S0, S2, S0
539514:  VSQRT.F32       S20, S0
539518:  VCMPE.F32       S20, #0.0
53951C:  VMRS            APSR_nzcv, FPSCR
539520:  BLE             loc_539606
539522:  VMOV            R0, S16
539526:  MOVS            R1, #0; float
539528:  VMOV            R3, S18; float
53952C:  MOV.W           R10, #0
539530:  EOR.W           R2, R0, #0x80000000; float
539534:  MOVS            R0, #0; this
539536:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53953A:  LDR             R1, =(TheCamera_ptr - 0x539544)
53953C:  VMOV            S0, R0
539540:  ADD             R1, PC; TheCamera_ptr
539542:  LDR             R1, [R1]; TheCamera ; float
539544:  VLDR            S2, [R1,#0x14C]
539548:  VSUB.F32        S0, S0, S2
53954C:  VMOV            R0, S0; this
539550:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
539554:  MOV             R6, R0
539556:  BLX             sinf
53955A:  MOV             R9, R0
53955C:  MOV             R0, R6; x
53955E:  BLX             cosf
539562:  MOV             R2, R0
539564:  LDR.W           R0, [R4,#0x720]
539568:  EOR.W           R1, R9, #0x80000000
53956C:  ADD.W           R9, R4, #0x720
539570:  CMP             R0, #0
539572:  BEQ             loc_53960C
539574:  MOV             R0, R4
539576:  MOVS            R3, #0
539578:  VMOV            S18, R2
53957C:  STR.W           R10, [SP,#0x48+var_48]
539580:  VMOV            S22, R1
539584:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
539588:  LDR             R1, [R4,#0x14]
53958A:  CMP             R0, #0
53958C:  VLDR            S6, =0.0
539590:  VLDR            S0, [R1]
539594:  VLDR            S2, [R1,#4]
539598:  VMUL.F32        S0, S0, S22
53959C:  VLDR            S4, [R1,#8]
5395A0:  VMUL.F32        S2, S18, S2
5395A4:  VMUL.F32        S4, S4, S6
5395A8:  VADD.F32        S0, S0, S2
5395AC:  VMOV.F32        S2, S6
5395B0:  IT NE
5395B2:  VMOVNE.F32      S2, S20
5395B6:  VADD.F32        S0, S0, S4
5395BA:  VMUL.F32        S16, S2, S0
5395BE:  VSTR            S16, [SP,#0x48+var_40]
5395C2:  VLDR            S0, [R1,#0x10]
5395C6:  VLDR            S4, [R1,#0x14]
5395CA:  VMUL.F32        S0, S0, S22
5395CE:  VLDR            S8, [R1,#0x18]
5395D2:  VMUL.F32        S4, S18, S4
5395D6:  VMUL.F32        S6, S8, S6
5395DA:  VADD.F32        S0, S0, S4
5395DE:  VADD.F32        S0, S0, S6
5395E2:  VMUL.F32        S0, S2, S0
5395E6:  B               loc_539638
5395E8:  LDR             R0, =(TheCamera_ptr - 0x5395EE)
5395EA:  ADD             R0, PC; TheCamera_ptr
5395EC:  LDR             R0, [R0]; TheCamera ; this
5395EE:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
5395F2:  VLDR            S18, =0.0
5395F6:  CMP             R0, #0
5395F8:  VMOV.F32        S0, S18
5395FC:  VMOV.F32        S16, S18
539600:  BNE.W           loc_5394DC
539604:  B               loc_5394F4
539606:  ADD.W           R9, R4, #0x720
53960A:  B               loc_539640
53960C:  VMOV            S0, R6
539610:  ADD.W           R0, R4, #0x560
539614:  MOVS            R3, #0
539616:  VSTR            S0, [R0]
53961A:  MOV             R0, R4
53961C:  STR.W           R10, [SP,#0x48+var_48]
539620:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
539624:  VLDR            S16, =0.0
539628:  CMP             R0, #0
53962A:  VMOV.F32        S0, S16
53962E:  IT NE
539630:  VMOVNE.F32      S0, S20
539634:  STR.W           R10, [SP,#0x48+var_40]
539638:  VNEG.F32        S18, S0
53963C:  VSTR            S18, [SP,#0x48+var_3C]
539640:  LDR.W           R0, [R9]
539644:  CBZ             R0, loc_53968A
539646:  LDR             R1, [R4,#0x14]
539648:  LDR             R2, [R0,#0x14]
53964A:  ADD.W           R3, R1, #0x30 ; '0'
53964E:  CMP             R1, #0
539650:  IT EQ
539652:  ADDEQ           R3, R4, #4
539654:  ADD.W           R1, R2, #0x30 ; '0'
539658:  CMP             R2, #0
53965A:  VLDR            S0, [R3]
53965E:  VLDR            S2, [R3,#4]
539662:  IT EQ
539664:  ADDEQ           R1, R0, #4
539666:  VLDR            S4, [R1]
53966A:  VLDR            S6, [R1,#4]
53966E:  VSUB.F32        S0, S4, S0
539672:  VSUB.F32        S2, S6, S2
539676:  VMOV            R0, S0
53967A:  VMOV            R1, S2; x
53967E:  EOR.W           R0, R0, #0x80000000; y
539682:  BLX             atan2f
539686:  STR.W           R0, [R4,#0x560]
53968A:  VMUL.F32        S0, S18, S18
53968E:  VMUL.F32        S2, S16, S16
539692:  VADD.F32        S0, S2, S0
539696:  VMOV.F32        S2, #1.0
53969A:  VSQRT.F32       S0, S0
53969E:  VCMPE.F32       S0, S2
5396A2:  VMRS            APSR_nzcv, FPSCR
5396A6:  BLE             loc_5396BC
5396A8:  VDIV.F32        S0, S2, S0
5396AC:  VMUL.F32        S2, S0, S18
5396B0:  VMUL.F32        S0, S16, S0
5396B4:  VSTR            S2, [SP,#0x48+var_3C]
5396B8:  VSTR            S0, [SP,#0x48+var_40]
5396BC:  ADD             R1, SP, #0x48+var_40
5396BE:  MOV             R0, R5
5396C0:  BLX             j__ZN17CTaskSimpleUseGun14ControlGunMoveEP9CVector2D; CTaskSimpleUseGun::ControlGunMove(CVector2D *)
5396C4:  MOV             R0, R4; this
5396C6:  BLX             j__ZN15CTaskSimpleDuck10CanPedDuckEP4CPed; CTaskSimpleDuck::CanPedDuck(CPed *)
5396CA:  CMP             R0, #1
5396CC:  BNE             loc_5396E4
5396CE:  MOV             R0, R8; this
5396D0:  MOV             R1, R4; CPed *
5396D2:  BLX             j__ZN4CPad12DuckJustDownEP4CPed; CPad::DuckJustDown(CPed *)
5396D6:  CMP             R0, #1
5396D8:  BNE             loc_5396E4
5396DA:  LDR.W           R0, [R4,#0x440]; this
5396DE:  MOVS            R1, #0; unsigned __int16
5396E0:  BLX             j__ZN16CPedIntelligence20SetTaskDuckSecondaryEt; CPedIntelligence::SetTaskDuckSecondary(ushort)
5396E4:  ADD             SP, SP, #0x10
5396E6:  VPOP            {D8-D11}
5396EA:  POP.W           {R8-R10}
5396EE:  POP             {R4-R7,PC}
