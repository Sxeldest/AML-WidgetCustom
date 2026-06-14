; =========================================================
; Game Engine Function: _ZNK30CTaskSimpleWaitUntilPedIsInCar5CloneEv
; Address            : 0x5074A8 - 0x5074E0
; =========================================================

5074A8:  PUSH            {R4,R5,R7,LR}
5074AA:  ADD             R7, SP, #8
5074AC:  MOV             R5, R0
5074AE:  MOVS            R0, #word_10; this
5074B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5074B4:  MOV             R4, R0
5074B6:  LDR             R5, [R5,#8]
5074B8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5074BC:  LDR             R0, =(_ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr - 0x5074C8)
5074BE:  MOVS            R1, #0
5074C0:  STRB            R1, [R4,#0xC]
5074C2:  MOV             R1, R4
5074C4:  ADD             R0, PC; _ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr
5074C6:  CMP             R5, #0
5074C8:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsInCar ...
5074CA:  ADD.W           R0, R0, #8
5074CE:  STR             R0, [R4]
5074D0:  STR.W           R5, [R1,#8]!; CEntity **
5074D4:  ITT NE
5074D6:  MOVNE           R0, R5; this
5074D8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5074DC:  MOV             R0, R4
5074DE:  POP             {R4,R5,R7,PC}
