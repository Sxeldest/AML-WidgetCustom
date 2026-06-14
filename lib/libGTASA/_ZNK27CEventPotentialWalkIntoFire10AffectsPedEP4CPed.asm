; =========================================================
; Game Engine Function: _ZNK27CEventPotentialWalkIntoFire10AffectsPedEP4CPed
; Address            : 0x3774B8 - 0x37752E
; =========================================================

3774B8:  PUSH            {R4-R7,LR}
3774BA:  ADD             R7, SP, #0xC
3774BC:  PUSH.W          {R11}
3774C0:  SUB             SP, SP, #0x38
3774C2:  MOV             R4, R1
3774C4:  MOV             R5, R0
3774C6:  MOV             R0, R4; this
3774C8:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3774CC:  CMP             R0, #1
3774CE:  BNE             loc_377524
3774D0:  LDR             R0, [R5,#0x24]
3774D2:  CMP             R0, #1
3774D4:  BEQ             loc_377524
3774D6:  LDR.W           R0, [R4,#0x440]
3774DA:  ADDS            R0, #4; this
3774DC:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3774E0:  MOV             R6, R0
3774E2:  CBZ             R6, loc_377524
3774E4:  MOV             R0, R6; this
3774E6:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
3774EA:  MOV             R1, R0
3774EC:  MOVS            R0, #0
3774EE:  CBZ             R1, loc_377526
3774F0:  MOVS            R2, #0xFF
3774F2:  LDR             R1, [R5,#0x20]; float
3774F4:  STRD.W          R0, R2, [SP,#0x48+var_48]; unsigned __int8
3774F8:  ADD.W           R2, R5, #0x10; CVector *
3774FC:  ADD             R5, SP, #0x48+var_24
3774FE:  MOVS            R3, #0; unsigned __int8
377500:  MOV             R0, R5; this
377502:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
377506:  LDR             R0, [R4,#0x14]
377508:  ADD             R1, SP, #0x48+var_3C
37750A:  STR             R1, [SP,#0x48+var_48]; CVector *
37750C:  ADD.W           R2, R6, #0xC; CVector *
377510:  ADD.W           R1, R0, #0x30 ; '0'
377514:  CMP             R0, #0
377516:  ADD             R3, SP, #0x48+var_30; CVector *
377518:  IT EQ
37751A:  ADDEQ           R1, R4, #4; CVector *
37751C:  MOV             R0, R5; this
37751E:  BLX             j__ZNK10CColSphere13IntersectEdgeERK7CVectorS2_RS0_S3_; CColSphere::IntersectEdge(CVector const&,CVector const&,CVector&,CVector&)
377522:  B               loc_377526
377524:  MOVS            R0, #0
377526:  ADD             SP, SP, #0x38 ; '8'
377528:  POP.W           {R11}
37752C:  POP             {R4-R7,PC}
