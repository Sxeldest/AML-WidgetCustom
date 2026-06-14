; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute17CreateNextSubTaskEP4CPed
; Address            : 0x51E9F4 - 0x51EA98
; =========================================================

51E9F4:  PUSH            {R4,R5,R7,LR}
51E9F6:  ADD             R7, SP, #8
51E9F8:  MOV             R5, R0
51E9FA:  MOV             R4, R1
51E9FC:  LDR             R0, [R5,#8]
51E9FE:  LDR             R1, [R0]
51EA00:  LDR             R1, [R1,#0x14]
51EA02:  BLX             R1
51EA04:  MOVW            R1, #0x516
51EA08:  CMP             R0, R1
51EA0A:  BEQ             loc_51EA48
51EA0C:  LDR             R0, [R5,#8]
51EA0E:  LDR             R1, [R0]
51EA10:  LDR             R1, [R1,#0x14]
51EA12:  BLX             R1
51EA14:  CMP.W           R0, #0x2C0
51EA18:  BNE             loc_51EA30
51EA1A:  LDRB.W          R0, [R4,#0x485]
51EA1E:  LSLS            R0, R0, #0x1F
51EA20:  BNE             loc_51EA48
51EA22:  LDR             R0, [R5]
51EA24:  MOV             R1, R4
51EA26:  LDR             R2, [R0,#0x2C]
51EA28:  MOV             R0, R5
51EA2A:  POP.W           {R4,R5,R7,LR}
51EA2E:  BX              R2
51EA30:  LDR             R0, [R5,#8]
51EA32:  LDR             R1, [R0]
51EA34:  LDR             R1, [R1,#0x14]
51EA36:  BLX             R1
51EA38:  CMP             R0, #0xC8
51EA3A:  BEQ             loc_51EA48
51EA3C:  LDR             R0, [R5,#8]
51EA3E:  LDR             R1, [R0]
51EA40:  LDR             R1, [R1,#0x14]
51EA42:  BLX             R1
51EA44:  CMP             R0, #0xCB
51EA46:  BNE             loc_51EA4C
51EA48:  MOVS            R0, #0
51EA4A:  POP             {R4,R5,R7,PC}
51EA4C:  LDR             R0, [R5,#8]
51EA4E:  LDR             R1, [R0]
51EA50:  LDR             R1, [R1,#0x14]
51EA52:  BLX             R1
51EA54:  LDR             R1, [R5,#0x24]
51EA56:  CMP.W           R0, #0x384
51EA5A:  BNE             loc_51EA6E
51EA5C:  LDR             R0, [R5,#0x20]
51EA5E:  ADDS            R2, R1, #1
51EA60:  LDR             R0, [R0]
51EA62:  CMP             R2, R0
51EA64:  BNE             loc_51EA6E
51EA66:  LDRB.W          R0, [R5,#0x28]
51EA6A:  LSLS            R0, R0, #0x1D
51EA6C:  BPL             loc_51EA48
51EA6E:  ADDS            R0, R1, #1
51EA70:  STR             R0, [R5,#0x24]
51EA72:  MOV             R0, R5; this
51EA74:  BLX             j__ZN28CTaskComplexFollowPointRoute14GetSubTaskTypeEv; CTaskComplexFollowPointRoute::GetSubTaskType(void)
51EA78:  MOV             R2, R0; int
51EA7A:  LDRB.W          R0, [R5,#0x28]
51EA7E:  LSLS            R0, R0, #0x1C
51EA80:  BPL             loc_51EA8C
51EA82:  MOV             R0, R5; this
51EA84:  MOV             R1, R4; CPed *
51EA86:  BLX             j__ZN28CTaskComplexFollowPointRoute16CalcGoToTaskTypeEP4CPedi; CTaskComplexFollowPointRoute::CalcGoToTaskType(CPed *,int)
51EA8A:  MOV             R2, R0
51EA8C:  MOV             R1, R2; int
51EA8E:  MOV             R0, R5; this
51EA90:  MOV             R2, R4; CPed *
51EA92:  POP.W           {R4,R5,R7,LR}
51EA96:  B               _ZN28CTaskComplexFollowPointRoute13CreateSubTaskEiP4CPed; CTaskComplexFollowPointRoute::CreateSubTask(int,CPed *)
