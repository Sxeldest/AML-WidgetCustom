; =========================================================
; Game Engine Function: _ZN17CTaskComplexBeCopD0Ev
; Address            : 0x35F544 - 0x35F56E
; =========================================================

35F544:  PUSH            {R4,R6,R7,LR}
35F546:  ADD             R7, SP, #8
35F548:  MOV             R4, R0
35F54A:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x35F550)
35F54C:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
35F54E:  LDR             R1, [R0]; `vtable for'CTaskComplexWanderCop ...
35F550:  LDR             R0, [R4,#0x28]
35F552:  ADDS            R1, #8
35F554:  STR             R1, [R4]
35F556:  CMP             R0, #0
35F558:  ITTT NE
35F55A:  LDRNE           R1, [R0]
35F55C:  LDRNE           R1, [R1,#4]
35F55E:  BLXNE           R1
35F560:  MOV             R0, R4; this
35F562:  BLX             j__ZN18CTaskComplexWanderD2Ev; CTaskComplexWander::~CTaskComplexWander()
35F566:  POP.W           {R4,R6,R7,LR}
35F56A:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
