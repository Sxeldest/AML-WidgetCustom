; =========================================================
; Game Engine Function: _ZNK23CTaskComplexWanderMedic5CloneEv
; Address            : 0x512838 - 0x512872
; =========================================================

512838:  PUSH            {R4,R6,R7,LR}
51283A:  ADD             R7, SP, #8
51283C:  SUB             SP, SP, #8; float
51283E:  MOV             R4, R0
512840:  MOVS            R0, #word_28; this
512842:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512846:  LDR             R1, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x51284E)
512848:  LDRB            R2, [R4,#0x10]; unsigned __int8
51284A:  ADD             R1, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
51284C:  LDR             R3, [R1]; CTaskComplexWander::ms_fTargetRadius ...
51284E:  LDR             R1, [R4,#0xC]; int
512850:  LDRB.W          R4, [R4,#0x24]
512854:  VLDR            S0, [R3]
512858:  AND.W           R3, R4, #1; bool
51285C:  VSTR            S0, [SP,#0x10+var_10]
512860:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
512864:  LDR             R1, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x51286A)
512866:  ADD             R1, PC; _ZTV23CTaskComplexWanderMedic_ptr
512868:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderMedic ...
51286A:  ADDS            R1, #8
51286C:  STR             R1, [R0]
51286E:  ADD             SP, SP, #8
512870:  POP             {R4,R6,R7,PC}
