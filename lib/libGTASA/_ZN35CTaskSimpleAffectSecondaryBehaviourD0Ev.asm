; =========================================================
; Game Engine Function: _ZN35CTaskSimpleAffectSecondaryBehaviourD0Ev
; Address            : 0x541230 - 0x54125A
; =========================================================

541230:  PUSH            {R4,R6,R7,LR}
541232:  ADD             R7, SP, #8
541234:  MOV             R4, R0
541236:  LDR             R0, =(_ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr - 0x54123C)
541238:  ADD             R0, PC; _ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr
54123A:  LDR             R1, [R0]; `vtable for'CTaskSimpleAffectSecondaryBehaviour ...
54123C:  LDR             R0, [R4,#0x10]
54123E:  ADDS            R1, #8
541240:  STR             R1, [R4]
541242:  CMP             R0, #0
541244:  ITTT NE
541246:  LDRNE           R1, [R0]
541248:  LDRNE           R1, [R1,#4]
54124A:  BLXNE           R1
54124C:  MOV             R0, R4; this
54124E:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
541252:  POP.W           {R4,R6,R7,LR}
541256:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
