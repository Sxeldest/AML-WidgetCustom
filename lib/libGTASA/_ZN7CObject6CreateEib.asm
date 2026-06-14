; =========================================================
; Game Engine Function: _ZN7CObject6CreateEib
; Address            : 0x4533D8 - 0x45355C
; =========================================================

4533D8:  PUSH            {R4-R7,LR}
4533DA:  ADD             R7, SP, #0xC
4533DC:  PUSH.W          {R8-R11}
4533E0:  SUB             SP, SP, #4
4533E2:  MOV             R8, R0
4533E4:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4533EC)
4533E6:  MOVS            R2, #1
4533E8:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4533EA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4533EC:  LDR             R0, [R0]; CPools::ms_pObjectPool
4533EE:  LDRD.W          R1, R5, [R0,#8]
4533F2:  STRB            R2, [R0,#0x11]
4533F4:  MOVS            R2, #0
4533F6:  ADDS            R5, #1
4533F8:  STR             R5, [R0,#0xC]
4533FA:  CMP             R5, R1
4533FC:  BNE             loc_453408
4533FE:  MOVS            R5, #0
453400:  LSLS            R2, R2, #0x1F
453402:  STR             R5, [R0,#0xC]
453404:  BNE             loc_453438
453406:  MOVS            R2, #1
453408:  LDR             R3, [R0,#4]
45340A:  LDRSB           R6, [R3,R5]
45340C:  CMP.W           R6, #0xFFFFFFFF
453410:  BGT             loc_4533F6
453412:  AND.W           R1, R6, #0x7F
453416:  STRB            R1, [R3,R5]
453418:  LDR             R1, [R0,#4]
45341A:  LDR             R2, [R0,#0xC]
45341C:  LDRB            R3, [R1,R2]
45341E:  AND.W           R6, R3, #0x80
453422:  ADDS            R3, #1
453424:  AND.W           R3, R3, #0x7F
453428:  ORRS            R3, R6
45342A:  STRB            R3, [R1,R2]
45342C:  MOV.W           R2, #0x1A4
453430:  LDR             R1, [R0]
453432:  LDR             R0, [R0,#0xC]
453434:  MLA.W           R5, R0, R2, R1
453438:  MOV             R0, R5; this
45343A:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
45343E:  LDR             R0, =(_ZTV7CObject_ptr - 0x45344C)
453440:  MOVS            R4, #0
453442:  STR.W           R4, [R5,#0x178]
453446:  MOV             R1, R8; unsigned int
453448:  ADD             R0, PC; _ZTV7CObject_ptr
45344A:  LDR             R0, [R0]; `vtable for'CObject ...
45344C:  ADDS            R0, #8
45344E:  STR             R0, [R5]
453450:  MOV             R0, R5; this
453452:  BLX             j__ZN7CEntity21SetModelIndexNoCreateEj; CEntity::SetModelIndexNoCreate(uint)
453456:  MOV             R0, R5; this
453458:  BLX             j__ZN7CObject4InitEv; CObject::Init(void)
45345C:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x453464)
45345E:  CMP             R5, #0
453460:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
453462:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
453464:  LDR.W           R11, [R0]; CPools::ms_pObjectPool
453468:  STRB.W          R4, [R11,#0x11]
45346C:  BNE             loc_453552
45346E:  LDR.W           R4, [R11,#8]
453472:  CBZ             R4, loc_4534D2
453474:  MOV.W           R9, #5
453478:  MOV.W           R0, #0x1A4
45347C:  MULS            R0, R4
45347E:  SUBS            R4, #1
453480:  SUB.W           R6, R0, #0x1A4
453484:  LDR.W           R0, [R11,#4]
453488:  LDRSB           R0, [R0,R4]
45348A:  CMP             R0, #0
45348C:  BLT             loc_4534A8
45348E:  LDR.W           R10, [R11]
453492:  ADDS.W          R5, R10, R6
453496:  BEQ             loc_4534A8
453498:  LDRB.W          R0, [R5,#0x140]
45349C:  CMP             R0, #3
45349E:  BNE             loc_4534A8
4534A0:  MOV             R0, R5; this
4534A2:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
4534A6:  CBZ             R0, loc_4534B4
4534A8:  SUBS            R4, #1
4534AA:  SUB.W           R6, R6, #0x1A4
4534AE:  ADDS            R0, R4, #1
4534B0:  BNE             loc_453484
4534B2:  B               loc_4534D2
4534B4:  MOV             R0, R5; this
4534B6:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4534BA:  LDR.W           R0, [R10,R6]
4534BE:  LDR             R1, [R0,#4]
4534C0:  MOV             R0, R5
4534C2:  BLX             R1
4534C4:  CMP.W           R9, #2
4534C8:  BLT             loc_4534D2
4534CA:  SUB.W           R9, R9, #1
4534CE:  CMP             R4, #0
4534D0:  BNE             loc_453478
4534D2:  LDR             R0, =(g_waterCreatureMan_ptr - 0x4534DA)
4534D4:  MOVS            R1, #5; int
4534D6:  ADD             R0, PC; g_waterCreatureMan_ptr
4534D8:  LDR             R0, [R0]; g_waterCreatureMan ; this
4534DA:  BLX             j__ZN22WaterCreatureManager_c25TryToFreeUpWaterCreaturesEi; WaterCreatureManager_c::TryToFreeUpWaterCreatures(int)
4534DE:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4534E6)
4534E0:  MOVS            R2, #0
4534E2:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4534E4:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4534E6:  LDR             R0, [R0]; CPools::ms_pObjectPool
4534E8:  LDRD.W          R1, R5, [R0,#8]
4534EC:  ADDS            R5, #1
4534EE:  STR             R5, [R0,#0xC]
4534F0:  CMP             R5, R1
4534F2:  BNE             loc_4534FE
4534F4:  MOVS            R5, #0
4534F6:  LSLS            R2, R2, #0x1F
4534F8:  STR             R5, [R0,#0xC]
4534FA:  BNE             loc_45352E
4534FC:  MOVS            R2, #1
4534FE:  LDR             R3, [R0,#4]
453500:  LDRSB           R6, [R3,R5]
453502:  CMP.W           R6, #0xFFFFFFFF
453506:  BGT             loc_4534EC
453508:  AND.W           R1, R6, #0x7F
45350C:  STRB            R1, [R3,R5]
45350E:  LDR             R1, [R0,#4]
453510:  LDR             R2, [R0,#0xC]
453512:  LDRB            R3, [R1,R2]
453514:  AND.W           R6, R3, #0x80
453518:  ADDS            R3, #1
45351A:  AND.W           R3, R3, #0x7F
45351E:  ORRS            R3, R6
453520:  STRB            R3, [R1,R2]
453522:  MOV.W           R2, #0x1A4
453526:  LDR             R1, [R0]
453528:  LDR             R0, [R0,#0xC]
45352A:  MLA.W           R5, R0, R2, R1
45352E:  MOV             R0, R5; this
453530:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
453534:  LDR             R0, =(_ZTV7CObject_ptr - 0x453542)
453536:  MOVS            R1, #0
453538:  STR.W           R1, [R5,#0x178]
45353C:  MOV             R1, R8; unsigned int
45353E:  ADD             R0, PC; _ZTV7CObject_ptr
453540:  LDR             R0, [R0]; `vtable for'CObject ...
453542:  ADDS            R0, #8
453544:  STR             R0, [R5]
453546:  MOV             R0, R5; this
453548:  BLX             j__ZN7CEntity21SetModelIndexNoCreateEj; CEntity::SetModelIndexNoCreate(uint)
45354C:  MOV             R0, R5; this
45354E:  BLX             j__ZN7CObject4InitEv; CObject::Init(void)
453552:  MOV             R0, R5
453554:  ADD             SP, SP, #4
453556:  POP.W           {R8-R11}
45355A:  POP             {R4-R7,PC}
