; =========================================================
; Game Engine Function: _ZNK29CTaskSimpleSetPedAsAutoDriver5CloneEv
; Address            : 0x507338 - 0x50736C
; =========================================================

507338:  PUSH            {R4,R5,R7,LR}
50733A:  ADD             R7, SP, #8
50733C:  MOV             R5, R0
50733E:  MOVS            R0, #(byte_9+3); this
507340:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
507344:  MOV             R4, R0
507346:  LDR             R5, [R5,#8]
507348:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50734C:  LDR             R0, =(_ZTV29CTaskSimpleSetPedAsAutoDriver_ptr - 0x507356)
50734E:  MOV             R1, R4
507350:  CMP             R5, #0
507352:  ADD             R0, PC; _ZTV29CTaskSimpleSetPedAsAutoDriver_ptr
507354:  LDR             R0, [R0]; `vtable for'CTaskSimpleSetPedAsAutoDriver ...
507356:  ADD.W           R0, R0, #8
50735A:  STR.W           R0, [R1],#8; CEntity **
50735E:  STR             R5, [R1]
507360:  ITT NE
507362:  MOVNE           R0, R5; this
507364:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
507368:  MOV             R0, R4
50736A:  POP             {R4,R5,R7,PC}
