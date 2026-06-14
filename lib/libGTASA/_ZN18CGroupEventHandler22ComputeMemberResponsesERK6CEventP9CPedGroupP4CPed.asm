; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler22ComputeMemberResponsesERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B612C - 0x4B61DC
; =========================================================

4B612C:  PUSH            {R4-R7,LR}
4B612E:  ADD             R7, SP, #0xC
4B6130:  PUSH.W          {R8-R11}
4B6134:  SUB             SP, SP, #0x14
4B6136:  MOV             R5, R1
4B6138:  LDR             R1, [R0]
4B613A:  LDR             R1, [R1,#0x14]
4B613C:  BLX             R1
4B613E:  MOV             R4, R0
4B6140:  ADD.W           R0, R5, #0x3C ; '<'
4B6144:  STR             R0, [SP,#0x30+var_28]
4B6146:  ADD.W           R10, R5, #0xC
4B614A:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6158)
4B614C:  ADD.W           R9, SP, #0x30+var_24
4B6150:  MOV.W           R8, #0
4B6154:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B6156:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6158:  ADD.W           R11, R0, #8
4B615C:  LDR.W           R5, [R10,R8,LSL#2]
4B6160:  CBZ             R5, loc_4B61BE
4B6162:  MOV             R0, R5; this
4B6164:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4B6168:  CMP             R0, #1
4B616A:  BNE             loc_4B61BE
4B616C:  LDR             R0, [R4]
4B616E:  LDR             R1, [R0,#0x28]
4B6170:  MOV             R0, R4
4B6172:  BLX             R1
4B6174:  CMP             R0, #1
4B6176:  BNE             loc_4B6186
4B6178:  MOVS            R0, #0xC8
4B617A:  MOV             R1, R5; CPed *
4B617C:  STRH            R0, [R4,#0xA]
4B617E:  MOV             R0, R4; this
4B6180:  MOVS            R2, #1; bool
4B6182:  BLX             j__ZN22CEventEditableResponse23ComputeResponseTaskTypeEP4CPedb; CEventEditableResponse::ComputeResponseTaskType(CPed *,bool)
4B6186:  MOV             R0, R5; this
4B6188:  MOV             R1, R4; CPed *
4B618A:  BLX             j__ZN13CEventHandler24ComputeEventResponseTaskERK4CPedRK6CEvent; CEventHandler::ComputeEventResponseTask(CPed const&,CEvent const&)
4B618E:  MOV             R6, R0
4B6190:  CBZ             R6, loc_4B61BE
4B6192:  MOV             R0, R9; this
4B6194:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B6198:  LDR             R3, [SP,#0x30+var_28]; CPedTaskPair *
4B619A:  MOV.W           R0, #0xFFFFFFFF
4B619E:  STR             R0, [SP,#0x30+var_30]; int
4B61A0:  MOVS            R0, #0; this
4B61A2:  MOV             R1, R5; CPed *
4B61A4:  MOV             R2, R6; CTask *
4B61A6:  STR.W           R11, [SP,#0x30+var_24]
4B61AA:  STR             R0, [SP,#0x30+var_2C]; bool
4B61AC:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B61B0:  MOV             R0, R9; this
4B61B2:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B61B6:  LDR             R0, [R6]
4B61B8:  LDR             R1, [R0,#4]
4B61BA:  MOV             R0, R6
4B61BC:  BLX             R1
4B61BE:  ADD.W           R8, R8, #1
4B61C2:  CMP.W           R8, #8
4B61C6:  BNE             loc_4B615C
4B61C8:  CBZ             R4, loc_4B61D2
4B61CA:  LDR             R0, [R4]
4B61CC:  LDR             R1, [R0,#4]
4B61CE:  MOV             R0, R4
4B61D0:  BLX             R1
4B61D2:  MOVS            R0, #0
4B61D4:  ADD             SP, SP, #0x14
4B61D6:  POP.W           {R8-R11}
4B61DA:  POP             {R4-R7,PC}
