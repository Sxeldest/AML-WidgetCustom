; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler25ComputeHandSignalResponseEP9CPedGroupP4CPedS3_
; Address            : 0x4B66DC - 0x4B6764
; =========================================================

4B66DC:  PUSH            {R4-R7,LR}
4B66DE:  ADD             R7, SP, #0xC
4B66E0:  PUSH.W          {R8-R11}
4B66E4:  SUB             SP, SP, #0x2C
4B66E6:  MOV             R10, R1
4B66E8:  CMP.W           R10, #0
4B66EC:  BEQ             loc_4B675A
4B66EE:  ADD.W           R4, R0, #0xC
4B66F2:  ADDS            R0, #0x3C ; '<'
4B66F4:  STR             R0, [SP,#0x48+var_40]
4B66F6:  ADD             R6, SP, #0x48+var_34
4B66F8:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B6706)
4B66FA:  ADD.W           R9, SP, #0x48+var_3C
4B66FE:  MOV.W           R8, #0
4B6702:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B6704:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B6706:  ADD.W           R11, R0, #8
4B670A:  LDR.W           R5, [R4,R8,LSL#2]
4B670E:  CBZ             R5, loc_4B6750
4B6710:  MOV             R0, R5; this
4B6712:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B6716:  CBNZ            R0, loc_4B6750
4B6718:  MOV             R0, R6; this
4B671A:  MOV             R1, R10; CPed *
4B671C:  MOV.W           R2, #0xFFFFFFFF; int
4B6720:  MOVS            R3, #0; unsigned __int8
4B6722:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
4B6726:  MOV             R0, R9; this
4B6728:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B672C:  LDR             R3, [SP,#0x48+var_40]; CPedTaskPair *
4B672E:  MOV.W           R0, #0xFFFFFFFF
4B6732:  STR             R0, [SP,#0x48+var_48]; int
4B6734:  MOVS            R0, #0; this
4B6736:  MOV             R1, R5; CPed *
4B6738:  MOV             R2, R6; CTask *
4B673A:  STR.W           R11, [SP,#0x48+var_3C]
4B673E:  STR             R0, [SP,#0x48+var_44]; bool
4B6740:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B6744:  MOV             R0, R9; this
4B6746:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B674A:  MOV             R0, R6; this
4B674C:  BLX             j__ZN23CTaskComplexSignalAtPedD2Ev; CTaskComplexSignalAtPed::~CTaskComplexSignalAtPed()
4B6750:  ADD.W           R8, R8, #1
4B6754:  CMP.W           R8, #8
4B6758:  BNE             loc_4B670A
4B675A:  MOVS            R0, #0
4B675C:  ADD             SP, SP, #0x2C ; ','
4B675E:  POP.W           {R8-R11}
4B6762:  POP             {R4-R7,PC}
