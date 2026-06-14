; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb
; Address            : 0x3884DC - 0x38858C
; =========================================================

3884DC:  PUSH            {R4-R7,LR}
3884DE:  ADD             R7, SP, #0xC
3884E0:  PUSH.W          {R8}
3884E4:  MOV             R8, R2
3884E6:  ADR             R2, dword_38858C
3884E8:  MOV             R4, R0
3884EA:  MOV             R5, R3
3884EC:  LDR.W           R1, [R2,R1,LSL#2]
3884F0:  LDR             R0, [R4,#0x34]
3884F2:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
3884F6:  MOV             R6, R0
3884F8:  LDR             R0, [R4,#0x54]
3884FA:  CMP             R0, #4
3884FC:  IT EQ
3884FE:  CMPEQ           R5, #0
388500:  BNE             loc_388574
388502:  ADD.W           R4, R6, #0x30 ; '0'
388506:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
38850A:  MOV             R5, R0
38850C:  ADD.W           R0, R6, #0x10
388510:  VLD1.32         {D18-D19}, [R0]
388514:  ADD.W           R0, R6, #0x20 ; ' '
388518:  VLD1.32         {D20-D21}, [R0]
38851C:  ADD.W           R0, R6, #0x40 ; '@'
388520:  VLD1.32         {D22-D23}, [R0]
388524:  ADD.W           R0, R5, #0x30 ; '0'
388528:  VLD1.32         {D16-D17}, [R4]
38852C:  VST1.32         {D22-D23}, [R0]
388530:  ADD.W           R0, R5, #0x20 ; ' '
388534:  VST1.32         {D16-D17}, [R0]
388538:  MOV             R0, R5
38853A:  VST1.32         {D18-D19}, [R0]!
38853E:  VST1.32         {D20-D21}, [R0]
388542:  LDR             R4, [R6,#4]
388544:  CBZ             R4, loc_388558
388546:  ADD.W           R1, R4, #0x10
38854A:  MOV             R0, R5
38854C:  MOVS            R2, #2
38854E:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
388552:  LDR             R4, [R4,#4]
388554:  CMP             R4, #0
388556:  BNE             loc_388546
388558:  VLDR            D16, [R5,#0x30]
38855C:  LDR             R0, [R5,#0x38]
38855E:  STR.W           R0, [R8,#8]
388562:  MOV             R0, R5
388564:  VSTR            D16, [R8]
388568:  POP.W           {R8}
38856C:  POP.W           {R4-R7,LR}
388570:  B.W             sub_18EF80
388574:  LDR             R0, [R6,#0x40]
388576:  STR.W           R0, [R8]
38857A:  LDR             R0, [R6,#0x44]
38857C:  STR.W           R0, [R8,#4]
388580:  LDR             R0, [R6,#0x48]
388582:  STR.W           R0, [R8,#8]
388586:  POP.W           {R8}
38858A:  POP             {R4-R7,PC}
