; =========================================================
; Game Engine Function: _ZN13CEventHandler34ComputeGotKnockedOverByCarResponseEP6CEventP5CTaskS3_
; Address            : 0x38358C - 0x3836D8
; =========================================================

38358C:  PUSH            {R4-R7,LR}
38358E:  ADD             R7, SP, #0xC
383590:  PUSH.W          {R11}
383594:  SUB             SP, SP, #0x10
383596:  LDR             R6, [R1,#0x10]
383598:  MOV             R4, R0
38359A:  CMP             R6, #0
38359C:  BEQ.W           loc_3836B6
3835A0:  LDRSH.W         R0, [R1,#0xA]
3835A4:  LDR.W           R5, [R6,#0x464]
3835A8:  CMP.W           R0, #0x3E8
3835AC:  BGE             loc_3835F4
3835AE:  CMP             R0, #0xC8
3835B0:  BEQ             loc_38360C
3835B2:  MOVW            R1, #0x38F; unsigned int
3835B6:  CMP             R0, R1
3835B8:  BNE             loc_3836B6
3835BA:  MOVS            R0, #dword_40; this
3835BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3835C0:  CMP             R5, #0
3835C2:  BEQ             loc_38366C
3835C4:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3835CE)
3835C6:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3835D4)
3835C8:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3835D6)
3835CA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3835CC:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3835D8)
3835D0:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3835D2:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3835D4:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3835D6:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3835D8:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3835DC:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3835DE:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3835E0:  VLDR            S0, [R2]
3835E4:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3835E8:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
3835EA:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
3835EC:  STRD.W          R1, R2, [SP,#0x20+var_20]
3835F0:  MOV             R1, R5
3835F2:  B               loc_38369A
3835F4:  BEQ             loc_383610
3835F6:  MOVW            R1, #0x451
3835FA:  CMP             R0, R1
3835FC:  BNE             loc_3836B6
3835FE:  CMP             R5, #0
383600:  BEQ             loc_3836B6
383602:  MOV             R0, R5; this
383604:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
383608:  CMP             R0, #0
38360A:  BEQ             loc_3836A6
38360C:  MOVS            R0, #0
38360E:  B               loc_3836B4
383610:  CMP             R5, #0
383612:  BEQ             loc_3836B6
383614:  LDR             R0, [R4]
383616:  LDRB.W          R1, [R0,#0x448]
38361A:  CMP             R1, #2
38361C:  BEQ             loc_38364E
38361E:  LDRSB.W         R1, [R0,#0x71C]
383622:  LDRSB.W         R6, [R5,#0x71C]
383626:  RSB.W           R1, R1, R1,LSL#3
38362A:  ADD.W           R0, R0, R1,LSL#2
38362E:  ADDW            R0, R0, #0x5A4; this
383632:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
383636:  CMP             R0, #1
383638:  BNE             loc_38364E
38363A:  RSB.W           R0, R6, R6,LSL#3
38363E:  ADD.W           R0, R5, R0,LSL#2
383642:  ADDW            R0, R0, #0x5A4; this
383646:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
38364A:  CMP             R0, #1
38364C:  BNE             loc_3836BE
38364E:  MOVS            R0, #dword_38; this
383650:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383654:  MOVS            R2, #0
383656:  MOVS            R1, #1
383658:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
38365C:  MOV.W           R2, #0xFFFFFFFF; int
383660:  STR             R1, [SP,#0x20+var_18]; int
383662:  MOV             R1, R5; CPed *
383664:  MOVS            R3, #0; unsigned int
383666:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
38366A:  B               loc_3836B4
38366C:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383678)
38366E:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38367C)
383672:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38367E)
383674:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383676:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383682)
383678:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38367A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38367C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38367E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383680:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383684:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
383686:  LDR             R5, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383688:  VLDR            S0, [R2]
38368C:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
383690:  LDR             R3, [R1]; float
383692:  LDR             R1, [R5]; CTaskComplexSmartFleeEntity::ms_iFleeTime
383694:  STRD.W          R1, R2, [SP,#0x20+var_20]; int
383698:  MOV             R1, R6; CEntity *
38369A:  VSTR            S0, [SP,#0x20+var_18]
38369E:  MOVS            R2, #0; bool
3836A0:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
3836A4:  B               loc_3836B4
3836A6:  MOVS            R0, #dword_20; this
3836A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3836AC:  MOV             R1, R5; CPed *
3836AE:  MOVS            R2, #0; bool
3836B0:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
3836B4:  STR             R0, [R4,#0x24]
3836B6:  ADD             SP, SP, #0x10
3836B8:  POP.W           {R11}
3836BC:  POP             {R4-R7,PC}
3836BE:  MOVS            R0, #dword_40; this
3836C0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3836C4:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3836CE)
3836C6:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3836D4)
3836C8:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3836D6)
3836CA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3836CC:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3836D8)
3836D0:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3836D2:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3836D4:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3836D6:  B               loc_3835D6
