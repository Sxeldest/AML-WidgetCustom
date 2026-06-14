; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler30ComputeResponseLeaderEnterExitERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B5194 - 0x4B5250
; =========================================================

4B5194:  PUSH            {R4-R7,LR}
4B5196:  ADD             R7, SP, #0xC
4B5198:  PUSH.W          {R8-R11}
4B519C:  SUB             SP, SP, #0x54
4B519E:  LDR.W           R8, [R1,#0x28]
4B51A2:  CMP.W           R8, #0
4B51A6:  BEQ             loc_4B5246
4B51A8:  ADD.W           R0, R1, #0x3C ; '<'
4B51AC:  STR             R0, [SP,#0x70+var_60]
4B51AE:  LDR             R0, =(_ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr - 0x4B51C0)
4B51B0:  ADD.W           R4, R1, #0xC
4B51B4:  ADD.W           R10, SP, #0x70+var_54
4B51B8:  MOV.W           R11, #0
4B51BC:  ADD             R0, PC; _ZTV40CTaskSimpleWaitUntilLeaderAreaCodesMatch_ptr
4B51BE:  MOV.W           R9, #0
4B51C2:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilLeaderAreaCodesMatch ...
4B51C4:  ADD.W           R6, R0, #8
4B51C8:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B51CE)
4B51CA:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B51CC:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B51CE:  ADDS            R0, #8
4B51D0:  STR             R0, [SP,#0x70+var_64]
4B51D2:  LDR.W           R5, [R4,R9,LSL#2]
4B51D6:  CBZ             R5, loc_4B523C
4B51D8:  LDRB.W          R0, [R5,#0x485]
4B51DC:  LSLS            R0, R0, #0x1F
4B51DE:  BNE             loc_4B523C
4B51E0:  MOV             R0, R10; this
4B51E2:  MOV             R1, R8; CPed *
4B51E4:  BLX             j__ZN34CTaskSimpleWaitUntilAreaCodesMatchC2EP4CPed_0; CTaskSimpleWaitUntilAreaCodesMatch::CTaskSimpleWaitUntilAreaCodesMatch(CPed *)
4B51E8:  MOV             R1, R5; CPed *
4B51EA:  STRB.W          R11, [SP,#0x70+var_30]
4B51EE:  STRB.W          R11, [SP,#0x70+var_20]
4B51F2:  STR             R6, [SP,#0x70+var_54]
4B51F4:  BLX             j__ZN40CTaskSimpleWaitUntilLeaderAreaCodesMatch10ProcessPedEP4CPed; CTaskSimpleWaitUntilLeaderAreaCodesMatch::ProcessPed(CPed *)
4B51F8:  CMP             R0, #1
4B51FA:  BNE             loc_4B5206
4B51FC:  LDR             R0, [R5,#0x1C]
4B51FE:  ORR.W           R0, R0, #1
4B5202:  STR             R0, [R5,#0x1C]
4B5204:  B               loc_4B5236
4B5206:  MOV             R11, R8
4B5208:  ADD.W           R8, SP, #0x70+var_5C
4B520C:  MOV             R0, R8; this
4B520E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B5212:  LDR             R0, [SP,#0x70+var_64]
4B5214:  MOV             R1, R5; CPed *
4B5216:  LDR             R3, [SP,#0x70+var_60]; CPedTaskPair *
4B5218:  MOV             R2, R10; CTask *
4B521A:  STR             R0, [SP,#0x70+var_5C]
4B521C:  MOV.W           R0, #0xFFFFFFFF
4B5220:  STR             R0, [SP,#0x70+var_70]; int
4B5222:  MOVS            R0, #0; this
4B5224:  STR             R0, [SP,#0x70+var_6C]; bool
4B5226:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B522A:  MOV             R0, R8; this
4B522C:  MOV             R8, R11
4B522E:  MOV.W           R11, #0
4B5232:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B5236:  MOV             R0, R10; this
4B5238:  BLX             j__ZN34CTaskSimpleWaitUntilAreaCodesMatchD2Ev; CTaskSimpleWaitUntilAreaCodesMatch::~CTaskSimpleWaitUntilAreaCodesMatch()
4B523C:  ADD.W           R9, R9, #1
4B5240:  CMP.W           R9, #7
4B5244:  BNE             loc_4B51D2
4B5246:  MOVS            R0, #0
4B5248:  ADD             SP, SP, #0x54 ; 'T'
4B524A:  POP.W           {R8-R11}
4B524E:  POP             {R4-R7,PC}
