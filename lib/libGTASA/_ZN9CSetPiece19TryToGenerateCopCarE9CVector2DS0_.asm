; =========================================================
; Game Engine Function: _ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_
; Address            : 0x35F310 - 0x35F46C
; =========================================================

35F310:  PUSH            {R4-R7,LR}
35F312:  ADD             R7, SP, #0xC
35F314:  PUSH.W          {R8-R11}
35F318:  SUB             SP, SP, #4
35F31A:  VPUSH           {D8-D10}
35F31E:  SUB             SP, SP, #0x68
35F320:  MOVS            R0, #(stderr+1); this
35F322:  MOV             R8, R3
35F324:  MOV             R9, R2
35F326:  MOV             R10, R1
35F328:  MOV.W           R11, #1
35F32C:  BLX             j__ZN10CStreaming21GetDefaultCopCarModelEj; CStreaming::GetDefaultCopCarModel(uint)
35F330:  MOV             R5, R0
35F332:  MOVS            R6, #0
35F334:  CMP             R5, #0
35F336:  BLT.W           loc_35F45C
35F33A:  MOVW            R0, #(elf_hash_bucket+0x8A0); this
35F33E:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
35F342:  MOV             R1, R5; int
35F344:  MOVS            R2, #1; unsigned __int8
35F346:  MOVS            R3, #1; unsigned __int8
35F348:  MOV             R4, R0
35F34A:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
35F34E:  MOVS            R0, #0
35F350:  MOVS            R1, #0
35F352:  MOVT            R0, #0x447A
35F356:  STRD.W          R10, R9, [SP,#0xA0+var_44]
35F35A:  STR             R0, [SP,#0xA0+var_3C]
35F35C:  ADD             R0, SP, #0xA0+var_44; CVector *
35F35E:  ADD             R2, SP, #0xA0+var_7C; int
35F360:  ADD             R3, SP, #0xA0+var_80; int
35F362:  MOVT            R1, #0xC47A; int
35F366:  STRD.W          R11, R6, [SP,#0xA0+var_A0]; int
35F36A:  STRD.W          R6, R6, [SP,#0xA0+var_98]; int
35F36E:  STRD.W          R11, R6, [SP,#0xA0+var_90]; int
35F372:  STR             R6, [SP,#0xA0+var_88]; int
35F374:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
35F378:  VMOV            S16, R10
35F37C:  CMP             R0, #1
35F37E:  VMOV            S18, R9
35F382:  BNE             loc_35F39E
35F384:  LDR             R0, [R4]
35F386:  VLDR            S20, [SP,#0xA0+var_74]
35F38A:  LDR.W           R1, [R0,#0xD8]
35F38E:  MOV             R0, R4
35F390:  BLX             R1
35F392:  VMOV            S0, R0
35F396:  VADD.F32        S0, S20, S0
35F39A:  VSTR            S0, [SP,#0xA0+var_3C]
35F39E:  LDR             R0, [R7,#arg_0]
35F3A0:  VMOV            S2, R8
35F3A4:  MOVS            R5, #0
35F3A6:  VSUB.F32        S2, S2, S16
35F3AA:  STR             R5, [SP,#0xA0+var_48]
35F3AC:  VMOV            S0, R0
35F3B0:  ADD             R0, SP, #0xA0+var_50; this
35F3B2:  VSUB.F32        S0, S0, S18
35F3B6:  VSTR            S0, [SP,#0xA0+var_4C]
35F3BA:  VSTR            S2, [SP,#0xA0+var_50]
35F3BE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
35F3C2:  LDR             R0, [R4,#0x14]
35F3C4:  SUB.W           R3, R7, #-var_82; bool
35F3C8:  LDR             R1, [SP,#0xA0+var_50]
35F3CA:  STR             R1, [R0,#0x10]
35F3CC:  LDR             R0, [R4,#0x14]
35F3CE:  LDR             R1, [SP,#0xA0+var_4C]
35F3D0:  STR             R1, [R0,#0x14]
35F3D2:  LDR             R0, [R4,#0x14]
35F3D4:  STR             R5, [R0,#0x18]
35F3D6:  LDR             R0, [R4,#0x14]
35F3D8:  STR             R1, [R0]
35F3DA:  MOV.W           R1, #0x3F800000
35F3DE:  VLDR            S0, [SP,#0xA0+var_50]
35F3E2:  LDR             R0, [R4,#0x14]
35F3E4:  VNEG.F32        S0, S0
35F3E8:  VSTR            S0, [R0,#4]
35F3EC:  LDR             R0, [R4,#0x14]
35F3EE:  STR             R5, [R0,#8]
35F3F0:  LDR             R0, [R4,#0x14]
35F3F2:  STR             R5, [R0,#0x20]
35F3F4:  LDR             R0, [R4,#0x14]
35F3F6:  STR             R5, [R0,#0x24]
35F3F8:  LDR             R0, [R4,#0x14]
35F3FA:  STR             R1, [R0,#0x28]
35F3FC:  LDR             R0, [R4,#0x14]
35F3FE:  LDR             R1, [SP,#0xA0+var_44]
35F400:  STR             R1, [R0,#0x30]
35F402:  LDR             R0, [R4,#0x14]
35F404:  LDR             R2, [SP,#0xA0+var_40]
35F406:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35F410)
35F408:  STR             R2, [R0,#0x34]
35F40A:  LDR             R0, [R4,#0x14]
35F40C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
35F40E:  LDR             R2, [SP,#0xA0+var_3C]
35F410:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
35F412:  STR             R2, [R0,#0x38]
35F414:  MOVS            R2, #word_10
35F416:  LDRSH.W         R0, [R4,#0x26]
35F41A:  LDR.W           R0, [R1,R0,LSL#2]
35F41E:  LDR             R0, [R0,#0x2C]
35F420:  LDR             R1, [R0,#0x24]; CVector *
35F422:  MOVS            R0, #1
35F424:  STRD.W          R2, R5, [SP,#0xA0+var_A0]; __int16 *
35F428:  MOVS            R2, #0; float
35F42A:  STRD.W          R5, R0, [SP,#0xA0+var_98]; CEntity **
35F42E:  STRD.W          R0, R5, [SP,#0xA0+var_90]; bool
35F432:  ADD             R0, SP, #0xA0+var_44; this
35F434:  STR             R5, [SP,#0xA0+var_88]; bool
35F436:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
35F43A:  LDRH.W          R0, [R7,#var_82]
35F43E:  CBZ             R0, loc_35F44C
35F440:  LDR             R0, [R4]
35F442:  LDR             R1, [R0,#4]
35F444:  MOV             R0, R4
35F446:  BLX             R1
35F448:  MOVS            R6, #0
35F44A:  B               loc_35F45C
35F44C:  MOV             R0, R4; this
35F44E:  MOVS            R1, #1; unsigned __int8
35F450:  BLX             j__ZN8CVehicle22ChangeLawEnforcerStateEh; CVehicle::ChangeLawEnforcerState(uchar)
35F454:  MOV             R0, R4; this
35F456:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
35F45A:  MOV             R6, R4
35F45C:  MOV             R0, R6
35F45E:  ADD             SP, SP, #0x68 ; 'h'
35F460:  VPOP            {D8-D10}
35F464:  ADD             SP, SP, #4
35F466:  POP.W           {R8-R11}
35F46A:  POP             {R4-R7,PC}
