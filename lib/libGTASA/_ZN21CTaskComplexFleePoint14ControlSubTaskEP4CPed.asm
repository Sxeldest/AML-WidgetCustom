; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint14ControlSubTaskEP4CPed
; Address            : 0x512FBC - 0x513156
; =========================================================

512FBC:  PUSH            {R4-R7,LR}
512FBE:  ADD             R7, SP, #0xC
512FC0:  PUSH.W          {R8}
512FC4:  SUB             SP, SP, #0x20
512FC6:  MOV             R5, R0
512FC8:  MOV             R4, R1
512FCA:  LDR             R6, [R5,#8]
512FCC:  LDR             R0, [R6]
512FCE:  LDR             R1, [R0,#0x14]
512FD0:  MOV             R0, R6
512FD2:  BLX             R1
512FD4:  CMP.W           R0, #0x384
512FD8:  BEQ             loc_512FEA
512FDA:  LDR             R0, [R5,#8]
512FDC:  LDR             R1, [R0]
512FDE:  LDR             R1, [R1,#0x14]
512FE0:  BLX             R1
512FE2:  MOVW            R1, #0x387
512FE6:  CMP             R0, R1
512FE8:  BNE             loc_5130D4
512FEA:  LDRB.W          R0, [R5,#0x38]
512FEE:  CBZ             R0, loc_51300C
512FF0:  MOVW            R3, #0xCCCD
512FF4:  MOVS            R0, #0
512FF6:  STRD.W          R0, R0, [SP,#0x30+var_30]; unsigned __int8
512FFA:  MOVT            R3, #0x3DCC; float
512FFE:  STR             R0, [SP,#0x30+var_28]; unsigned __int8
513000:  MOV             R0, R4; this
513002:  MOVW            R1, #0x15B; unsigned __int16
513006:  MOVS            R2, #0; unsigned int
513008:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51300C:  LDRB.W          R0, [R5,#0x39]
513010:  CMP             R0, #0
513012:  BEQ             loc_5130B2
513014:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51301E)
513016:  MOVS            R3, #0
513018:  LDR             R2, [R5,#0x24]
51301A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51301C:  LDR             R1, [R5]
51301E:  STRB.W          R3, [R5,#0x39]
513022:  MOVS            R3, #1
513024:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
513026:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513028:  STRB.W          R3, [R5,#0x30]
51302C:  STRD.W          R0, R2, [R5,#0x28]
513030:  MOV             R0, R5
513032:  LDR             R2, [R1,#0x2C]
513034:  MOV             R1, R4
513036:  BLX             R2
513038:  MOV             R6, R0
51303A:  LDR             R0, =(g_ikChainMan_ptr - 0x513042)
51303C:  MOV             R1, R4; CPed *
51303E:  ADD             R0, PC; g_ikChainMan_ptr
513040:  LDR             R0, [R0]; g_ikChainMan ; this
513042:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
513046:  CMP             R0, #0
513048:  BNE             loc_5130F2
51304A:  BLX             rand
51304E:  UXTH            R0, R0
513050:  VLDR            S2, =0.000015259
513054:  VMOV            S0, R0
513058:  VCVT.F32.S32    S0, S0
51305C:  VMUL.F32        S0, S0, S2
513060:  VLDR            S2, =100.0
513064:  VMUL.F32        S0, S0, S2
513068:  VCVT.S32.F32    S0, S0
51306C:  VMOV            R0, S0
513070:  CMP             R0, #5
513072:  BGT             loc_5130F2
513074:  LDR.W           R12, =(g_ikChainMan_ptr - 0x513086)
513078:  MOV.W           R2, #0xFFFFFFFF
51307C:  MOV.W           R3, #0x7D0
513080:  MOVS            R1, #0
513082:  ADD             R12, PC; g_ikChainMan_ptr
513084:  STRD.W          R3, R2, [SP,#0x30+var_30]; int
513088:  MOV.W           LR, #3
51308C:  MOV.W           R8, #0x1F4
513090:  MOV.W           R0, #0x3E800000
513094:  ADD             R2, SP, #0x30+var_20
513096:  ADDS            R5, #0xC
513098:  STRD.W          R5, R1, [SP,#0x30+var_28]; int
51309C:  STM.W           R2, {R0,R8,LR}
5130A0:  MOV             R2, R4; CPed *
5130A2:  MOVS            R3, #0; int
5130A4:  LDR.W           R0, [R12]; g_ikChainMan ; int
5130A8:  STR             R1, [SP,#0x30+var_14]; int
5130AA:  ADR             R1, aTaskfleepoint; "TaskFleePoint"
5130AC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5130B0:  B               loc_5130F2
5130B2:  LDRB.W          R0, [R5,#0x30]
5130B6:  CMP             R0, #0
5130B8:  BEQ             loc_51303A
5130BA:  LDRB.W          R0, [R5,#0x31]
5130BE:  CBZ             R0, loc_5130FC
5130C0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5130C8)
5130C2:  MOVS            R1, #0
5130C4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5130C6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5130C8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5130CA:  STRB.W          R1, [R5,#0x31]
5130CE:  STR             R0, [R5,#0x28]
5130D0:  MOV             R1, R0
5130D2:  B               loc_513106
5130D4:  LDR             R0, =(g_ikChainMan_ptr - 0x5130DC)
5130D6:  MOV             R1, R4; CPed *
5130D8:  ADD             R0, PC; g_ikChainMan_ptr
5130DA:  LDR             R0, [R0]; g_ikChainMan ; this
5130DC:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
5130E0:  CBZ             R0, loc_5130F0
5130E2:  LDR             R0, =(g_ikChainMan_ptr - 0x5130EC)
5130E4:  MOV             R1, R4; CPed *
5130E6:  MOVS            R2, #0xFA; int
5130E8:  ADD             R0, PC; g_ikChainMan_ptr
5130EA:  LDR             R0, [R0]; g_ikChainMan ; this
5130EC:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
5130F0:  LDR             R6, [R5,#8]
5130F2:  MOV             R0, R6
5130F4:  ADD             SP, SP, #0x20 ; ' '
5130F6:  POP.W           {R8}
5130FA:  POP             {R4-R7,PC}
5130FC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513104)
5130FE:  LDR             R1, [R5,#0x28]
513100:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513102:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
513104:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513106:  LDR             R2, [R5,#0x2C]
513108:  ADD             R1, R2; unsigned int
51310A:  CMP             R1, R0
51310C:  BHI             loc_51303A
51310E:  MOVS            R0, #dword_40; this
513110:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513114:  MOV             R6, R0
513116:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
51311A:  MOVS            R0, #dword_20; this
51311C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513120:  MOV             R8, R0
513122:  MOVS            R0, #0
513124:  STR             R0, [SP,#0x30+var_30]
513126:  MOV             R0, R8
513128:  MOVS            R1, #0
51312A:  MOVS            R2, #0xA5
51312C:  MOV.W           R3, #0x40800000
513130:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
513134:  MOV             R0, R6; this
513136:  MOV             R1, R8; CTask *
513138:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
51313C:  MOVS            R0, #dword_1C; this
51313E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513142:  MOV.W           R1, #0x7D0; int
513146:  MOV             R8, R0
513148:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
51314C:  MOV             R0, R6; this
51314E:  MOV             R1, R8; CTask *
513150:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
513154:  B               loc_51303A
