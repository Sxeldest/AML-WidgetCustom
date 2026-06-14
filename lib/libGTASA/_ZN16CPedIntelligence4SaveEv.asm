; =========================================================
; Game Engine Function: _ZN16CPedIntelligence4SaveEv
; Address            : 0x4851F4 - 0x4854DC
; =========================================================

4851F4:  PUSH            {R4-R7,LR}
4851F6:  ADD             R7, SP, #0xC
4851F8:  PUSH.W          {R8-R11}
4851FC:  SUB             SP, SP, #0x24
4851FE:  MOV             R10, R0
485200:  LDR             R0, =(UseDataFence_ptr - 0x48520E)
485202:  ADD.W           R5, R10, #0xC
485206:  LDRD.W          R1, R4, [R10,#4]
48520A:  ADD             R0, PC; UseDataFence_ptr
48520C:  CMP             R4, #0
48520E:  LDM             R5, {R2,R3,R5}
485210:  IT NE
485212:  MOVNE           R4, #1
485214:  CMP             R1, #0
485216:  LDR             R0, [R0]; UseDataFence
485218:  IT NE
48521A:  ADDNE           R4, #1
48521C:  CMP             R2, #0
48521E:  LDRB.W          R8, [R0]
485222:  IT NE
485224:  ADDNE           R4, #1
485226:  CMP             R3, #0
485228:  IT NE
48522A:  ADDNE           R4, #1
48522C:  CMP             R5, #0
48522E:  IT NE
485230:  ADDNE           R4, #1
485232:  CMP.W           R8, #0
485236:  BEQ             loc_485276
485238:  LDR             R0, =(currentSaveFenceCount_ptr - 0x485244)
48523A:  MOVS            R3, #0
48523C:  LDR             R1, =(UseDataFence_ptr - 0x485246)
48523E:  LDR             R2, =(DataFence_ptr - 0x485248)
485240:  ADD             R0, PC; currentSaveFenceCount_ptr
485242:  ADD             R1, PC; UseDataFence_ptr
485244:  ADD             R2, PC; DataFence_ptr
485246:  LDR             R0, [R0]; currentSaveFenceCount
485248:  LDR.W           R9, [R1]; UseDataFence
48524C:  LDR             R1, [R2]; DataFence
48524E:  LDR             R2, [R0]
485250:  STRB.W          R3, [R9]
485254:  LDRH            R1, [R1]
485256:  ADDS            R3, R2, #1
485258:  STR             R3, [R0]
48525A:  MOVS            R0, #2; byte_count
48525C:  ADDS            R6, R2, R1
48525E:  BLX             malloc
485262:  MOV             R5, R0
485264:  MOVS            R1, #(stderr+2); void *
485266:  STRH            R6, [R5]
485268:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48526C:  MOV             R0, R5; p
48526E:  BLX             free
485272:  STRB.W          R8, [R9]
485276:  MOVS            R0, #4; byte_count
485278:  BLX             malloc
48527C:  MOV             R5, R0
48527E:  MOVS            R1, #byte_4; void *
485280:  STR             R4, [R5]
485282:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485286:  MOV             R0, R5; p
485288:  BLX             free
48528C:  CMP             R4, #0
48528E:  BEQ.W           loc_4853B2
485292:  LDR             R0, =(UseDataFence_ptr - 0x48529E)
485294:  MOV.W           R11, #1
485298:  LDR             R1, =(UseDataFence_ptr - 0x4852A2)
48529A:  ADD             R0, PC; UseDataFence_ptr
48529C:  LDR             R2, =(DataFence_ptr - 0x4852A6)
48529E:  ADD             R1, PC; UseDataFence_ptr
4852A0:  LDR             R0, [R0]; UseDataFence
4852A2:  ADD             R2, PC; DataFence_ptr
4852A4:  STR             R0, [SP,#0x40+var_34]
4852A6:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4852AC)
4852A8:  ADD             R0, PC; currentSaveFenceCount_ptr
4852AA:  LDR             R0, [R0]; currentSaveFenceCount
4852AC:  STR             R0, [SP,#0x40+var_38]
4852AE:  LDR             R0, [R1]; UseDataFence
4852B0:  STR             R0, [SP,#0x40+var_3C]
4852B2:  LDR             R0, [R2]; DataFence
4852B4:  STR             R0, [SP,#0x40+var_40]
4852B6:  LDR             R0, =(UseDataFence_ptr - 0x4852BE)
4852B8:  LDR             R1, =(UseDataFence_ptr - 0x4852C2)
4852BA:  ADD             R0, PC; UseDataFence_ptr
4852BC:  LDR             R2, =(DataFence_ptr - 0x4852C6)
4852BE:  ADD             R1, PC; UseDataFence_ptr
4852C0:  LDR             R0, [R0]; UseDataFence
4852C2:  ADD             R2, PC; DataFence_ptr
4852C4:  STR             R0, [SP,#0x40+var_24]
4852C6:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4852CC)
4852C8:  ADD             R0, PC; currentSaveFenceCount_ptr
4852CA:  LDR             R0, [R0]; currentSaveFenceCount
4852CC:  STR             R0, [SP,#0x40+var_28]
4852CE:  LDR             R0, [R1]; UseDataFence
4852D0:  STR             R0, [SP,#0x40+var_2C]
4852D2:  LDR             R0, [R2]; DataFence
4852D4:  STR             R0, [SP,#0x40+var_30]
4852D6:  LDR.W           R5, [R10,R11,LSL#2]
4852DA:  CBZ             R5, loc_485350
4852DC:  LDR             R0, [R5]
4852DE:  LDR             R1, [R0,#0x14]
4852E0:  MOV             R0, R5
4852E2:  BLX             R1
4852E4:  MOV             R6, R0
4852E6:  LDR             R0, [SP,#0x40+var_24]
4852E8:  LDRB.W          R8, [R0]
4852EC:  CMP.W           R8, #0
4852F0:  BEQ             loc_485330
4852F2:  LDR.W           R9, [SP,#0x40+var_2C]
4852F6:  MOVS            R1, #0
4852F8:  LDR             R3, [SP,#0x40+var_28]
4852FA:  STR             R6, [SP,#0x40+var_20]
4852FC:  MOV             R6, R10
4852FE:  STRB.W          R1, [R9]
485302:  LDR             R1, [SP,#0x40+var_30]
485304:  LDR             R0, [R3]
485306:  LDRH            R1, [R1]
485308:  ADDS            R2, R0, #1
48530A:  STR             R2, [R3]
48530C:  ADD.W           R10, R0, R1
485310:  MOVS            R0, #2; byte_count
485312:  BLX             malloc
485316:  MOV             R4, R0
485318:  MOVS            R1, #(stderr+2); void *
48531A:  STRH.W          R10, [R4]
48531E:  MOV             R10, R6
485320:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485324:  MOV             R0, R4; p
485326:  BLX             free
48532A:  LDR             R6, [SP,#0x40+var_20]
48532C:  STRB.W          R8, [R9]
485330:  MOVS            R0, #4; byte_count
485332:  BLX             malloc
485336:  MOV             R4, R0
485338:  MOVS            R1, #byte_4; void *
48533A:  STR             R6, [R4]
48533C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485340:  MOV             R0, R4; p
485342:  BLX             free
485346:  LDR             R0, [R5]
485348:  LDR             R1, [R0,#0x20]
48534A:  MOV             R0, R5
48534C:  BLX             R1
48534E:  B               loc_4853A8
485350:  LDR             R0, [SP,#0x40+var_34]
485352:  LDRB            R4, [R0]
485354:  CBZ             R4, loc_48538C
485356:  LDR.W           R9, [SP,#0x40+var_3C]
48535A:  MOVS            R1, #0
48535C:  LDR             R3, [SP,#0x40+var_38]
48535E:  STRB.W          R1, [R9]
485362:  LDR             R1, [SP,#0x40+var_40]
485364:  LDR             R0, [R3]
485366:  LDRH            R1, [R1]
485368:  ADDS            R2, R0, #1
48536A:  STR             R2, [R3]
48536C:  ADD.W           R8, R0, R1
485370:  MOVS            R0, #2; byte_count
485372:  BLX             malloc
485376:  MOV             R5, R0
485378:  MOVS            R1, #(stderr+2); void *
48537A:  STRH.W          R8, [R5]
48537E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485382:  MOV             R0, R5; p
485384:  BLX             free
485388:  STRB.W          R4, [R9]
48538C:  MOVS            R0, #4; byte_count
48538E:  BLX             malloc
485392:  MOV             R5, R0
485394:  MOV.W           R0, #0xFFFFFFFF
485398:  STR             R0, [R5]
48539A:  MOV             R0, R5; this
48539C:  MOVS            R1, #byte_4; void *
48539E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4853A2:  MOV             R0, R5; p
4853A4:  BLX             free
4853A8:  ADD.W           R11, R11, #1
4853AC:  CMP.W           R11, #6
4853B0:  BNE             loc_4852D6
4853B2:  LDR             R0, =(UseDataFence_ptr - 0x4853C2)
4853B4:  ADD.W           R8, R10, #0x74 ; 't'
4853B8:  LDR             R1, =(UseDataFence_ptr - 0x4853C6)
4853BA:  MOV.W           R10, #0
4853BE:  ADD             R0, PC; UseDataFence_ptr
4853C0:  LDR             R2, =(DataFence_ptr - 0x4853CE)
4853C2:  ADD             R1, PC; UseDataFence_ptr
4853C4:  STR.W           R8, [SP,#0x40+var_2C]
4853C8:  LDR             R0, [R0]; UseDataFence
4853CA:  ADD             R2, PC; DataFence_ptr
4853CC:  STR             R0, [SP,#0x40+var_34]
4853CE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4853D4)
4853D0:  ADD             R0, PC; currentSaveFenceCount_ptr
4853D2:  LDR             R0, [R0]; currentSaveFenceCount
4853D4:  STR             R0, [SP,#0x40+var_38]
4853D6:  LDR             R0, [R1]; UseDataFence
4853D8:  STR             R0, [SP,#0x40+var_3C]
4853DA:  LDR             R0, [R2]; DataFence
4853DC:  STR             R0, [SP,#0x40+var_40]
4853DE:  LDR             R0, =(UseDataFence_ptr - 0x4853E6)
4853E0:  LDR             R1, =(UseDataFence_ptr - 0x4853EA)
4853E2:  ADD             R0, PC; UseDataFence_ptr
4853E4:  LDR             R2, =(DataFence_ptr - 0x4853EE)
4853E6:  ADD             R1, PC; UseDataFence_ptr
4853E8:  LDR             R0, [R0]; UseDataFence
4853EA:  ADD             R2, PC; DataFence_ptr
4853EC:  STR             R0, [SP,#0x40+var_20]
4853EE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4853F4)
4853F0:  ADD             R0, PC; currentSaveFenceCount_ptr
4853F2:  LDR             R0, [R0]; currentSaveFenceCount
4853F4:  STR             R0, [SP,#0x40+var_24]
4853F6:  LDR             R0, [R1]; UseDataFence
4853F8:  STR             R0, [SP,#0x40+var_28]
4853FA:  LDR             R0, [R2]; DataFence
4853FC:  STR             R0, [SP,#0x40+var_30]
4853FE:  LDR.W           R4, [R8,R10,LSL#2]
485402:  CBZ             R4, loc_485478
485404:  LDR             R0, [R4]
485406:  LDR             R1, [R0,#8]
485408:  MOV             R0, R4
48540A:  BLX             R1
48540C:  MOV             R5, R0
48540E:  LDR             R0, [SP,#0x40+var_20]
485410:  LDRB.W          R11, [R0]
485414:  CMP.W           R11, #0
485418:  BEQ             loc_485454
48541A:  LDR.W           R8, [SP,#0x40+var_28]
48541E:  MOVS            R1, #0
485420:  LDR             R3, [SP,#0x40+var_24]
485422:  STRB.W          R1, [R8]
485426:  LDR             R1, [SP,#0x40+var_30]
485428:  LDR             R0, [R3]
48542A:  LDRH            R1, [R1]
48542C:  ADDS            R2, R0, #1
48542E:  STR             R2, [R3]
485430:  ADD.W           R9, R0, R1
485434:  MOVS            R0, #2; byte_count
485436:  BLX             malloc
48543A:  MOV             R6, R0
48543C:  MOVS            R1, #(stderr+2); void *
48543E:  STRH.W          R9, [R6]
485442:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485446:  MOV             R0, R6; p
485448:  BLX             free
48544C:  STRB.W          R11, [R8]
485450:  LDR.W           R8, [SP,#0x40+var_2C]
485454:  MOVS            R0, #4; byte_count
485456:  BLX             malloc
48545A:  MOV             R6, R0
48545C:  MOVS            R1, #byte_4; void *
48545E:  STR             R5, [R6]
485460:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
485464:  MOV             R0, R6; p
485466:  BLX             free
48546A:  CMP             R5, #0x20 ; ' '
48546C:  BNE             loc_4854CA
48546E:  LDR             R0, [R4,#0x10]
485470:  LDR             R1, [R0]
485472:  LDR             R1, [R1,#0x20]
485474:  BLX             R1
485476:  B               loc_4854CA
485478:  LDR             R0, [SP,#0x40+var_34]
48547A:  LDRB            R5, [R0]
48547C:  CBZ             R5, loc_4854AE
48547E:  LDR             R6, [SP,#0x40+var_3C]
485480:  MOVS            R1, #0
485482:  LDR             R3, [SP,#0x40+var_38]
485484:  STRB            R1, [R6]
485486:  LDR             R1, [SP,#0x40+var_40]
485488:  LDR             R0, [R3]
48548A:  LDRH            R1, [R1]
48548C:  ADDS            R2, R0, #1
48548E:  STR             R2, [R3]
485490:  ADD.W           R9, R0, R1
485494:  MOVS            R0, #2; byte_count
485496:  BLX             malloc
48549A:  MOV             R4, R0
48549C:  MOVS            R1, #(stderr+2); void *
48549E:  STRH.W          R9, [R4]
4854A2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4854A6:  MOV             R0, R4; p
4854A8:  BLX             free
4854AC:  STRB            R5, [R6]
4854AE:  MOVS            R0, #4; byte_count
4854B0:  BLX             malloc
4854B4:  MOV             R4, R0
4854B6:  MOV.W           R0, #0xFFFFFFFF
4854BA:  STR             R0, [R4]
4854BC:  MOV             R0, R4; this
4854BE:  MOVS            R1, #byte_4; void *
4854C0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4854C4:  MOV             R0, R4; p
4854C6:  BLX             free
4854CA:  ADD.W           R10, R10, #1
4854CE:  CMP.W           R10, #0x10
4854D2:  BNE             loc_4853FE
4854D4:  ADD             SP, SP, #0x24 ; '$'
4854D6:  POP.W           {R8-R11}
4854DA:  POP             {R4-R7,PC}
