; =========================================================
; Game Engine Function: _ZNK15CPedGroupPlacer14PlaceChatGroupE8ePedTypeiRK7CVectori
; Address            : 0x4B80D8 - 0x4B8668
; =========================================================

4B80D8:  PUSH            {R4-R7,LR}
4B80DA:  ADD             R7, SP, #0xC
4B80DC:  PUSH.W          {R8-R11}
4B80E0:  SUB             SP, SP, #4
4B80E2:  VPUSH           {D8-D15}
4B80E6:  SUB             SP, SP, #0x98
4B80E8:  MOV             R0, R2
4B80EA:  MOV             R4, R3
4B80EC:  CMP             R2, #2
4B80EE:  STR             R1, [SP,#0xF8+var_D8]
4B80F0:  STR             R0, [SP,#0xF8+var_CC]
4B80F2:  BGE             loc_4B80FA
4B80F4:  MOV.W           R11, #0
4B80F8:  B               loc_4B8658
4B80FA:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B8106)
4B80FE:  MOV.W           R8, #0
4B8102:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B8104:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B8106:  LDRB            R1, [R0]; CPedGroups::ms_activeGroups
4B8108:  CBZ             R1, loc_4B8172
4B810A:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B8112)
4B810E:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B8110:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B8112:  LDRB.W          R1, [R0,#(byte_9EF9B1 - 0x9EF9B0)]!
4B8116:  CBZ             R1, loc_4B8176
4B8118:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B8120)
4B811C:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B811E:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B8120:  LDRB.W          R1, [R0,#(byte_9EF9B2 - 0x9EF9B0)]!
4B8124:  CBZ             R1, loc_4B817A
4B8126:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B812E)
4B812A:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B812C:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B812E:  LDRB.W          R1, [R0,#(byte_9EF9B3 - 0x9EF9B0)]!
4B8132:  CBZ             R1, loc_4B817E
4B8134:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B813C)
4B8138:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B813A:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B813C:  LDRB.W          R1, [R0,#(byte_9EF9B4 - 0x9EF9B0)]!
4B8140:  CBZ             R1, loc_4B8182
4B8142:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B814A)
4B8146:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B8148:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B814A:  LDRB.W          R1, [R0,#(byte_9EF9B5 - 0x9EF9B0)]!
4B814E:  CBZ             R1, loc_4B8186
4B8150:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B8158)
4B8154:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B8156:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B8158:  LDRB.W          R1, [R0,#(byte_9EF9B6 - 0x9EF9B0)]!
4B815C:  CBZ             R1, loc_4B818A
4B815E:  LDR.W           R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4B8166)
4B8162:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4B8164:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4B8166:  LDRB.W          R1, [R0,#(byte_9EF9B7 - 0x9EF9B0)]!
4B816A:  CMP             R1, #0
4B816C:  BNE             loc_4B80F4
4B816E:  MOVS            R3, #7
4B8170:  B               loc_4B818C
4B8172:  MOVS            R3, #0
4B8174:  B               loc_4B818C
4B8176:  MOVS            R3, #1
4B8178:  B               loc_4B818C
4B817A:  MOVS            R3, #2
4B817C:  B               loc_4B818C
4B817E:  MOVS            R3, #3
4B8180:  B               loc_4B818C
4B8182:  MOVS            R3, #4
4B8184:  B               loc_4B818C
4B8186:  MOVS            R3, #5
4B8188:  B               loc_4B818C
4B818A:  MOVS            R3, #6
4B818C:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B819E)
4B8190:  MOV.W           R2, #0x2D4
4B8194:  MOV.W           R9, #1
4B8198:  STR             R3, [SP,#0xF8+var_DC]
4B819A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B819C:  STRB.W          R9, [R0]; CPedGroups::ms_activeGroups ...
4B81A0:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B81A2:  SMLABB.W        R5, R3, R2, R1
4B81A6:  ADD.W           R10, R5, #8
4B81AA:  MOV             R0, R10; this
4B81AC:  BLX             j__ZN19CPedGroupMembership5FlushEv; CPedGroupMembership::Flush(void)
4B81B0:  ADD.W           R11, R5, #0x30 ; '0'
4B81B4:  MOV             R0, R11; this
4B81B6:  BLX             j__ZN21CPedGroupIntelligence5FlushEv; CPedGroupIntelligence::Flush(void)
4B81BA:  LDR             R0, [SP,#0xF8+var_CC]
4B81BC:  VLDR            S2, =6.2832
4B81C0:  VMOV            S0, R0
4B81C4:  VCVT.F32.S32    S0, S0
4B81C8:  VDIV.F32        S16, S2, S0
4B81CC:  VMOV            R0, S16; x
4B81D0:  BLX             cosf
4B81D4:  VMOV.F32        S18, #1.0
4B81D8:  MOV             R1, R4; CVector *
4B81DA:  VMOV            S0, R0
4B81DE:  LDR.W           R0, =(TheCamera_ptr - 0x4B81EE)
4B81E2:  VMOV.F32        S2, #0.5
4B81E6:  STRB.W          R8, [R5,#0x2D0]
4B81EA:  ADD             R0, PC; TheCamera_ptr
4B81EC:  LDR             R0, [R0]; TheCamera ; this
4B81EE:  VSUB.F32        S0, S18, S0
4B81F2:  VDIV.F32        S0, S2, S0
4B81F6:  VSQRT.F32       S20, S0
4B81FA:  VMOV            R6, S20
4B81FE:  MOV             R2, R6; float
4B8200:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4B8204:  CMP             R0, #1
4B8206:  BNE             loc_4B8250
4B8208:  MOV.W           R0, #0xFFFFFFFF; int
4B820C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B8210:  LDR             R1, [R0,#0x14]
4B8212:  VLDR            D16, [R4]
4B8216:  ADD.W           R2, R1, #0x30 ; '0'
4B821A:  CMP             R1, #0
4B821C:  IT EQ
4B821E:  ADDEQ           R2, R0, #4
4B8220:  VLDR            D17, [R2]
4B8224:  VSUB.F32        D16, D16, D17
4B8228:  VMUL.F32        D0, D16, D16
4B822C:  VADD.F32        S0, S0, S1
4B8230:  VSQRT.F32       S22, S0
4B8234:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4B8238:  VLDR            S0, =42.5
4B823C:  VMOV            S2, R0
4B8240:  VMUL.F32        S0, S2, S0
4B8244:  VCMPE.F32       S22, S0
4B8248:  VMRS            APSR_nzcv, FPSCR
4B824C:  BLT.W           loc_4B80F4
4B8250:  MOV             R0, R4; this
4B8252:  MOV             R1, R6; CVector *
4B8254:  MOV.W           R2, #0xFFFFFFFF; float
4B8258:  MOVS            R3, #0; int
4B825A:  STR.W           R11, [SP,#0xF8+var_E0]
4B825E:  MOV.W           R11, #0
4B8262:  STRD.W          R9, R9, [SP,#0xF8+var_F8]; CEntity **
4B8266:  STR.W           R9, [SP,#0xF8+var_F0]; unsigned __int8
4B826A:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4B826E:  CMP             R0, #1
4B8270:  BNE.W           loc_4B8658
4B8274:  LDR             R0, [SP,#0xF8+var_D8]
4B8276:  VMOV.I32        Q7, #0
4B827A:  STR.W           R10, [SP,#0xF8+var_E4]; bool
4B827E:  ADD.W           R10, SP, #0xF8+var_80
4B8282:  SUBS            R0, #7
4B8284:  STR             R0, [SP,#0xF8+var_D0]
4B8286:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4B829A)
4B828A:  MOV.W           R8, #0
4B828E:  VLDR            S22, =4.6566e-10
4B8292:  MOV.W           R9, #0
4B8296:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4B8298:  VLDR            S24, =0.4
4B829C:  VLDR            S26, =-0.2
4B82A0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4B82A2:  STR             R0, [SP,#0xF8+var_D4]
4B82A4:  BLX             rand
4B82A8:  VMOV            S0, R0
4B82AC:  VMOV            S2, R9
4B82B0:  VCVT.F32.S32    S0, S0
4B82B4:  VCVT.F32.S32    S2, S2
4B82B8:  VMUL.F32        S0, S0, S22
4B82BC:  VMUL.F32        S2, S16, S2
4B82C0:  VMUL.F32        S0, S0, S24
4B82C4:  VADD.F32        S0, S0, S26
4B82C8:  VMUL.F32        S0, S16, S0
4B82CC:  VADD.F32        S0, S2, S0
4B82D0:  VMOV            R6, S0
4B82D4:  MOV             R0, R6; x
4B82D6:  BLX             cosf
4B82DA:  MOV             R5, R0
4B82DC:  MOV             R0, R6; x
4B82DE:  BLX             sinf
4B82E2:  MOV             R6, R0
4B82E4:  BLX             rand
4B82E8:  VMOV            S0, R0
4B82EC:  SUB.W           R3, R7, #-var_91; float
4B82F0:  VMOV            S2, R5
4B82F4:  VCVT.F32.S32    S0, S0
4B82F8:  VMOV            S4, R6
4B82FC:  VMUL.F32        S0, S0, S22
4B8300:  VMUL.F32        S0, S0, S24
4B8304:  VADD.F32        S0, S0, S26
4B8308:  VMUL.F32        S0, S20, S0
4B830C:  VADD.F32        S0, S20, S0
4B8310:  VMUL.F32        S17, S2, S0
4B8314:  VLDR            S2, [R4,#4]
4B8318:  VMUL.F32        S19, S4, S0
4B831C:  VLDR            S0, [R4]
4B8320:  VLDR            S4, [R4,#8]
4B8324:  STR.W           R11, [SP,#0xF8+var_F8]; bool *
4B8328:  VADD.F32        S4, S4, S18
4B832C:  VADD.F32        S0, S0, S17
4B8330:  VADD.F32        S2, S2, S19
4B8334:  VMOV            R2, S4; float
4B8338:  VMOV            R0, S0; this
4B833C:  VMOV            R1, S2; float
4B8340:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4B8344:  LDRB.W          R1, [R7,#var_91]; int
4B8348:  CMP             R1, #0
4B834A:  BEQ.W           loc_4B857C
4B834E:  VMOV            S0, R0
4B8352:  VLDR            S2, [R4]
4B8356:  VLDR            S4, [R4,#4]
4B835A:  CMP.W           R9, #0
4B835E:  VADD.F32        S0, S0, S18
4B8362:  VLDR            S6, [R4,#8]
4B8366:  VADD.F32        S4, S19, S4
4B836A:  VADD.F32        S2, S17, S2
4B836E:  VMAX.F32        D0, D3, D0
4B8372:  VSTR            S0, [SP,#0xF8+var_98]
4B8376:  VSTR            S4, [SP,#0xF8+var_A0+4]
4B837A:  VSTR            S2, [SP,#0xF8+var_A0]
4B837E:  BNE             loc_4B838C
4B8380:  VLDR            D16, [SP,#0xF8+var_A0]
4B8384:  LDR             R0, [SP,#0xF8+var_98]
4B8386:  STR             R0, [SP,#0xF8+var_88]
4B8388:  VSTR            D16, [SP,#0xF8+var_91+1]
4B838C:  LDR             R0, [SP,#0xF8+var_D0]; this
4B838E:  BLX             j__ZN11CPopulation20ChooseGangOccupationEi; CPopulation::ChooseGangOccupation(int)
4B8392:  MOV             R5, R0
4B8394:  LDR             R0, [SP,#0xF8+var_D4]
4B8396:  LDR.W           R0, [R0,R5,LSL#2]
4B839A:  LDR             R1, [R0,#0x34]
4B839C:  CMP             R1, #0
4B839E:  BEQ.W           loc_4B857C
4B83A2:  ADD             R3, SP, #0xF8+var_C8; int
4B83A4:  MOVS            R2, #9; float
4B83A6:  MOV             R1, R3
4B83A8:  VST1.64         {D14-D15}, [R1]!
4B83AC:  VST1.64         {D14-D15}, [R1]
4B83B0:  STR.W           R11, [SP,#0xF8+var_A8]
4B83B4:  LDR             R0, [R0,#0x2C]
4B83B6:  LDR             R1, [R0,#0x24]; CVector *
4B83B8:  MOVS            R0, #(stderr+1)
4B83BA:  STRD.W          R0, R0, [SP,#0xF8+var_F8]; float
4B83BE:  STR             R0, [SP,#0xF8+var_F0]; unsigned __int8
4B83C0:  ADD             R0, SP, #0xF8+var_A0; this
4B83C2:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4B83C6:  LDR             R0, [SP,#0xF8+var_C8]
4B83C8:  CBZ             R0, loc_4B83E2
4B83CA:  CMP.W           R8, #1
4B83CE:  BLT             loc_4B84AE
4B83D0:  MOVS            R1, #0
4B83D2:  LDR.W           R2, [R10,R1,LSL#2]
4B83D6:  CMP             R0, R2
4B83D8:  BEQ             loc_4B83E2
4B83DA:  ADDS            R1, #1
4B83DC:  CMP             R1, R8
4B83DE:  BLT             loc_4B83D2
4B83E0:  B               loc_4B84AE
4B83E2:  LDR             R0, [SP,#0xF8+var_C4]
4B83E4:  CBZ             R0, loc_4B83FE
4B83E6:  CMP.W           R8, #1
4B83EA:  BLT             loc_4B84AE
4B83EC:  MOVS            R1, #0
4B83EE:  LDR.W           R2, [R10,R1,LSL#2]
4B83F2:  CMP             R0, R2
4B83F4:  BEQ             loc_4B83FE
4B83F6:  ADDS            R1, #1
4B83F8:  CMP             R1, R8
4B83FA:  BLT             loc_4B83EE
4B83FC:  B               loc_4B84AE
4B83FE:  LDR             R0, [SP,#0xF8+var_C0]
4B8400:  CBZ             R0, loc_4B841A
4B8402:  CMP.W           R8, #1
4B8406:  BLT             loc_4B84AE
4B8408:  MOVS            R1, #0
4B840A:  LDR.W           R2, [R10,R1,LSL#2]
4B840E:  CMP             R0, R2
4B8410:  BEQ             loc_4B841A
4B8412:  ADDS            R1, #1
4B8414:  CMP             R1, R8
4B8416:  BLT             loc_4B840A
4B8418:  B               loc_4B84AE
4B841A:  LDR             R0, [SP,#0xF8+var_BC]
4B841C:  CBZ             R0, loc_4B8436
4B841E:  CMP.W           R8, #1
4B8422:  BLT             loc_4B84AE
4B8424:  MOVS            R1, #0
4B8426:  LDR.W           R2, [R10,R1,LSL#2]
4B842A:  CMP             R0, R2
4B842C:  BEQ             loc_4B8436
4B842E:  ADDS            R1, #1
4B8430:  CMP             R1, R8
4B8432:  BLT             loc_4B8426
4B8434:  B               loc_4B84AE
4B8436:  LDR             R0, [SP,#0xF8+var_B8]
4B8438:  CBZ             R0, loc_4B8454
4B843A:  CMP.W           R8, #1
4B843E:  BLT             loc_4B84AE
4B8440:  MOVS            R1, #0
4B8442:  LDR.W           R2, [R10,R1,LSL#2]
4B8446:  CMP             R0, R2
4B8448:  BEQ             loc_4B8454
4B844A:  ADDS            R1, #1
4B844C:  MOVS            R6, #1
4B844E:  CMP             R1, R8
4B8450:  BLT             loc_4B8442
4B8452:  B               loc_4B84B0
4B8454:  LDR             R0, [SP,#0xF8+var_B4]
4B8456:  CBZ             R0, loc_4B8472
4B8458:  CMP.W           R8, #1
4B845C:  BLT             loc_4B84AE
4B845E:  MOVS            R1, #0
4B8460:  LDR.W           R2, [R10,R1,LSL#2]
4B8464:  CMP             R0, R2
4B8466:  BEQ             loc_4B8472
4B8468:  ADDS            R1, #1
4B846A:  MOVS            R6, #1
4B846C:  CMP             R1, R8
4B846E:  BLT             loc_4B8460
4B8470:  B               loc_4B84B0
4B8472:  LDR             R0, [SP,#0xF8+var_B0]
4B8474:  CBZ             R0, loc_4B8490
4B8476:  CMP.W           R8, #1
4B847A:  BLT             loc_4B84AE
4B847C:  MOVS            R1, #0
4B847E:  LDR.W           R2, [R10,R1,LSL#2]
4B8482:  CMP             R0, R2
4B8484:  BEQ             loc_4B8490
4B8486:  ADDS            R1, #1
4B8488:  MOVS            R6, #1
4B848A:  CMP             R1, R8
4B848C:  BLT             loc_4B847E
4B848E:  B               loc_4B84B0
4B8490:  LDR             R0, [SP,#0xF8+var_AC]
4B8492:  CBZ             R0, loc_4B84EE
4B8494:  CMP.W           R8, #1
4B8498:  BLT             loc_4B84AE
4B849A:  MOVS            R1, #0
4B849C:  LDR.W           R2, [R10,R1,LSL#2]
4B84A0:  CMP             R0, R2
4B84A2:  BEQ             loc_4B84EE
4B84A4:  ADDS            R1, #1
4B84A6:  MOVS            R6, #1
4B84A8:  CMP             R1, R8
4B84AA:  BLT             loc_4B849C
4B84AC:  B               loc_4B84B0
4B84AE:  MOVS            R6, #1
4B84B0:  CMP.W           R9, #0
4B84B4:  BEQ             loc_4B8530
4B84B6:  ADD             R0, SP, #0xF8+var_A0; this
4B84B8:  ADD             R1, SP, #0xF8+var_91+1; CVector *
4B84BA:  MOVS            R2, #(stderr+1); CVector *
4B84BC:  MOVS            R3, #0; bool
4B84BE:  STRD.W          R11, R11, [SP,#0xF8+var_F8]; bool
4B84C2:  STRD.W          R11, R11, [SP,#0xF8+var_F0]; bool
4B84C6:  STR.W           R11, [SP,#0xF8+var_E8]; bool
4B84CA:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
4B84CE:  VLDR            S0, [SP,#0xF8+var_88]
4B84D2:  MOVS            R1, #0
4B84D4:  VLDR            S2, [SP,#0xF8+var_98]
4B84D8:  VSUB.F32        S0, S2, S0
4B84DC:  VABS.F32        S0, S0
4B84E0:  VCMPE.F32       S0, S18
4B84E4:  VMRS            APSR_nzcv, FPSCR
4B84E8:  IT LT
4B84EA:  MOVLT           R1, #1
4B84EC:  B               loc_4B8534
4B84EE:  LDR             R0, [SP,#0xF8+var_A8]
4B84F0:  CMP             R0, #0
4B84F2:  MOV             R6, R0
4B84F4:  IT NE
4B84F6:  MOVNE           R6, #1
4B84F8:  BEQ             loc_4B84B0
4B84FA:  CMP.W           R8, #1
4B84FE:  BLT             loc_4B84B0
4B8500:  MOVS            R1, #0
4B8502:  LDR.W           R2, [R10,R1,LSL#2]
4B8506:  CMP             R0, R2
4B8508:  BEQ             loc_4B8528
4B850A:  ADDS            R1, #1
4B850C:  MOVS            R6, #1
4B850E:  CMP             R1, R8
4B8510:  BLT             loc_4B8502
4B8512:  B               loc_4B84B0
4B8514:  DCFS 6.2832
4B8518:  DCFS 42.5
4B851C:  DCFS 4.6566e-10
4B8520:  DCFS 0.4
4B8524:  DCFS -0.2
4B8528:  MOVS            R6, #0
4B852A:  CMP.W           R9, #0
4B852E:  BNE             loc_4B84B6
4B8530:  MOVS            R0, #1
4B8532:  MOVS            R1, #1
4B8534:  EOR.W           R0, R0, #1
4B8538:  ORRS            R0, R6
4B853A:  BNE             loc_4B857C
4B853C:  CBZ             R1, loc_4B857C
4B853E:  LDR             R0, [SP,#0xF8+var_D8]
4B8540:  ADD             R2, SP, #0xF8+var_A0
4B8542:  MOV             R1, R5
4B8544:  MOVS            R3, #0
4B8546:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4B854A:  MOV             R6, R0
4B854C:  CBZ             R6, loc_4B8576
4B854E:  STR.W           R6, [R10,R8,LSL#2]
4B8552:  LDRD.W          R0, R1, [R4]; float
4B8556:  LDRD.W          R2, R3, [SP,#0xF8+var_A0]; float
4B855A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4B855E:  LDR             R1, [R6,#0x18]
4B8560:  STR.W           R0, [R6,#0x55C]
4B8564:  STR.W           R0, [R6,#0x560]
4B8568:  MOV             R0, R1
4B856A:  MOVS            R1, #0
4B856C:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4B8570:  ADD.W           R8, R8, #1
4B8574:  B               loc_4B857C
4B8576:  MOVS            R0, #0; this
4B8578:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
4B857C:  LDR             R0, [SP,#0xF8+var_CC]
4B857E:  ADD.W           R9, R9, #1
4B8582:  CMP             R9, R0
4B8584:  BNE.W           loc_4B82A4
4B8588:  CMP.W           R8, #1
4B858C:  BLT.W           loc_4B80F4
4B8590:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B859E)
4B8592:  MOV.W           R2, #0x2D4
4B8596:  LDR.W           R9, [SP,#0xF8+var_DC]
4B859A:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B859C:  LDR             R1, =(_ZN30CPedGroupDefaultTaskAllocators22ms_standStillAllocatorE_ptr - 0x4B85A4)
4B859E:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4B85A0:  ADD             R1, PC; _ZN30CPedGroupDefaultTaskAllocators22ms_standStillAllocatorE_ptr
4B85A2:  SMLABB.W        R4, R9, R2, R0
4B85A6:  LDR             R0, [R1]; this
4B85A8:  MOVS            R2, #0; CPed *
4B85AA:  ADD.W           R1, R4, #0x21C; CPedTaskPair *
4B85AE:  STR.W           R0, [R4,#0x2BC]
4B85B2:  BLX             j__ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed; CPedGroupIntelligence::FlushTasks(CPedTaskPair *,CPed *)
4B85B6:  LDR.W           R0, [R4,#0x2BC]
4B85BA:  LDR             R6, [SP,#0xF8+var_E0]
4B85BC:  CBZ             R0, loc_4B85C8
4B85BE:  LDR             R2, [R0]
4B85C0:  LDR             R1, [R6]
4B85C2:  LDR             R3, [R2]
4B85C4:  MOVS            R2, #0
4B85C6:  BLX             R3
4B85C8:  LDR             R4, [SP,#0xF8+var_80]
4B85CA:  LDR             R5, [SP,#0xF8+var_E4]
4B85CC:  MOV             R1, R4; CPed *
4B85CE:  MOV             R0, R5; this
4B85D0:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
4B85D4:  MOV             R0, R5; this
4B85D6:  BLX             j__ZN19CPedGroupMembership7ProcessEv; CPedGroupMembership::Process(void)
4B85DA:  MOV             R0, R6; this
4B85DC:  BLX             j__ZN21CPedGroupIntelligence7ProcessEv; CPedGroupIntelligence::Process(void)
4B85E0:  MOVS            R0, #word_28; this
4B85E2:  LDR.W           R5, [R4,#0x440]
4B85E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4B85EA:  MOV             R1, R9; int
4B85EC:  MOVS            R2, #1; bool
4B85EE:  MOV             R4, R0
4B85F0:  MOV.W           R11, #1
4B85F4:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
4B85F8:  ADDS            R0, R5, #4; this
4B85FA:  MOV             R1, R4; CTask *
4B85FC:  MOVS            R2, #3; int
4B85FE:  MOVS            R3, #0; bool
4B8600:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4B8604:  CMP.W           R8, #2
4B8608:  BLT             loc_4B8658
4B860A:  ADD.W           R6, R10, #4
4B860E:  LDRD.W          R10, R11, [SP,#0xF8+var_E4]
4B8612:  SUB.W           R5, R8, #1
4B8616:  LDR.W           R4, [R6],#4
4B861A:  MOV             R0, R10; this
4B861C:  MOV             R1, R4; CPed *
4B861E:  BLX             j__ZN19CPedGroupMembership11AddFollowerEP4CPed; CPedGroupMembership::AddFollower(CPed *)
4B8622:  MOV             R0, R10; this
4B8624:  BLX             j__ZN19CPedGroupMembership7ProcessEv; CPedGroupMembership::Process(void)
4B8628:  MOV             R0, R11; this
4B862A:  BLX             j__ZN21CPedGroupIntelligence7ProcessEv; CPedGroupIntelligence::Process(void)
4B862E:  MOVS            R0, #word_28; this
4B8630:  LDR.W           R8, [R4,#0x440]
4B8634:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4B8638:  MOV             R1, R9; int
4B863A:  MOVS            R2, #0; bool
4B863C:  MOV             R4, R0
4B863E:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
4B8642:  ADD.W           R0, R8, #4; this
4B8646:  MOV             R1, R4; CTask *
4B8648:  MOVS            R2, #3; int
4B864A:  MOVS            R3, #0; bool
4B864C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4B8650:  SUBS            R5, #1
4B8652:  BNE             loc_4B8616
4B8654:  MOV.W           R11, #1
4B8658:  MOV             R0, R11
4B865A:  ADD             SP, SP, #0x98
4B865C:  VPOP            {D8-D15}
4B8660:  ADD             SP, SP, #4
4B8662:  POP.W           {R8-R11}
4B8666:  POP             {R4-R7,PC}
