; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleKillPedWithCar5CloneEv
; Address            : 0x50F540 - 0x50F580
; =========================================================

50F540:  PUSH            {R4-R7,LR}
50F542:  ADD             R7, SP, #0xC
50F544:  PUSH.W          {R11}
50F548:  MOV             R6, R0
50F54A:  MOVS            R0, #word_10; this
50F54C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F550:  MOV             R4, R0
50F552:  LDRD.W          R5, R6, [R6,#8]
50F556:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50F55A:  LDR             R0, =(_ZTV25CTaskSimpleKillPedWithCar_ptr - 0x50F566)
50F55C:  MOV             R1, R4
50F55E:  STR             R6, [R4,#0xC]
50F560:  CMP             R5, #0
50F562:  ADD             R0, PC; _ZTV25CTaskSimpleKillPedWithCar_ptr
50F564:  LDR             R0, [R0]; `vtable for'CTaskSimpleKillPedWithCar ...
50F566:  ADD.W           R0, R0, #8
50F56A:  STR             R0, [R4]
50F56C:  STR.W           R5, [R1,#8]!; CEntity **
50F570:  ITT NE
50F572:  MOVNE           R0, R5; this
50F574:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50F578:  MOV             R0, R4
50F57A:  POP.W           {R11}
50F57E:  POP             {R4-R7,PC}
