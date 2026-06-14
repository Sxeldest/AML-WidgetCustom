; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandard18LookForGangMembersEP4CPed
; Address            : 0x5231EC - 0x52336E
; =========================================================

5231EC:  PUSH            {R4-R7,LR}
5231EE:  ADD             R7, SP, #0xC
5231F0:  PUSH.W          {R8-R10}
5231F4:  VPUSH           {D8-D10}
5231F8:  SUB             SP, SP, #0x18
5231FA:  MOV             R10, R1
5231FC:  MOV             R9, R0
5231FE:  MOV             R0, R10; this
523200:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
523204:  CMP             R0, #0
523206:  BNE             loc_5232D2
523208:  LDR             R0, =(ThePaths_ptr - 0x523214)
52320A:  MOV             R6, SP
52320C:  LDRH.W          R3, [R10,#0x24]
523210:  ADD             R0, PC; ThePaths_ptr
523212:  LDR.W           R2, [R9,#0x1C]
523216:  LDR             R1, [R0]; ThePaths
523218:  MOV             R0, R6
52321A:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
52321E:  VMOV.F32        S0, #1.0
523222:  VLD1.32         {D8}, [R6@64,#0x48+var_48]!
523226:  VMOV.F32        S20, #25.0
52322A:  VLDR            S2, [R6]
52322E:  LDR.W           R0, [R10,#0x14]
523232:  LDR.W           R5, [R10,#0x440]
523236:  ADD.W           R8, R0, #0x30 ; '0'
52323A:  CMP             R0, #0
52323C:  IT EQ
52323E:  ADDEQ.W         R8, R10, #4
523242:  MOVS            R0, #0x4C ; 'L'
523244:  VADD.F32        S18, S2, S0
523248:  MOV             R4, R0
52324A:  LDR.W           R6, [R5,R4,LSL#2]
52324E:  CBZ             R6, loc_5232C8
523250:  MOV             R0, R8
523252:  LDR             R1, [R6,#0x14]; CPed *
523254:  VLD1.32         {D16}, [R0]!
523258:  CMP             R1, #0
52325A:  VSUB.F32        D16, D16, D8
52325E:  VLDR            S0, [R0]
523262:  ADD.W           R0, R1, #0x30 ; '0'
523266:  IT EQ
523268:  ADDEQ           R0, R6, #4
52326A:  VLD1.32         {D17}, [R0]!
52326E:  VSUB.F32        S6, S0, S18
523272:  VSUB.F32        D1, D17, D8
523276:  VLDR            S4, [R0]
52327A:  VSUB.F32        S0, S4, S18
52327E:  VMUL.F32        D2, D16, D1
523282:  VADD.F32        S4, S4, S5
523286:  VMUL.F32        S6, S6, S0
52328A:  VADD.F32        S4, S4, S6
52328E:  VCMPE.F32       S4, #0.0
523292:  VMRS            APSR_nzcv, FPSCR
523296:  BLE             loc_5232C8
523298:  VMUL.F32        S4, S3, S3
52329C:  VMUL.F32        S2, S2, S2
5232A0:  VMUL.F32        S0, S0, S0
5232A4:  VADD.F32        S2, S2, S4
5232A8:  VADD.F32        S0, S2, S0
5232AC:  VCMPE.F32       S0, S20
5232B0:  VMRS            APSR_nzcv, FPSCR
5232B4:  BGE             loc_5232C8
5232B6:  MOV             R0, R6; this
5232B8:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
5232BC:  CBZ             R0, loc_5232C8
5232BE:  ADDS            R0, #8; this
5232C0:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
5232C4:  CMP             R0, #1
5232C6:  BGE             loc_5232E0
5232C8:  SUB.W           R1, R4, #0x4C ; 'L'
5232CC:  ADDS            R0, R4, #1
5232CE:  CMP             R1, #0xF
5232D0:  BLT             loc_523248
5232D2:  MOVS            R0, #0
5232D4:  ADD             SP, SP, #0x18
5232D6:  VPOP            {D8-D10}
5232DA:  POP.W           {R8-R10}
5232DE:  POP             {R4-R7,PC}
5232E0:  MOV             R8, SP
5232E2:  MOV             R1, R6; CPed *
5232E4:  MOV             R0, R8; this
5232E6:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
5232EA:  LDR             R0, =(_ZTV28CEventAcquaintancePedDislike_ptr - 0x5232FA)
5232EC:  MOV.W           R1, #0x3AC
5232F0:  STRH.W          R1, [SP,#0x48+var_3E]
5232F4:  MOV             R1, R8; CEvent *
5232F6:  ADD             R0, PC; _ZTV28CEventAcquaintancePedDislike_ptr
5232F8:  MOVS            R2, #0; bool
5232FA:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedDislike ...
5232FC:  ADDS            R0, #8
5232FE:  STR             R0, [SP,#0x48+var_48]
523300:  LDR.W           R0, [R10,#0x440]
523304:  ADDS            R0, #0x68 ; 'h'; this
523306:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52330A:  LDR.W           R0, [R10,#0x440]
52330E:  ADDS            R0, #4; this
523310:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523314:  MOV             R6, R0
523316:  CBZ             R6, loc_523364
523318:  LDR             R0, [R6]
52331A:  LDR             R1, [R0,#0x14]
52331C:  MOV             R0, R6
52331E:  BLX             R1
523320:  MOV             R8, R0
523322:  LDR.W           R0, [R9]
523326:  LDR             R1, [R0,#0x14]
523328:  MOV             R0, R9
52332A:  BLX             R1
52332C:  CMP             R8, R0
52332E:  BNE             loc_523364
523330:  LDR             R0, [R6]
523332:  LDR             R1, [R0,#0x34]
523334:  MOV             R0, R6
523336:  BLX             R1
523338:  MOV             R6, R0
52333A:  LDR.W           R0, [R9]
52333E:  LDR             R1, [R0,#0x34]
523340:  MOV             R0, R9
523342:  BLX             R1
523344:  CMP             R6, R0
523346:  BNE             loc_523364
523348:  LDR.W           R0, [R10,#0x440]
52334C:  ADDS            R0, #4; this
52334E:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523352:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523358)
523354:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523356:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
523358:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52335A:  ADD.W           R1, R1, #0x18000
52335E:  ADD.W           R1, R1, #0x6A0
523362:  STR             R1, [R0,#0x34]
523364:  MOV             R0, SP; this
523366:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
52336A:  MOVS            R0, #1
52336C:  B               loc_5232D4
