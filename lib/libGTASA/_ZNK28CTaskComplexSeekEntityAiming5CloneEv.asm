; =========================================================
; Game Engine Function: _ZNK28CTaskComplexSeekEntityAiming5CloneEv
; Address            : 0x546280 - 0x5462C4
; =========================================================

546280:  PUSH            {R4-R7,LR}
546282:  ADD             R7, SP, #0xC
546284:  PUSH.W          {R8}
546288:  MOV             R6, R0
54628A:  MOVS            R0, #off_18; this
54628C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546290:  LDRD.W          R5, R8, [R6,#0xC]
546294:  MOV             R4, R0
546296:  LDR             R6, [R6,#0x14]
546298:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54629C:  LDR             R0, =(_ZTV28CTaskComplexSeekEntityAiming_ptr - 0x5462AA)
54629E:  MOV             R1, R4
5462A0:  STRD.W          R8, R6, [R4,#0x10]
5462A4:  CMP             R5, #0
5462A6:  ADD             R0, PC; _ZTV28CTaskComplexSeekEntityAiming_ptr
5462A8:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntityAiming ...
5462AA:  ADD.W           R0, R0, #8
5462AE:  STR             R0, [R4]
5462B0:  STR.W           R5, [R1,#0xC]!; CEntity **
5462B4:  ITT NE
5462B6:  MOVNE           R0, R5; this
5462B8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5462BC:  MOV             R0, R4
5462BE:  POP.W           {R8}
5462C2:  POP             {R4-R7,PC}
