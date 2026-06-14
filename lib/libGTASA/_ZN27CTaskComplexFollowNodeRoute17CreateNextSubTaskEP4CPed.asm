; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute17CreateNextSubTaskEP4CPed
; Address            : 0x520234 - 0x5203C8
; =========================================================

520234:  PUSH            {R4,R5,R7,LR}
520236:  ADD             R7, SP, #8
520238:  SUB             SP, SP, #8
52023A:  MOV             R5, R0
52023C:  MOV             R4, R1
52023E:  LDRB.W          R0, [R5,#0x48]
520242:  CBZ             R0, loc_520290
520244:  LDRB.W          R0, [R5,#0x49]
520248:  CBZ             R0, loc_52025E
52024A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x520252)
52024C:  MOVS            R1, #0
52024E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
520250:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
520252:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
520254:  STRB.W          R1, [R5,#0x49]
520258:  STR             R0, [R5,#0x40]
52025A:  MOV             R1, R0
52025C:  B               loc_520268
52025E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x520266)
520260:  LDR             R1, [R5,#0x40]
520262:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
520264:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
520266:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
520268:  LDR             R2, [R5,#0x44]
52026A:  ADD             R1, R2
52026C:  CMP             R1, R0
52026E:  BHI             loc_520290
520270:  LDR             R0, [R5,#8]
520272:  LDR             R1, [R0]
520274:  LDR             R1, [R1,#0x14]
520276:  BLX             R1
520278:  CMP             R0, #0xCB
52027A:  BNE             loc_520290
52027C:  LDR             R0, [R4]
52027E:  ADD.W           R3, R5, #0xC
520282:  LDM             R3, {R1-R3}
520284:  LDR             R5, [R0,#0x3C]
520286:  MOVS            R0, #0
520288:  STR             R0, [SP,#0x10+var_10]
52028A:  MOV             R0, R4
52028C:  BLX             R5
52028E:  B               loc_52035C
520290:  LDR             R0, [R5,#8]
520292:  LDR             R1, [R0]
520294:  LDR             R1, [R1,#0x14]
520296:  BLX             R1
520298:  CMP.W           R0, #0x2C0
52029C:  BNE             loc_5202AA
52029E:  LDRB.W          R0, [R4,#0x485]
5202A2:  LSLS            R0, R0, #0x1F
5202A4:  BNE             loc_52035C
5202A6:  LDR             R0, [R5]
5202A8:  B               loc_5202F8
5202AA:  LDRB.W          R0, [R5,#0x4C]
5202AE:  TST.W           R0, #2
5202B2:  BNE             loc_520306
5202B4:  LDR             R1, [R5,#0x30]
5202B6:  LDR             R2, [R5,#0x38]
5202B8:  LDR             R3, [R1]
5202BA:  ADDS            R1, R2, #1
5202BC:  CMP             R1, R3
5202BE:  BNE             loc_520362
5202C0:  LSLS            R1, R0, #0x1C
5202C2:  BPL             loc_5202DC
5202C4:  AND.W           R0, R0, #0x9F
5202C8:  VMOV.I32        Q8, #0
5202CC:  ORR.W           R0, R0, #0x40 ; '@'
5202D0:  STRB.W          R0, [R5,#0x4C]
5202D4:  ADD.W           R0, R5, #0x50 ; 'P'
5202D8:  VST1.32         {D16-D17}, [R0]
5202DC:  MOV             R0, R5; this
5202DE:  MOV             R1, R4; CPed *
5202E0:  BLX             j__ZN27CTaskComplexFollowNodeRoute16ComputePathNodesEPK4CPed; CTaskComplexFollowNodeRoute::ComputePathNodes(CPed const*)
5202E4:  MOV             R0, R5; this
5202E6:  BLX             j__ZN27CTaskComplexFollowNodeRoute12ComputeRouteEv; CTaskComplexFollowNodeRoute::ComputeRoute(void)
5202EA:  LDRB.W          R1, [R5,#0x4C]
5202EE:  LDR             R0, [R5]
5202F0:  ORR.W           R1, R1, #4
5202F4:  STRB.W          R1, [R5,#0x4C]
5202F8:  LDR             R2, [R0,#0x2C]
5202FA:  MOV             R0, R5
5202FC:  MOV             R1, R4
5202FE:  ADD             SP, SP, #8
520300:  POP.W           {R4,R5,R7,LR}
520304:  BX              R2
520306:  LDR             R0, [R5,#8]
520308:  LDR             R1, [R0]
52030A:  LDR             R1, [R1,#0x14]
52030C:  BLX             R1
52030E:  MOVW            R1, #0x39E
520312:  CMP             R0, R1
520314:  BEQ             loc_520324
520316:  MOVW            R1, #0x387
52031A:  CMP             R0, R1
52031C:  BEQ             loc_520378
52031E:  CMP.W           R0, #0x384
520322:  BNE             loc_52035C
520324:  LDR             R1, [R5,#0x38]
520326:  LDR             R0, [R5,#0x2C]
520328:  ADDS            R2, R1, #1
52032A:  STR             R2, [R5,#0x38]
52032C:  LDR             R3, [R0]
52032E:  CMP             R2, R3
520330:  ITTT LT
520332:  ADDLT.W         R0, R0, R2,LSL#2
520336:  LDRLT           R0, [R0,#4]
520338:  STRLT           R0, [R5,#0x34]
52033A:  LDRB.W          R0, [R5,#0x4C]
52033E:  TST.W           R0, #2
520342:  BNE             loc_520388
520344:  MOV.W           R2, #0x384; int
520348:  LSLS            R0, R0, #0x1C
52034A:  BPL             loc_520356
52034C:  MOV             R0, R5; this
52034E:  MOV             R1, R4; CPed *
520350:  BLX             j__ZN27CTaskComplexFollowNodeRoute16CalcGoToTaskTypeEP4CPedi; CTaskComplexFollowNodeRoute::CalcGoToTaskType(CPed *,int)
520354:  MOV             R2, R0
520356:  MOV             R0, R5
520358:  MOV             R1, R2
52035A:  B               loc_5203AA
52035C:  MOVS            R0, #0
52035E:  ADD             SP, SP, #8
520360:  POP             {R4,R5,R7,PC}
520362:  LDR             R2, [R5,#0x2C]
520364:  LSLS            R0, R0, #0x1C
520366:  STR             R1, [R5,#0x38]
520368:  ADD.W           R1, R2, R1,LSL#2
52036C:  LDR             R1, [R1,#4]
52036E:  STR             R1, [R5,#0x34]
520370:  BMI             loc_52039A
520372:  MOV.W           R1, #0x384
520376:  B               loc_5203A8
520378:  LDR             R1, [R5,#0x38]
52037A:  LDRB.W          R0, [R5,#0x4C]
52037E:  ADDS            R2, R1, #1
520380:  STR             R2, [R5,#0x38]
520382:  TST.W           R0, #2
520386:  BEQ             loc_520344
520388:  LDR             R3, [R5,#0x30]
52038A:  LDR             R3, [R3]
52038C:  CMP             R3, R2
52038E:  BNE             loc_5203B4
520390:  MOVW            R2, #0x516
520394:  LSLS            R0, R0, #0x1C
520396:  BMI             loc_52034C
520398:  B               loc_520356
52039A:  MOV             R0, R5; this
52039C:  MOV             R1, R4; CPed *
52039E:  MOV.W           R2, #0x384; int
5203A2:  BLX             j__ZN27CTaskComplexFollowNodeRoute16CalcGoToTaskTypeEP4CPedi; CTaskComplexFollowNodeRoute::CalcGoToTaskType(CPed *,int)
5203A6:  MOV             R1, R0; int
5203A8:  MOV             R0, R5; this
5203AA:  MOV             R2, R4; CPed *
5203AC:  ADD             SP, SP, #8
5203AE:  POP.W           {R4,R5,R7,LR}
5203B2:  B               _ZNK27CTaskComplexFollowNodeRoute13CreateSubTaskEiP4CPed; CTaskComplexFollowNodeRoute::CreateSubTask(int,CPed *)
5203B4:  ADDS            R1, #2
5203B6:  MOV.W           R2, #0x384
5203BA:  CMP             R1, R3
5203BC:  IT EQ
5203BE:  MOVWEQ          R2, #0x387
5203C2:  LSLS            R0, R0, #0x1C
5203C4:  BMI             loc_52034C
5203C6:  B               loc_520356
