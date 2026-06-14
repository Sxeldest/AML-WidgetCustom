; =========================================================
; Game Engine Function: _ZN7CObject6CreateEP12CDummyObject
; Address            : 0x4535FC - 0x453746
; =========================================================

4535FC:  PUSH            {R4-R7,LR}
4535FE:  ADD             R7, SP, #0xC
453600:  PUSH.W          {R8-R11}
453604:  SUB             SP, SP, #4
453606:  MOV             R8, R0
453608:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x453610)
45360A:  MOVS            R3, #1
45360C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
45360E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
453610:  LDR             R1, [R0]; CPools::ms_pObjectPool
453612:  LDRD.W          R2, R0, [R1,#8]
453616:  STRB            R3, [R1,#0x11]
453618:  MOVS            R3, #0
45361A:  ADDS            R0, #1
45361C:  STR             R0, [R1,#0xC]
45361E:  CMP             R0, R2
453620:  BNE             loc_45362C
453622:  MOVS            R0, #0
453624:  LSLS            R3, R3, #0x1F
453626:  STR             R0, [R1,#0xC]
453628:  BNE             loc_45365C
45362A:  MOVS            R3, #1
45362C:  LDR             R6, [R1,#4]
45362E:  LDRSB           R5, [R6,R0]
453630:  CMP.W           R5, #0xFFFFFFFF
453634:  BGT             loc_45361A
453636:  AND.W           R2, R5, #0x7F
45363A:  STRB            R2, [R6,R0]
45363C:  LDR             R0, [R1,#4]
45363E:  LDR             R2, [R1,#0xC]
453640:  LDRB            R3, [R0,R2]
453642:  AND.W           R6, R3, #0x80
453646:  ADDS            R3, #1
453648:  AND.W           R3, R3, #0x7F
45364C:  ORRS            R3, R6
45364E:  STRB            R3, [R0,R2]
453650:  MOV.W           R2, #0x1A4
453654:  LDR             R0, [R1]
453656:  LDR             R1, [R1,#0xC]
453658:  MLA.W           R0, R1, R2, R0; this
45365C:  MOV             R1, R8; CDummyObject *
45365E:  BLX             j__ZN7CObjectC2EP12CDummyObject; CObject::CObject(CDummyObject *)
453662:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x45366A)
453664:  CMP             R0, #0
453666:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
453668:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
45366A:  LDR.W           R11, [R1]; CPools::ms_pObjectPool
45366E:  MOV.W           R1, #0
453672:  STRB.W          R1, [R11,#0x11]
453676:  BNE             loc_45373E
453678:  LDR.W           R4, [R11,#8]
45367C:  CBZ             R4, loc_4536DC
45367E:  MOV.W           R9, #5
453682:  MOV.W           R0, #0x1A4
453686:  MULS            R0, R4
453688:  SUBS            R4, #1
45368A:  SUB.W           R6, R0, #0x1A4
45368E:  LDR.W           R0, [R11,#4]
453692:  LDRSB           R0, [R0,R4]
453694:  CMP             R0, #0
453696:  BLT             loc_4536B2
453698:  LDR.W           R10, [R11]
45369C:  ADDS.W          R5, R10, R6
4536A0:  BEQ             loc_4536B2
4536A2:  LDRB.W          R0, [R5,#0x140]
4536A6:  CMP             R0, #3
4536A8:  BNE             loc_4536B2
4536AA:  MOV             R0, R5; this
4536AC:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
4536B0:  CBZ             R0, loc_4536BE
4536B2:  SUBS            R4, #1
4536B4:  SUB.W           R6, R6, #0x1A4
4536B8:  ADDS            R0, R4, #1
4536BA:  BNE             loc_45368E
4536BC:  B               loc_4536DC
4536BE:  MOV             R0, R5; this
4536C0:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4536C4:  LDR.W           R0, [R10,R6]
4536C8:  LDR             R1, [R0,#4]
4536CA:  MOV             R0, R5
4536CC:  BLX             R1
4536CE:  CMP.W           R9, #2
4536D2:  BLT             loc_4536DC
4536D4:  SUB.W           R9, R9, #1
4536D8:  CMP             R4, #0
4536DA:  BNE             loc_453682
4536DC:  LDR             R0, =(g_waterCreatureMan_ptr - 0x4536E4)
4536DE:  MOVS            R1, #5; int
4536E0:  ADD             R0, PC; g_waterCreatureMan_ptr
4536E2:  LDR             R0, [R0]; g_waterCreatureMan ; this
4536E4:  BLX             j__ZN22WaterCreatureManager_c25TryToFreeUpWaterCreaturesEi; WaterCreatureManager_c::TryToFreeUpWaterCreatures(int)
4536E8:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4536F0)
4536EA:  MOVS            R3, #0
4536EC:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4536EE:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4536F0:  LDR             R1, [R0]; CPools::ms_pObjectPool
4536F2:  LDRD.W          R2, R0, [R1,#8]
4536F6:  ADDS            R0, #1
4536F8:  STR             R0, [R1,#0xC]
4536FA:  CMP             R0, R2
4536FC:  BNE             loc_453708
4536FE:  MOVS            R0, #0
453700:  LSLS            R3, R3, #0x1F
453702:  STR             R0, [R1,#0xC]
453704:  BNE             loc_453738
453706:  MOVS            R3, #1
453708:  LDR             R6, [R1,#4]
45370A:  LDRSB           R5, [R6,R0]
45370C:  CMP.W           R5, #0xFFFFFFFF
453710:  BGT             loc_4536F6
453712:  AND.W           R2, R5, #0x7F
453716:  STRB            R2, [R6,R0]
453718:  LDR             R0, [R1,#4]
45371A:  LDR             R2, [R1,#0xC]
45371C:  LDRB            R3, [R0,R2]
45371E:  AND.W           R6, R3, #0x80
453722:  ADDS            R3, #1
453724:  AND.W           R3, R3, #0x7F
453728:  ORRS            R3, R6
45372A:  STRB            R3, [R0,R2]
45372C:  MOV.W           R2, #0x1A4
453730:  LDR             R0, [R1]
453732:  LDR             R1, [R1,#0xC]
453734:  MLA.W           R0, R1, R2, R0; this
453738:  MOV             R1, R8; CDummyObject *
45373A:  BLX             j__ZN7CObjectC2EP12CDummyObject; CObject::CObject(CDummyObject *)
45373E:  ADD             SP, SP, #4
453740:  POP.W           {R8-R11}
453744:  POP             {R4-R7,PC}
