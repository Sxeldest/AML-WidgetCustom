; =========================================================
; Game Engine Function: _ZNK25CTaskSimpleHurtPedWithCar5CloneEv
; Address            : 0x50F690 - 0x50F6D4
; =========================================================

50F690:  PUSH            {R4-R7,LR}
50F692:  ADD             R7, SP, #0xC
50F694:  PUSH.W          {R11}
50F698:  MOV             R6, R0
50F69A:  MOVS            R0, #dword_14; this
50F69C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F6A0:  MOV             R4, R0
50F6A2:  LDRD.W          R5, R6, [R6,#8]
50F6A6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50F6AA:  LDR             R0, =(_ZTV25CTaskSimpleHurtPedWithCar_ptr - 0x50F6B6)
50F6AC:  MOVS            R1, #0
50F6AE:  STR             R6, [R4,#0xC]
50F6B0:  CMP             R5, #0
50F6B2:  ADD             R0, PC; _ZTV25CTaskSimpleHurtPedWithCar_ptr
50F6B4:  STRB            R1, [R4,#0x10]
50F6B6:  MOV             R1, R4
50F6B8:  LDR             R0, [R0]; `vtable for'CTaskSimpleHurtPedWithCar ...
50F6BA:  ADD.W           R0, R0, #8
50F6BE:  STR             R0, [R4]
50F6C0:  STR.W           R5, [R1,#8]!; CEntity **
50F6C4:  ITT NE
50F6C6:  MOVNE           R0, R5; this
50F6C8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50F6CC:  MOV             R0, R4
50F6CE:  POP.W           {R11}
50F6D2:  POP             {R4-R7,PC}
