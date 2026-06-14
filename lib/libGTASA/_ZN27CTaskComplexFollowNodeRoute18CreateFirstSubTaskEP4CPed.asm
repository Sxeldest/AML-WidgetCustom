; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute18CreateFirstSubTaskEP4CPed
; Address            : 0x52016C - 0x520230
; =========================================================

52016C:  PUSH            {R4,R5,R7,LR}
52016E:  ADD             R7, SP, #8
520170:  MOV             R5, R0
520172:  MOV             R4, R1
520174:  LDR             R0, [R5,#0x3C]
520176:  CMP             R0, #0
520178:  BLT             loc_52018C
52017A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x520182)
52017C:  MOVS            R2, #1
52017E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
520180:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
520182:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
520184:  STRB.W          R2, [R5,#0x48]
520188:  STRD.W          R1, R0, [R5,#0x40]
52018C:  LDRB.W          R0, [R5,#0x4C]
520190:  ANDS.W          R1, R0, #8
520194:  ITTT NE
520196:  VMOVNE.I32      Q8, #0
52019A:  ADDNE.W         R2, R5, #0x50 ; 'P'
52019E:  VST1NE.32       {D16-D17}, [R2]
5201A2:  LDRB.W          R2, [R4,#0x485]
5201A6:  LSLS            R2, R2, #0x1F
5201A8:  BNE             loc_5201F0
5201AA:  CBZ             R1, loc_5201C4
5201AC:  AND.W           R0, R0, #0x9F
5201B0:  VMOV.I32        Q8, #0
5201B4:  ORR.W           R0, R0, #0x40 ; '@'
5201B8:  STRB.W          R0, [R5,#0x4C]
5201BC:  ADD.W           R0, R5, #0x50 ; 'P'
5201C0:  VST1.32         {D16-D17}, [R0]
5201C4:  MOV             R0, R5; this
5201C6:  MOV             R1, R4; CPed *
5201C8:  BLX             j__ZN27CTaskComplexFollowNodeRoute16ComputePathNodesEPK4CPed; CTaskComplexFollowNodeRoute::ComputePathNodes(CPed const*)
5201CC:  MOV             R0, R5; this
5201CE:  BLX             j__ZN27CTaskComplexFollowNodeRoute12ComputeRouteEv; CTaskComplexFollowNodeRoute::ComputeRoute(void)
5201D2:  LDRB.W          R0, [R5,#0x4C]
5201D6:  LDR             R1, [R5,#0x38]
5201D8:  TST.W           R0, #2
5201DC:  AND.W           R2, R0, #0xFB
5201E0:  STRB.W          R2, [R5,#0x4C]
5201E4:  BNE             loc_5201F6
5201E6:  MOV.W           R2, #0x384
5201EA:  LSLS            R0, R0, #0x1C
5201EC:  BMI             loc_52021A
5201EE:  B               loc_520224
5201F0:  MOV.W           R2, #0x2C0
5201F4:  B               loc_520224
5201F6:  LDR             R2, [R5,#0x30]
5201F8:  LDR             R3, [R2]
5201FA:  CMP             R3, R1
5201FC:  BNE             loc_520208
5201FE:  MOVW            R2, #0x516
520202:  LSLS            R0, R0, #0x1C
520204:  BMI             loc_52021A
520206:  B               loc_520224
520208:  ADDS            R1, #1
52020A:  MOV.W           R2, #0x384
52020E:  CMP             R1, R3
520210:  IT EQ
520212:  MOVWEQ          R2, #0x387; int
520216:  LSLS            R0, R0, #0x1C
520218:  BPL             loc_520224
52021A:  MOV             R0, R5; this
52021C:  MOV             R1, R4; CPed *
52021E:  BLX             j__ZN27CTaskComplexFollowNodeRoute16CalcGoToTaskTypeEP4CPedi; CTaskComplexFollowNodeRoute::CalcGoToTaskType(CPed *,int)
520222:  MOV             R2, R0
520224:  MOV             R1, R2; int
520226:  MOV             R0, R5; this
520228:  MOV             R2, R4; CPed *
52022A:  POP.W           {R4,R5,R7,LR}
52022E:  B               _ZNK27CTaskComplexFollowNodeRoute13CreateSubTaskEiP4CPed; CTaskComplexFollowNodeRoute::CreateSubTask(int,CPed *)
