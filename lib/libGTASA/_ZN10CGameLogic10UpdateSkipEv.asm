; =========================================================
; Game Engine Function: _ZN10CGameLogic10UpdateSkipEv
; Address            : 0x30920C - 0x30954E
; =========================================================

30920C:  PUSH            {R4-R7,LR}
30920E:  ADD             R7, SP, #0xC
309210:  PUSH.W          {R11}
309214:  VPUSH           {D8-D9}
309218:  SUB             SP, SP, #0x18
30921A:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309220)
30921C:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
30921E:  LDR             R0, [R0]; CGameLogic::SkipState ...
309220:  LDR             R0, [R0]; CGameLogic::SkipState
309222:  CMP             R0, #1
309224:  BNE             loc_30926A
309226:  ADD             R0, SP, #0x38+var_30; int
309228:  MOV.W           R1, #0xFFFFFFFF
30922C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
309230:  LDR             R0, =(_ZN10CGameLogic15SkipDestinationE_ptr - 0x30923E)
309232:  VMOV.F32        S2, #25.0
309236:  VLDR            D16, [SP,#0x38+var_30]
30923A:  ADD             R0, PC; _ZN10CGameLogic15SkipDestinationE_ptr
30923C:  LDR             R0, [R0]; CGameLogic::SkipDestination ...
30923E:  VLDR            D17, [R0]
309242:  VSUB.F32        D16, D16, D17
309246:  VMUL.F32        D0, D16, D16
30924A:  VADD.F32        S0, S0, S1
30924E:  VSQRT.F32       S0, S0
309252:  VCMPE.F32       S0, S2
309256:  VMRS            APSR_nzcv, FPSCR
30925A:  BGE             loc_309262
30925C:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309262)
30925E:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309260:  B               loc_309298
309262:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309268)
309264:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309266:  LDR             R0, [R0]; CGameLogic::SkipState ...
309268:  LDR             R0, [R0]; CGameLogic::SkipState
30926A:  SUBS            R0, #1; switch 4 cases
30926C:  CMP             R0, #3
30926E:  BHI.W           def_309272; jumptable 00309272 default case
309272:  TBB.W           [PC,R0]; switch jump
309276:  DCB 2; jump table for switch statement
309277:  DCB 0x1F
309278:  DCB 0x88
309279:  DCB 2
30927A:  LDR             R1, =(_ZN10CGameLogic9SkipTimerE_ptr - 0x309286); jumptable 00309272 cases 1,4
30927C:  MOVW            R3, #0x88B8
309280:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x309288)
309282:  ADD             R1, PC; _ZN10CGameLogic9SkipTimerE_ptr
309284:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
309286:  LDR             R1, [R1]; CGameLogic::SkipTimer ...
309288:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
30928A:  LDR             R1, [R1]; CGameLogic::SkipTimer
30928C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
30928E:  ADD             R1, R3
309290:  CMP             R2, R1
309292:  BLS             loc_3092A0
309294:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x30929A)
309296:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309298:  LDR             R0, [R0]; CGameLogic::SkipState ...
30929A:  MOVS            R1, #0
30929C:  STR             R1, [R0]; CGameLogic::SkipState
30929E:  B               def_309272; jumptable 00309272 default case
3092A0:  CMP             R0, #3; switch 4 cases
3092A2:  BHI.W           def_309272; jumptable 00309272 default case
3092A6:  TBB.W           [PC,R0]; switch jump
3092AA:  DCB 2; jump table for switch statement
3092AB:  DCB 5
3092AC:  DCB 0x6E
3092AD:  DCB 2
3092AE:  BLX             j__ZN10CGameLogic18SkipCanBeActivatedEv; jumptable 003092A6 cases 0,3
3092B2:  B               def_309272; jumptable 00309272 default case
3092B4:  LDR             R0, =(_ZN10CGameLogic9SkipTimerE_ptr - 0x3092BC); jumptable 00309272 case 2
3092B6:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3092BE)
3092B8:  ADD             R0, PC; _ZN10CGameLogic9SkipTimerE_ptr
3092BA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3092BC:  LDR             R0, [R0]; CGameLogic::SkipTimer ...
3092BE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3092C0:  LDR             R0, [R0]; this
3092C2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3092C4:  CMP             R1, R0
3092C6:  BLS.W           def_309272; jumptable 00309272 default case
3092CA:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
3092CE:  LDR             R0, =(_ZN10CGameLogic15SkipDestinationE_ptr - 0x3092D4)
3092D0:  ADD             R0, PC; _ZN10CGameLogic15SkipDestinationE_ptr
3092D2:  LDR             R4, [R0]; CGameLogic::SkipDestination ...
3092D4:  MOV             R0, R4; this
3092D6:  BLX             j__ZN10CStreaming18LoadSceneCollisionERK7CVector; CStreaming::LoadSceneCollision(CVector const&)
3092DA:  MOV             R0, R4; this
3092DC:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
3092E0:  ADD             R0, SP, #0x38+var_30; int
3092E2:  MOV.W           R1, #0xFFFFFFFF
3092E6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3092EA:  VLDR            S0, [R4]
3092EE:  MOV.W           R0, #0xFFFFFFFF; int
3092F2:  VLDR            S4, [SP,#0x38+var_30]
3092F6:  MOVS            R1, #0; bool
3092F8:  VLDR            S2, [R4,#4]
3092FC:  MOVS            R6, #0
3092FE:  VLDR            S6, [SP,#0x38+var_30+4]
309302:  VSUB.F32        S0, S0, S4
309306:  VSUB.F32        S2, S2, S6
30930A:  VMUL.F32        S0, S0, S0
30930E:  VMUL.F32        S2, S2, S2
309312:  VADD.F32        S0, S0, S2
309316:  VSQRT.F32       S16, S0
30931A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30931E:  CMP             R0, #0
309320:  BEQ             loc_3093A4
309322:  MOV.W           R0, #0xFFFFFFFF; int
309326:  MOVS            R1, #0; bool
309328:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30932C:  MOV             R1, R0; CVector *
30932E:  LDR             R0, =(_ZN10CGameLogic15SkipDestinationE_ptr - 0x309334)
309330:  ADD             R0, PC; _ZN10CGameLogic15SkipDestinationE_ptr
309332:  LDR             R4, [R0]; CGameLogic::SkipDestination ...
309334:  MOV             R0, R4; this
309336:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
30933A:  MOV.W           R0, #0xFFFFFFFF; int
30933E:  MOVS            R1, #0; bool
309340:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309344:  LDR             R5, [R0]
309346:  LDM.W           R4, {R1-R3}; CGameLogic::SkipDestination
30934A:  LDR             R5, [R5,#0x3C]
30934C:  STR             R6, [SP,#0x38+var_38]
30934E:  BLX             R5
309350:  MOV.W           R0, #0xFFFFFFFF; int
309354:  MOVS            R1, #0; bool
309356:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30935A:  LDR             R1, =(_ZN10CGameLogic26SkipDestinationOrientationE_ptr - 0x309364)
30935C:  VLDR            S0, =3.1416
309360:  ADD             R1, PC; _ZN10CGameLogic26SkipDestinationOrientationE_ptr
309362:  LDR             R2, [R0,#0x14]
309364:  LDR             R1, [R1]; CGameLogic::SkipDestinationOrientation ...
309366:  CMP             R2, #0
309368:  VLDR            S2, [R1]
30936C:  VMUL.F32        S0, S2, S0
309370:  VLDR            S2, =180.0
309374:  VDIV.F32        S0, S0, S2
309378:  BEQ             loc_3093FC
30937A:  VMOV            R1, S0; x
30937E:  MOV             R0, R2; this
309380:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
309384:  B               loc_309400
309386:  LDR             R0, =(_ZN10CGameLogic9SkipTimerE_ptr - 0x30938E); jumptable 00309272 case 3
309388:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x309390)
30938A:  ADD             R0, PC; _ZN10CGameLogic9SkipTimerE_ptr
30938C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30938E:  LDR             R0, [R0]; CGameLogic::SkipTimer ...
309390:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
309392:  LDR             R0, [R0]; CGameLogic::SkipTimer
309394:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
309396:  CMP             R1, R0
309398:  BLS.W           def_309272; jumptable 00309272 default case
30939C:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x3093A4)
30939E:  MOVS            R1, #0
3093A0:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
3093A2:  B               loc_309502
3093A4:  MOV.W           R0, #0xFFFFFFFF; int
3093A8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3093AC:  MOV             R1, R0; CVector *
3093AE:  LDR             R0, =(_ZN10CGameLogic15SkipDestinationE_ptr - 0x3093B4)
3093B0:  ADD             R0, PC; _ZN10CGameLogic15SkipDestinationE_ptr
3093B2:  LDR             R4, [R0]; CGameLogic::SkipDestination ...
3093B4:  MOV             R0, R4; this
3093B6:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
3093BA:  MOV.W           R0, #0xFFFFFFFF; int
3093BE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3093C2:  LDR             R5, [R0]
3093C4:  LDM.W           R4, {R1-R3}; CGameLogic::SkipDestination
3093C8:  LDR             R5, [R5,#0x3C]
3093CA:  STR             R6, [SP,#0x38+var_38]
3093CC:  BLX             R5
3093CE:  LDRD.W          R0, R1, [R4]; float
3093D2:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3093D6:  VMOV.F32        S0, #1.0
3093DA:  VMOV            S2, R0
3093DE:  MOV.W           R0, #0xFFFFFFFF; int
3093E2:  VADD.F32        S18, S2, S0
3093E6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3093EA:  LDR             R1, [R0,#0x14]
3093EC:  ADD.W           R2, R1, #0x30 ; '0'
3093F0:  CMP             R1, #0
3093F2:  IT EQ
3093F4:  ADDEQ           R2, R0, #4
3093F6:  VSTR            S18, [R2,#8]
3093FA:  B               loc_3094B8
3093FC:  VSTR            S0, [R0,#0x10]
309400:  MOV.W           R0, #0xFFFFFFFF; int
309404:  MOVS            R1, #0; bool
309406:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30940A:  LDR.W           R4, [R0,#0x5A0]
30940E:  MOV.W           R0, #0xFFFFFFFF; int
309412:  MOVS            R1, #0; bool
309414:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309418:  CMP             R4, #9
30941A:  BNE             loc_309422
30941C:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
309420:  B               loc_309436
309422:  LDR.W           R0, [R0,#0x5A0]
309426:  CBNZ            R0, loc_309436
309428:  MOV.W           R0, #0xFFFFFFFF; int
30942C:  MOVS            R1, #0; bool
30942E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309432:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
309436:  MOV.W           R0, #0xFFFFFFFF; int
30943A:  MOVS            R1, #0; bool
30943C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309440:  MOV             R4, R0
309442:  MOV.W           R0, #0xFFFFFFFF; int
309446:  MOVS            R1, #0; bool
309448:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
30944C:  LDR             R0, [R0,#0x14]
30944E:  MOVS            R1, #0; bool
309450:  VLDR            S0, =0.4
309454:  VLDR            S4, [R0,#0x14]
309458:  VLDR            S6, [R0,#0x18]
30945C:  VLDR            S2, [R0,#0x10]
309460:  VMUL.F32        S4, S4, S0
309464:  VMUL.F32        S6, S6, S0
309468:  MOV.W           R0, #0xFFFFFFFF; int
30946C:  VMUL.F32        S0, S2, S0
309470:  VSTR            S0, [R4,#0x48]
309474:  VSTR            S4, [R4,#0x4C]
309478:  VSTR            S6, [R4,#0x50]
30947C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
309480:  LDR             R1, [R0,#0x14]
309482:  CBZ             R1, loc_309496
309484:  LDRD.W          R0, R1, [R1,#0x10]; x
309488:  EOR.W           R0, R0, #0x80000000; y
30948C:  BLX             atan2f
309490:  VMOV            S0, R0
309494:  B               loc_30949A
309496:  VLDR            S0, [R0,#0x10]
30949A:  LDR             R0, =(TheCamera_ptr - 0x3094A4)
30949C:  VLDR            S2, =-1.5708
3094A0:  ADD             R0, PC; TheCamera_ptr
3094A2:  VADD.F32        S0, S0, S2
3094A6:  LDR             R0, [R0]; TheCamera
3094A8:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3094AC:  ADD.W           R1, R1, R1,LSL#5
3094B0:  ADD.W           R0, R0, R1,LSL#4
3094B4:  VSTR            S0, [R0,#0x204]
3094B8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3094C0)
3094BA:  LDR             R1, =(_ZN10CGameLogic9SkipTimerE_ptr - 0x3094C2)
3094BC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3094BE:  ADD             R1, PC; _ZN10CGameLogic9SkipTimerE_ptr
3094C0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3094C2:  LDR             R1, [R1]; unsigned __int16 *
3094C4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3094C6:  ADDW            R0, R0, #0x5DC
3094CA:  STR             R0, [R1]; CGameLogic::SkipTimer
3094CC:  MOVS            R0, #0; this
3094CE:  BLX             j__ZN4CHud10SetMessageEPt; CHud::SetMessage(ushort *)
3094D2:  VMOV.F32        S0, #20.0
3094D6:  VMOV.F32        S2, #23.0
3094DA:  VDIV.F32        S0, S16, S0
3094DE:  VADD.F32        S0, S0, S2
3094E2:  VCVT.U32.F32    S16, S0
3094E6:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
3094EA:  VMOV            R0, S16; this
3094EE:  BLX             j__ZN10CGameLogic8PassTimeEj; CGameLogic::PassTime(uint)
3094F2:  LDR             R0, =(_ZN10CGameLogic24SkipToBeFinishedByScriptE_ptr - 0x3094F8)
3094F4:  ADD             R0, PC; _ZN10CGameLogic24SkipToBeFinishedByScriptE_ptr
3094F6:  LDR             R0, [R0]; CGameLogic::SkipToBeFinishedByScript ...
3094F8:  LDRB            R0, [R0]; CGameLogic::SkipToBeFinishedByScript
3094FA:  CBZ             R0, loc_309524
3094FC:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309504)
3094FE:  MOVS            R1, #5; int
309500:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309502:  LDR             R0, [R0]; CGameLogic::SkipState ...
309504:  STR             R1, [R0]; CGameLogic::SkipState
309506:  MOVS            R0, #0; this
309508:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30950C:  LDRH.W          R1, [R0,#0x110]
309510:  BIC.W           R1, R1, #0x100
309514:  STRH.W          R1, [R0,#0x110]
309518:  ADD             SP, SP, #0x18; jumptable 00309272 default case
30951A:  VPOP            {D8-D9}
30951E:  POP.W           {R11}
309522:  POP             {R4-R7,PC}
309524:  LDR             R0, =(TheCamera_ptr - 0x309530)
309526:  MOVS            R1, #0; unsigned __int8
309528:  MOVS            R2, #0; unsigned __int8
30952A:  MOVS            R3, #0; unsigned __int8
30952C:  ADD             R0, PC; TheCamera_ptr
30952E:  LDR             R4, [R0]; TheCamera
309530:  MOV             R0, R4; this
309532:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
309536:  MOV             R0, R4; this
309538:  MOV.W           R1, #0x3FC00000; float
30953C:  MOVS            R2, #1; __int16
30953E:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
309542:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x30954A)
309544:  MOVS            R1, #3
309546:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309548:  LDR             R0, [R0]; CGameLogic::SkipState ...
30954A:  STR             R1, [R0]; CGameLogic::SkipState
30954C:  B               def_309272; jumptable 00309272 default case
