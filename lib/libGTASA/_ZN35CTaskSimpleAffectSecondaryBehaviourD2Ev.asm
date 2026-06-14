; =========================================================
; Game Engine Function: _ZN35CTaskSimpleAffectSecondaryBehaviourD2Ev
; Address            : 0x541204 - 0x54122A
; =========================================================

541204:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleAffectSecondaryBehaviour::~CTaskSimpleAffectSecondaryBehaviour()'
541206:  ADD             R7, SP, #8
541208:  MOV             R4, R0
54120A:  LDR             R0, =(_ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr - 0x541210)
54120C:  ADD             R0, PC; _ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr
54120E:  LDR             R1, [R0]; `vtable for'CTaskSimpleAffectSecondaryBehaviour ...
541210:  LDR             R0, [R4,#0x10]
541212:  ADDS            R1, #8
541214:  STR             R1, [R4]
541216:  CMP             R0, #0
541218:  ITTT NE
54121A:  LDRNE           R1, [R0]
54121C:  LDRNE           R1, [R1,#4]
54121E:  BLXNE           R1
541220:  MOV             R0, R4; this
541222:  POP.W           {R4,R6,R7,LR}
541226:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
