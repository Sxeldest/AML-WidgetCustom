; =========================================================
; Game Engine Function: _ZN27CTaskComplexWaitAtAttractorC2EP13CPedAttractori
; Address            : 0x4EDEE4 - 0x4EDF00
; =========================================================

4EDEE4:  PUSH            {R4,R5,R7,LR}
4EDEE6:  ADD             R7, SP, #8
4EDEE8:  MOV             R4, R2
4EDEEA:  MOV             R5, R1
4EDEEC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EDEF0:  LDR             R1, =(_ZTV27CTaskComplexWaitAtAttractor_ptr - 0x4EDEF8)
4EDEF2:  STR             R5, [R0,#0xC]
4EDEF4:  ADD             R1, PC; _ZTV27CTaskComplexWaitAtAttractor_ptr
4EDEF6:  STR             R4, [R0,#0x10]
4EDEF8:  LDR             R1, [R1]; `vtable for'CTaskComplexWaitAtAttractor ...
4EDEFA:  ADDS            R1, #8
4EDEFC:  STR             R1, [R0]
4EDEFE:  POP             {R4,R5,R7,PC}
