; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader17CreateNextSubTaskEP4CPed
; Address            : 0x515364 - 0x5154C8
; =========================================================

515364:  PUSH            {R4-R7,LR}
515366:  ADD             R7, SP, #0xC
515368:  PUSH.W          {R11}
51536C:  VPUSH           {D8}
515370:  SUB             SP, SP, #8
515372:  MOV             R4, R0
515374:  LDR             R0, [R4,#0xC]
515376:  ADDS            R0, #8; this
515378:  BLX             j__ZNK19CPedGroupMembership12CountMembersEv; CPedGroupMembership::CountMembers(void)
51537C:  MOV             R5, R0
51537E:  LDR             R0, [R4,#8]
515380:  CBZ             R0, loc_5153F2
515382:  LDR             R1, [R0]
515384:  LDR             R1, [R1,#0x14]
515386:  BLX             R1
515388:  CMP             R0, #0xCB
51538A:  BEQ             loc_51539A
51538C:  LDR             R0, [R4,#8]
51538E:  LDR             R1, [R0]
515390:  LDR             R1, [R1,#0x14]
515392:  BLX             R1
515394:  CMP.W           R0, #0x1AA
515398:  BNE             loc_5153F2
51539A:  BLX             rand
51539E:  UXTH            R0, R0
5153A0:  VLDR            S2, =0.000015259
5153A4:  VMOV            S0, R0
5153A8:  VMOV            S4, R5
5153AC:  VCVT.F32.S32    S0, S0
5153B0:  VCVT.F32.S32    S4, S4
5153B4:  LDR             R0, [R4,#0xC]
5153B6:  ADDS            R0, #8; this
5153B8:  VMUL.F32        S0, S0, S2
5153BC:  VMUL.F32        S0, S0, S4
5153C0:  VCVT.S32.F32    S0, S0
5153C4:  VMOV            R1, S0; int
5153C8:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5153CC:  MOV             R6, R0
5153CE:  CBZ             R6, loc_5153F2
5153D0:  MOVS            R0, #word_28; this
5153D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5153D6:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x5153E0)
5153D8:  MOV             R4, R0
5153DA:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x5153E2)
5153DC:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
5153DE:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
5153E0:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
5153E2:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
5153E4:  LDR             R3, [R1]; float
5153E6:  MOV             R1, R6; CEntity *
5153E8:  LDR             R2, [R0]; float
5153EA:  MOV             R0, R4; this
5153EC:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
5153F0:  B               loc_5154BA
5153F2:  BLX             rand
5153F6:  UXTH            R0, R0
5153F8:  VLDR            S16, =0.000015259
5153FC:  VMOV            S0, R0
515400:  VLDR            S2, =100.0
515404:  CMP             R5, #3
515406:  VCVT.F32.S32    S0, S0
51540A:  VMUL.F32        S0, S0, S16
51540E:  VMUL.F32        S0, S0, S2
515412:  VCVT.S32.F32    S0, S0
515416:  BLT             loc_51543E
515418:  VMOV            R0, S0
51541C:  CMP             R0, #0x60 ; '`'
51541E:  BGE             loc_51543E
515420:  MOVS            R0, #dword_20; this
515422:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
515426:  MOV             R4, R0
515428:  MOV.W           R0, #0x41000000
51542C:  STR             R0, [SP,#0x20+var_20]; float
51542E:  MOV             R0, R4; this
515430:  MOVW            R1, #0x1388; int
515434:  MOVS            R2, #0; bool
515436:  MOVS            R3, #0; bool
515438:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51543C:  B               loc_5154BA
51543E:  BLX             rand
515442:  UXTH            R0, R0
515444:  VLDR            S2, =15000.0
515448:  VMOV            S0, R0
51544C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51545C)
51544E:  MOVS            R5, #1
515450:  MOVW            R1, #0x3A98; unsigned int
515454:  VCVT.F32.S32    S0, S0
515458:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51545A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51545C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51545E:  STR             R0, [R4,#0x10]
515460:  VMUL.F32        S0, S0, S16
515464:  VMUL.F32        S0, S0, S2
515468:  VCVT.S32.F32    S0, S0
51546C:  STRB            R5, [R4,#0x18]
51546E:  VMOV            R0, S0
515472:  ADD             R0, R1
515474:  STR             R0, [R4,#0x14]
515476:  MOVS            R0, #dword_38; this
515478:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51547C:  MOV             R4, R0
51547E:  BLX             rand
515482:  UXTH            R0, R0
515484:  VMOV.F32        S2, #8.0
515488:  VMOV            S0, R0
51548C:  MOV             R0, #0x3D4CCCCD
515494:  MOVS            R1, #4; int
515496:  VCVT.F32.S32    S0, S0
51549A:  STR             R0, [SP,#0x20+var_1C]; float
51549C:  MOVW            R3, #0x1388; int
5154A0:  VMUL.F32        S0, S0, S16
5154A4:  VMUL.F32        S0, S0, S2
5154A8:  VCVT.S32.F32    S0, S0
5154AC:  STR             R5, [SP,#0x20+var_20]; bool
5154AE:  VMOV            R0, S0
5154B2:  UXTB            R2, R0; unsigned __int8
5154B4:  MOV             R0, R4; this
5154B6:  BLX             j__ZN22CTaskComplexWanderGangC2Eihibf; CTaskComplexWanderGang::CTaskComplexWanderGang(int,uchar,int,bool,float)
5154BA:  MOV             R0, R4
5154BC:  ADD             SP, SP, #8
5154BE:  VPOP            {D8}
5154C2:  POP.W           {R11}
5154C6:  POP             {R4-R7,PC}
