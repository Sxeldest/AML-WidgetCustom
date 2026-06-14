; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFootC2ERK7CVector
; Address            : 0x512074 - 0x512096
; =========================================================

512074:  PUSH            {R4,R6,R7,LR}
512076:  ADD             R7, SP, #8
512078:  MOV             R4, R1
51207A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51207E:  LDR             R1, =(_ZTV32CTaskComplexExtinguishFireOnFoot_ptr - 0x512084)
512080:  ADD             R1, PC; _ZTV32CTaskComplexExtinguishFireOnFoot_ptr
512082:  LDR             R1, [R1]; `vtable for'CTaskComplexExtinguishFireOnFoot ...
512084:  ADDS            R1, #8
512086:  STR             R1, [R0]
512088:  VLDR            D16, [R4]
51208C:  LDR             R1, [R4,#8]
51208E:  STR             R1, [R0,#0x14]
512090:  VSTR            D16, [R0,#0xC]
512094:  POP             {R4,R6,R7,PC}
