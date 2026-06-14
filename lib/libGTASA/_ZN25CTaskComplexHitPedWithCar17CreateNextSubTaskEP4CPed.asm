; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCar17CreateNextSubTaskEP4CPed
; Address            : 0x50B54C - 0x50B592
; =========================================================

50B54C:  PUSH            {R4,R5,R7,LR}
50B54E:  ADD             R7, SP, #8
50B550:  MOV             R4, R0
50B552:  LDR             R0, [R4,#8]
50B554:  LDR             R1, [R0]
50B556:  LDR             R1, [R1,#0x14]
50B558:  BLX             R1
50B55A:  MOVW            R1, #0x1FB; unsigned int
50B55E:  CMP             R0, R1
50B560:  BNE             loc_50B568
50B562:  LDR             R0, [R4,#8]
50B564:  LDRB            R0, [R0,#0x10]
50B566:  CBZ             R0, loc_50B56C
50B568:  MOVS            R0, #0
50B56A:  POP             {R4,R5,R7,PC}
50B56C:  LDR             R0, [R4,#0x14]
50B56E:  SUBS            R0, #1
50B570:  CMP             R0, #2
50B572:  BHI             loc_50B57E
50B574:  LDR             R1, =(unk_61E78C - 0x50B57A)
50B576:  ADD             R1, PC; unk_61E78C
50B578:  LDR.W           R5, [R1,R0,LSL#2]
50B57C:  B               loc_50B580
50B57E:  MOVS            R5, #0x1A
50B580:  MOVS            R0, #off_18; this
50B582:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B586:  LDR             R3, [R4,#0x18]
50B588:  MOV             R1, R5
50B58A:  MOVS            R2, #0
50B58C:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
50B590:  POP             {R4,R5,R7,PC}
