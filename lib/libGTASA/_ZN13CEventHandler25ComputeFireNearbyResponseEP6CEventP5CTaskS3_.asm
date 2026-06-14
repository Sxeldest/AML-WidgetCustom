; =========================================================
; Game Engine Function: _ZN13CEventHandler25ComputeFireNearbyResponseEP6CEventP5CTaskS3_
; Address            : 0x383978 - 0x3839A2
; =========================================================

383978:  PUSH            {R4,R6,R7,LR}
38397A:  ADD             R7, SP, #8
38397C:  MOV             R4, R0
38397E:  LDRSH.W         R0, [R1,#0xA]
383982:  CMP             R0, #0xC8
383984:  BEQ             loc_38399C
383986:  CMP.W           R0, #0x25C
38398A:  IT NE
38398C:  POPNE           {R4,R6,R7,PC}
38398E:  MOVS            R0, #word_10; this
383990:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383994:  BLX             j__ZN27CTaskComplexExtinguishFiresC2Ev; CTaskComplexExtinguishFires::CTaskComplexExtinguishFires(void)
383998:  STR             R0, [R4,#0x24]
38399A:  POP             {R4,R6,R7,PC}
38399C:  MOVS            R0, #0
38399E:  STR             R0, [R4,#0x24]
3839A0:  POP             {R4,R6,R7,PC}
