; =========================================================
; Game Engine Function: _ZN35CTaskSimpleAffectSecondaryBehaviourC2EbiP5CTask
; Address            : 0x5411D8 - 0x541200
; =========================================================

5411D8:  PUSH            {R4-R7,LR}
5411DA:  ADD             R7, SP, #0xC
5411DC:  PUSH.W          {R11}
5411E0:  MOV             R4, R3
5411E2:  MOV             R5, R2
5411E4:  MOV             R6, R1
5411E6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5411EA:  LDR             R1, =(_ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr - 0x5411F2)
5411EC:  STRB            R6, [R0,#8]
5411EE:  ADD             R1, PC; _ZTV35CTaskSimpleAffectSecondaryBehaviour_ptr
5411F0:  STR             R5, [R0,#0xC]
5411F2:  STR             R4, [R0,#0x10]
5411F4:  LDR             R1, [R1]; `vtable for'CTaskSimpleAffectSecondaryBehaviour ...
5411F6:  ADDS            R1, #8
5411F8:  STR             R1, [R0]
5411FA:  POP.W           {R11}
5411FE:  POP             {R4-R7,PC}
