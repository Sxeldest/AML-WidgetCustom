; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler28ComputeHassleSexyPedResponseEP9CPedGroupP4CPedS3_
; Address            : 0x4B6768 - 0x4B6824
; =========================================================

4B6768:  PUSH            {R4-R7,LR}
4B676A:  ADD             R7, SP, #0xC
4B676C:  PUSH.W          {R8-R11}
4B6770:  SUB             SP, SP, #4
4B6772:  VPUSH           {D8-D9}
4B6776:  SUB             SP, SP, #0x40
4B6778:  MOV             R10, R1
4B677A:  CMP.W           R10, #0
4B677E:  BEQ             loc_4B6814
4B6780:  ADD.W           R4, R0, #0xC
4B6784:  ADDS            R0, #0x3C ; '<'
4B6786:  STR             R0, [SP,#0x70+var_68]
4B6788:  ADD             R6, SP, #0x70+var_5C
4B678A:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4B679C)
4B678C:  ADD.W           R9, SP, #0x70+var_64
4B6790:  VLDR            S16, =0.000015259
4B6794:  MOV.W           R8, #0
4B6798:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4B679A:  VLDR            S18, =100.0
4B679E:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4B67A0:  ADD.W           R11, R0, #8
4B67A4:  BLX             rand
4B67A8:  UXTH            R0, R0
4B67AA:  VMOV            S0, R0
4B67AE:  VCVT.F32.S32    S0, S0
4B67B2:  VMUL.F32        S0, S0, S16
4B67B6:  VMUL.F32        S0, S0, S18
4B67BA:  VCVT.S32.F32    S0, S0
4B67BE:  VMOV            R0, S0
4B67C2:  CMP             R0, #0x4C ; 'L'
4B67C4:  BLT             loc_4B680A
4B67C6:  LDR.W           R5, [R4,R8,LSL#2]
4B67CA:  CBZ             R5, loc_4B680A
4B67CC:  MOVW            R0, #0x2EE0
4B67D0:  MOV             R1, R10; CPed *
4B67D2:  STR             R0, [SP,#0x70+var_70]; int
4B67D4:  MOV             R0, R6; this
4B67D6:  MOVS            R2, #0; int
4B67D8:  MOV.W           R3, #0x1F40; int
4B67DC:  BLX             j__ZN18CTaskGangHasslePedC2EP4CPediii; CTaskGangHasslePed::CTaskGangHasslePed(CPed *,int,int,int)
4B67E0:  MOV             R0, R9; this
4B67E2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4B67E6:  LDR             R3, [SP,#0x70+var_68]; CPedTaskPair *
4B67E8:  MOV.W           R0, #0xFFFFFFFF
4B67EC:  STR             R0, [SP,#0x70+var_70]; int
4B67EE:  MOVS            R0, #0; this
4B67F0:  MOV             R1, R5; CPed *
4B67F2:  MOV             R2, R6; CTask *
4B67F4:  STR.W           R11, [SP,#0x70+var_64]
4B67F8:  STR             R0, [SP,#0x70+var_6C]; bool
4B67FA:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B67FE:  MOV             R0, R9; this
4B6800:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4B6804:  MOV             R0, R6; this
4B6806:  BLX             j__ZN18CTaskGangHasslePedD2Ev; CTaskGangHasslePed::~CTaskGangHasslePed()
4B680A:  ADD.W           R8, R8, #1
4B680E:  CMP.W           R8, #7
4B6812:  BNE             loc_4B67A4
4B6814:  MOVS            R0, #0
4B6816:  ADD             SP, SP, #0x40 ; '@'
4B6818:  VPOP            {D8-D9}
4B681C:  ADD             SP, SP, #4
4B681E:  POP.W           {R8-R11}
4B6822:  POP             {R4-R7,PC}
