; =========================================================
; Game Engine Function: _ZN21CTaskComplexFleePoint13CreateSubTaskEi
; Address            : 0x512AB4 - 0x512B9C
; =========================================================

512AB4:  PUSH            {R4,R5,R7,LR}
512AB6:  ADD             R7, SP, #8
512AB8:  SUB             SP, SP, #0x10; float
512ABA:  MOV             R5, R0
512ABC:  MOVS            R4, #0
512ABE:  CMP.W           R1, #0x384
512AC2:  BGE             loc_512AF0
512AC4:  CMP             R1, #0xF4
512AC6:  BEQ             loc_512B2C
512AC8:  MOVW            R0, #0x2CA
512ACC:  CMP             R1, R0
512ACE:  BNE             loc_512B96
512AD0:  MOVS            R0, #dword_14; this
512AD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512AD6:  MOV             R4, R0
512AD8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512ADC:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x512AE8)
512ADE:  MOVS            R1, #0
512AE0:  STR             R1, [R4,#0xC]
512AE2:  MOVS            R1, #1; unsigned int
512AE4:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
512AE6:  STRH            R1, [R4,#0x10]
512AE8:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar ...
512AEA:  ADDS            R0, #8
512AEC:  STR             R0, [R4]
512AEE:  B               loc_512B96
512AF0:  BEQ             loc_512B74
512AF2:  MOVW            R0, #0x387
512AF6:  CMP             R1, R0
512AF8:  BNE             loc_512B96
512AFA:  MOVS            R0, #word_28; this
512AFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512B00:  MOV             R4, R0
512B02:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x512B0C)
512B04:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x512B12)
512B06:  MOVS            R2, #0
512B08:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
512B0A:  STRD.W          R2, R2, [SP,#0x18+var_14]; bool
512B0E:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
512B10:  ADD.W           R2, R5, #0x18; CVector *
512B14:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
512B16:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
512B18:  LDR             R3, [R0]; float
512B1A:  MOV             R0, R4; this
512B1C:  VLDR            S0, [R1]
512B20:  MOVS            R1, #7; int
512B22:  VSTR            S0, [SP,#0x18+var_18]
512B26:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
512B2A:  B               loc_512B96
512B2C:  MOVS            R0, #dword_40; this
512B2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512B32:  MOV             R4, R0
512B34:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
512B38:  MOVS            R0, #dword_20; this
512B3A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512B3E:  MOV             R5, R0
512B40:  MOVS            R0, #0
512B42:  STR             R0, [SP,#0x18+var_18]
512B44:  MOV             R0, R5
512B46:  MOVS            R1, #0
512B48:  MOVS            R2, #0xA5
512B4A:  MOV.W           R3, #0x40800000
512B4E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
512B52:  MOV             R0, R4; this
512B54:  MOV             R1, R5; CTask *
512B56:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
512B5A:  MOVS            R0, #dword_1C; this
512B5C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512B60:  MOV.W           R1, #0x7D0; int
512B64:  MOV             R5, R0
512B66:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
512B6A:  MOV             R0, R4; this
512B6C:  MOV             R1, R5; CTask *
512B6E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
512B72:  B               loc_512B96
512B74:  MOVS            R0, #word_2C; this
512B76:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512B7A:  MOV             R4, R0
512B7C:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x512B88)
512B7E:  MOVS            R1, #0
512B80:  ADD.W           R2, R5, #0x18; CVector *
512B84:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
512B86:  STRD.W          R1, R1, [SP,#0x18+var_18]; bool
512B8A:  MOVS            R1, #7; int
512B8C:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
512B8E:  LDR             R3, [R0]; float
512B90:  MOV             R0, R4; this
512B92:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
512B96:  MOV             R0, R4
512B98:  ADD             SP, SP, #0x10
512B9A:  POP             {R4,R5,R7,PC}
