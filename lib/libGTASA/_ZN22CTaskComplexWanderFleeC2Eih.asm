; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderFleeC2Eih
; Address            : 0x512888 - 0x5128B0
; =========================================================

512888:  PUSH            {R7,LR}; Alternative name is 'CTaskComplexWanderFlee::CTaskComplexWanderFlee(int, unsigned char)'
51288A:  MOV             R7, SP
51288C:  SUB             SP, SP, #8; float
51288E:  LDR             R3, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x512894)
512890:  ADD             R3, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
512892:  LDR             R3, [R3]; CTaskComplexWander::ms_fTargetRadius ...
512894:  VLDR            S0, [R3]
512898:  MOVS            R3, #0; bool
51289A:  VSTR            S0, [SP,#0x10+var_10]
51289E:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
5128A2:  LDR             R1, =(_ZTV22CTaskComplexWanderFlee_ptr - 0x5128A8)
5128A4:  ADD             R1, PC; _ZTV22CTaskComplexWanderFlee_ptr
5128A6:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderFlee ...
5128A8:  ADDS            R1, #8
5128AA:  STR             R1, [R0]
5128AC:  ADD             SP, SP, #8
5128AE:  POP             {R7,PC}
