; =========================================================
; Game Engine Function: _ZNK25CTaskComplexHitPedWithCar5CloneEv
; Address            : 0x50F3EC - 0x50F432
; =========================================================

50F3EC:  PUSH            {R4-R7,LR}
50F3EE:  ADD             R7, SP, #0xC
50F3F0:  PUSH.W          {R11}
50F3F4:  MOV             R6, R0
50F3F6:  MOVS            R0, #word_28; this
50F3F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F3FC:  MOV             R4, R0
50F3FE:  LDRD.W          R5, R6, [R6,#0xC]
50F402:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50F406:  LDR             R0, =(_ZTV25CTaskComplexHitPedWithCar_ptr - 0x50F414)
50F408:  MOV.W           R1, #0x3E8
50F40C:  STR             R6, [R4,#0x10]
50F40E:  CMP             R5, #0
50F410:  ADD             R0, PC; _ZTV25CTaskComplexHitPedWithCar_ptr
50F412:  STR             R1, [R4,#0x18]
50F414:  MOV             R1, R4
50F416:  LDR             R0, [R0]; `vtable for'CTaskComplexHitPedWithCar ...
50F418:  ADD.W           R0, R0, #8
50F41C:  STR             R0, [R4]
50F41E:  STR.W           R5, [R1,#0xC]!; CEntity **
50F422:  ITT NE
50F424:  MOVNE           R0, R5; this
50F426:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50F42A:  MOV             R0, R4
50F42C:  POP.W           {R11}
50F430:  POP             {R4-R7,PC}
