; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUpC2EP8CVehiclei
; Address            : 0x505250 - 0x505288
; =========================================================

505250:  PUSH            {R4-R7,LR}
505252:  ADD             R7, SP, #0xC
505254:  PUSH.W          {R11}
505258:  MOV             R6, R2
50525A:  MOV             R5, R1
50525C:  MOV             R4, R0
50525E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
505262:  LDR             R0, =(_ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr - 0x50526E)
505264:  MOV             R1, R4
505266:  STR             R6, [R4,#0x10]
505268:  CMP             R5, #0
50526A:  ADD             R0, PC; _ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr
50526C:  LDR             R0, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOutAndStandUp ...
50526E:  ADD.W           R0, R0, #8
505272:  STR             R0, [R4]
505274:  STR.W           R5, [R1,#0xC]!; CEntity **
505278:  ITT NE
50527A:  MOVNE           R0, R5; this
50527C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
505280:  MOV             R0, R4
505282:  POP.W           {R11}
505286:  POP             {R4-R7,PC}
