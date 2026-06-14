; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop18CreateFirstSubTaskEP4CPed
; Address            : 0x5239DA - 0x523ABA
; =========================================================

5239DA:  PUSH            {R4-R7,LR}
5239DC:  ADD             R7, SP, #0xC
5239DE:  PUSH.W          {R11}
5239E2:  SUB             SP, SP, #8
5239E4:  MOV             R4, R1
5239E6:  MOV             R5, R0
5239E8:  LDR.W           R0, [R4,#0x59C]
5239EC:  CMP             R0, #6
5239EE:  BNE             loc_523A6C
5239F0:  LDRB.W          R0, [R4,#0x7A4]
5239F4:  CBZ             R0, loc_523A1A
5239F6:  MOVS            R0, #dword_20; this
5239F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5239FC:  MOV.W           R1, #0x41000000
523A00:  MOVS            R2, #1; bool
523A02:  STR             R1, [SP,#0x18+var_18]; float
523A04:  MOV             R1, #0x186A0; int
523A0C:  MOVS            R3, #0; bool
523A0E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
523A12:  ADD             SP, SP, #8
523A14:  POP.W           {R11}
523A18:  POP             {R4-R7,PC}
523A1A:  MOV.W           R0, #0xFFFFFFFF; int
523A1E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
523A22:  LDR             R0, [R0,#0x2C]
523A24:  CMP             R0, #1
523A26:  BLT             loc_523A58
523A28:  LDR             R0, [R5,#8]
523A2A:  CBZ             R0, loc_523A3A
523A2C:  LDR             R1, [R0]
523A2E:  LDR             R1, [R1,#0x14]
523A30:  BLX             R1
523A32:  MOVW            R1, #0x44F
523A36:  CMP             R0, R1
523A38:  BEQ             loc_523A58
523A3A:  MOV.W           R0, #0xFFFFFFFF; int
523A3E:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
523A42:  MOV             R1, R4; CCopPed *
523A44:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
523A48:  CMP             R0, #1
523A4A:  BNE             loc_523A58
523A4C:  MOVS            R0, #off_18; this
523A4E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
523A52:  BLX             j__ZN25CTaskComplexPolicePursuitC2Ev; CTaskComplexPolicePursuit::CTaskComplexPolicePursuit(void)
523A56:  B               loc_523A12
523A58:  LDR             R0, [R5,#0x28]
523A5A:  CBZ             R0, loc_523A6C
523A5C:  LDR             R1, [R0]
523A5E:  LDR             R1, [R1,#8]
523A60:  ADD             SP, SP, #8
523A62:  POP.W           {R11}
523A66:  POP.W           {R4-R7,LR}
523A6A:  BX              R1
523A6C:  LDRB.W          R0, [R4,#0x485]
523A70:  LSLS            R0, R0, #0x1F
523A72:  BNE             loc_523AA4
523A74:  MOV             R6, R5
523A76:  MOV             R1, R4
523A78:  LDR.W           R0, [R6],#0x18
523A7C:  LDR             R2, [R0,#0x3C]
523A7E:  MOV             R0, R5
523A80:  BLX             R2
523A82:  MOV             R0, R5
523A84:  MOV             R3, R5
523A86:  LDR.W           R1, [R0],#0x1C
523A8A:  LDRB.W          R2, [R3,#0x10]!
523A8E:  LDR.W           R12, [R1,#0x40]
523A92:  MOV             R1, R4
523A94:  STRD.W          R0, R3, [SP,#0x18+var_18]
523A98:  MOV             R0, R5
523A9A:  MOV             R3, R6
523A9C:  BLX             R12
523A9E:  MOV.W           R2, #0x384
523AA2:  B               loc_523AA8
523AA4:  MOV.W           R2, #0x2C0; int
523AA8:  MOV             R0, R5; this
523AAA:  MOV             R1, R4; CPed *
523AAC:  ADD             SP, SP, #8
523AAE:  POP.W           {R11}
523AB2:  POP.W           {R4-R7,LR}
523AB6:  B.W             _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi; CTaskComplexWander::CreateSubTask(CPed const*,int)
