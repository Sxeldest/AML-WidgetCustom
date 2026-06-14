; =========================================================
; Game Engine Function: _ZNK23CTaskGoToVehicleAndLean5CloneEv
; Address            : 0x51C508 - 0x51C54C
; =========================================================

51C508:  PUSH            {R4-R7,LR}
51C50A:  ADD             R7, SP, #0xC
51C50C:  PUSH.W          {R11}
51C510:  MOV             R6, R0
51C512:  MOVS            R0, #dword_24; this
51C514:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51C518:  MOV             R4, R0
51C51A:  LDRD.W          R5, R6, [R6,#0xC]
51C51E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51C522:  LDR             R0, =(_ZTV23CTaskGoToVehicleAndLean_ptr - 0x51C52E)
51C524:  MOVS            R1, #0
51C526:  STR             R6, [R4,#0x10]
51C528:  CMP             R5, #0
51C52A:  ADD             R0, PC; _ZTV23CTaskGoToVehicleAndLean_ptr
51C52C:  STRB            R1, [R4,#0x14]
51C52E:  MOV             R1, R4
51C530:  LDR             R0, [R0]; `vtable for'CTaskGoToVehicleAndLean ...
51C532:  ADD.W           R0, R0, #8
51C536:  STR             R0, [R4]
51C538:  STR.W           R5, [R1,#0xC]!; CEntity **
51C53C:  ITT NE
51C53E:  MOVNE           R0, R5; this
51C540:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51C544:  MOV             R0, R4
51C546:  POP.W           {R11}
51C54A:  POP             {R4-R7,PC}
