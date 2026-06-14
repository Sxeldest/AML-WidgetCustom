; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCopD0Ev
; Address            : 0x526E50 - 0x526E7A
; =========================================================

526E50:  PUSH            {R4,R6,R7,LR}
526E52:  ADD             R7, SP, #8
526E54:  MOV             R4, R0
526E56:  LDR             R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x526E5C)
526E58:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
526E5A:  LDR             R1, [R0]; `vtable for'CTaskComplexWanderCop ...
526E5C:  LDR             R0, [R4,#0x28]
526E5E:  ADDS            R1, #8
526E60:  STR             R1, [R4]
526E62:  CMP             R0, #0
526E64:  ITTT NE
526E66:  LDRNE           R1, [R0]
526E68:  LDRNE           R1, [R1,#4]
526E6A:  BLXNE           R1
526E6C:  MOV             R0, R4; this
526E6E:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526E72:  POP.W           {R4,R6,R7,LR}
526E76:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
