; =========================================================
; Game Engine Function: _ZNK17CTaskComplexBeCop5CloneEv
; Address            : 0x35F574 - 0x35F5DE
; =========================================================

35F574:  PUSH            {R4-R7,LR}
35F576:  ADD             R7, SP, #0xC
35F578:  PUSH.W          {R11}
35F57C:  SUB             SP, SP, #8; float
35F57E:  MOV             R5, R0
35F580:  MOVS            R6, #0
35F582:  LDR             R0, [R5,#0x28]
35F584:  CBZ             R0, loc_35F590
35F586:  LDR             R1, [R0]
35F588:  LDR             R1, [R1,#8]
35F58A:  BLX             R1
35F58C:  MOV             R4, R0
35F58E:  B               loc_35F592
35F590:  MOVS            R4, #0
35F592:  MOVS            R0, #dword_50; this
35F594:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35F598:  LDR             R1, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x35F5A0)
35F59A:  LDRB            R2, [R5,#0x10]; unsigned __int8
35F59C:  ADD             R1, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
35F59E:  LDR             R3, [R1]; CTaskComplexWander::ms_fTargetRadius ...
35F5A0:  LDR             R1, [R5,#0xC]; int
35F5A2:  VLDR            S0, [R3]
35F5A6:  MOVS            R3, #1; bool
35F5A8:  VSTR            S0, [SP,#0x18+var_18]
35F5AC:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
35F5B0:  LDR             R1, =(_ZTV17CTaskComplexBeCop_ptr - 0x35F5BE)
35F5B2:  VMOV.I32        Q8, #0
35F5B6:  ADD.W           R2, R0, #0x38 ; '8'
35F5BA:  ADD             R1, PC; _ZTV17CTaskComplexBeCop_ptr
35F5BC:  VST1.32         {D16-D17}, [R2]
35F5C0:  LDR             R1, [R1]; `vtable for'CTaskComplexBeCop ...
35F5C2:  STR.W           R6, [R0,#0x46]
35F5C6:  STRD.W          R6, R6, [R0,#0x2C]
35F5CA:  ADDS            R1, #8
35F5CC:  STRH            R6, [R0,#0x34]
35F5CE:  STR.W           R6, [R0,#0x4A]
35F5D2:  STR             R1, [R0]
35F5D4:  STR             R4, [R0,#0x28]
35F5D6:  ADD             SP, SP, #8
35F5D8:  POP.W           {R11}
35F5DC:  POP             {R4-R7,PC}
