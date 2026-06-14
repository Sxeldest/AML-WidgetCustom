; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCopD2Ev
; Address            : 0x35F518 - 0x35F53E
; =========================================================

35F518:  PUSH            {R4,R6,R7,LR}
35F51A:  ADD             R7, SP, #8
35F51C:  MOV             R4, R0
35F51E:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x35F524)
35F520:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
35F522:  LDR             R1, [R0]; `vtable for'CTaskComplexWanderCop ...
35F524:  LDR             R0, [R4,#0x28]
35F526:  ADDS            R1, #8
35F528:  STR             R1, [R4]
35F52A:  CMP             R0, #0
35F52C:  ITTT NE
35F52E:  LDRNE           R1, [R0]
35F530:  LDRNE           R1, [R1,#4]
35F532:  BLXNE           R1
35F534:  MOV             R0, R4; this
35F536:  POP.W           {R4,R6,R7,LR}
35F53A:  B.W             j_j__ZN18CTaskComplexWanderD2Ev; j_CTaskComplexWander::~CTaskComplexWander()
