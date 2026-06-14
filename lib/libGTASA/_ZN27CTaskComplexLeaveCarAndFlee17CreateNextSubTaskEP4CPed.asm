; =========================================================
; Game Engine Function: _ZN27CTaskComplexLeaveCarAndFlee17CreateNextSubTaskEP4CPed
; Address            : 0x4F98F8 - 0x4F9A52
; =========================================================

4F98F8:  PUSH            {R4-R7,LR}
4F98FA:  ADD             R7, SP, #0xC
4F98FC:  PUSH.W          {R11}
4F9900:  SUB             SP, SP, #8
4F9902:  MOV             R5, R0
4F9904:  MOV             R4, R1
4F9906:  LDR             R0, [R5,#8]
4F9908:  LDR             R1, [R0]
4F990A:  LDR             R1, [R1,#0x14]
4F990C:  BLX             R1
4F990E:  MOVW            R1, #(elf_hash_bucket+0x292); unsigned int
4F9912:  CMP             R0, R1
4F9914:  BEQ             loc_4F99BA
4F9916:  CMP.W           R0, #0x384
4F991A:  BEQ             loc_4F99D4
4F991C:  CMP.W           R0, #0x2C0
4F9920:  BNE             loc_4F99EC
4F9922:  LDR.W           R0, [R4,#0x590]
4F9926:  CMP             R0, #0
4F9928:  BEQ             loc_4F99F0
4F992A:  LDR.W           R1, [R0,#0x5A0]
4F992E:  CMP             R1, #5
4F9930:  BNE             loc_4F99F0
4F9932:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4F9940)
4F9934:  VMOV.F32        S0, #-2.0
4F9938:  LDRSH.W         R2, [R0,#0x26]
4F993C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4F993E:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4F9940:  LDR.W           R1, [R1,R2,LSL#2]
4F9944:  LDR             R1, [R1,#0x2C]
4F9946:  VLDR            S2, [R1,#0x24]
4F994A:  LDR             R1, [R0,#0x14]; unsigned int
4F994C:  VMUL.F32        S0, S2, S0
4F9950:  ADD.W           R2, R1, #0x30 ; '0'
4F9954:  CMP             R1, #0
4F9956:  VLDR            S2, [R1,#0x10]
4F995A:  VLDR            S4, [R1,#0x14]
4F995E:  VLDR            S6, [R1,#0x18]
4F9962:  IT EQ
4F9964:  ADDEQ           R2, R0, #4
4F9966:  VLDR            S8, [R2]
4F996A:  MOVS            R0, #word_2C; this
4F996C:  VMUL.F32        S2, S2, S0
4F9970:  VMUL.F32        S4, S4, S0
4F9974:  VMUL.F32        S0, S6, S0
4F9978:  VADD.F32        S2, S2, S8
4F997C:  VSTR            S2, [R5,#0x14]
4F9980:  VLDR            S2, [R2,#4]
4F9984:  VADD.F32        S2, S4, S2
4F9988:  VSTR            S2, [R5,#0x18]
4F998C:  VLDR            S2, [R2,#8]
4F9990:  VADD.F32        S0, S0, S2
4F9994:  VSTR            S0, [R5,#0x1C]
4F9998:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F999C:  MOV             R4, R0
4F999E:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x4F99AA)
4F99A0:  MOVS            R1, #0
4F99A2:  ADD.W           R2, R5, #0x14; CVector *
4F99A6:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
4F99A8:  STRD.W          R1, R1, [SP,#0x18+var_18]; bool
4F99AC:  MOVS            R1, #6; int
4F99AE:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
4F99B0:  LDR             R3, [R0]; float
4F99B2:  MOV             R0, R4; this
4F99B4:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4F99B8:  B               loc_4F9A48
4F99BA:  MOV             R0, R4; this
4F99BC:  LDR.W           R5, [R4,#0x440]
4F99C0:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4F99C4:  MOV             R1, R0; CTask *
4F99C6:  ADDS            R0, R5, #4; this
4F99C8:  MOVS            R2, #4; int
4F99CA:  MOVS            R3, #0; bool
4F99CC:  MOVS            R4, #0
4F99CE:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4F99D2:  B               loc_4F9A48
4F99D4:  MOVS            R0, #dword_44; this
4F99D6:  LDRB.W          R6, [R5,#0x24]
4F99DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F99DE:  MOV             R4, R0
4F99E0:  CBZ             R6, loc_4F9A20
4F99E2:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F99EA)
4F99E4:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F99EC)
4F99E6:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F99E8:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F99EA:  B               loc_4F9A06
4F99EC:  MOVS            R4, #0
4F99EE:  B               loc_4F9A48
4F99F0:  MOVS            R0, #dword_44; this
4F99F2:  LDRB.W          R6, [R5,#0x24]
4F99F6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F99FA:  MOV             R4, R0
4F99FC:  CBZ             R6, loc_4F9A2A
4F99FE:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F9A06)
4F9A00:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F9A08)
4F9A02:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F9A04:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F9A06:  LDR             R2, [R5,#0xC]
4F9A08:  LDR             R0, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance ...
4F9A0A:  LDR             R1, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime ...
4F9A0C:  LDR             R6, [R2,#0x14]
4F9A0E:  LDR             R3, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance
4F9A10:  LDR             R0, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime
4F9A12:  ADD.W           R1, R6, #0x30 ; '0'
4F9A16:  CMP             R6, #0
4F9A18:  STR             R0, [SP,#0x18+var_18]
4F9A1A:  IT EQ
4F9A1C:  ADDEQ           R1, R2, #4
4F9A1E:  B               loc_4F9A40
4F9A20:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F9A28)
4F9A22:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F9A2A)
4F9A24:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F9A26:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F9A28:  B               loc_4F9A32
4F9A2A:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F9A32)
4F9A2C:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F9A34)
4F9A2E:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F9A30:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F9A32:  LDR             R0, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance ...
4F9A34:  LDR             R2, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime ...
4F9A36:  ADD.W           R1, R5, #0x14; CVector *
4F9A3A:  LDR             R3, [R0]; float
4F9A3C:  LDR             R0, [R2]; CTaskComplexSmartFleePoint::ms_iFleeTime
4F9A3E:  STR             R0, [SP,#0x18+var_18]; int
4F9A40:  MOV             R0, R4; this
4F9A42:  MOVS            R2, #0; bool
4F9A44:  BLX             j__ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi; CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&,bool,float,int)
4F9A48:  MOV             R0, R4
4F9A4A:  ADD             SP, SP, #8
4F9A4C:  POP.W           {R11}
4F9A50:  POP             {R4-R7,PC}
