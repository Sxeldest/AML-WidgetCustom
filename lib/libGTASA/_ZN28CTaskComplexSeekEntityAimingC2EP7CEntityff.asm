; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAimingC2EP7CEntityff
; Address            : 0x5455D0 - 0x54560E
; =========================================================

5455D0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexSeekEntityAiming::CTaskComplexSeekEntityAiming(CEntity *, float, float)'
5455D2:  ADD             R7, SP, #0xC
5455D4:  PUSH.W          {R8}
5455D8:  MOV             R8, R3
5455DA:  MOV             R6, R2
5455DC:  MOV             R5, R1
5455DE:  MOV             R4, R0
5455E0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5455E4:  LDR             R0, =(_ZTV28CTaskComplexSeekEntityAiming_ptr - 0x5455F0)
5455E6:  MOV             R1, R4
5455E8:  STR             R6, [R4,#0x10]
5455EA:  CMP             R5, #0
5455EC:  ADD             R0, PC; _ZTV28CTaskComplexSeekEntityAiming_ptr
5455EE:  STR.W           R8, [R4,#0x14]
5455F2:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntityAiming ...
5455F4:  ADD.W           R0, R0, #8
5455F8:  STR             R0, [R4]
5455FA:  STR.W           R5, [R1,#0xC]!; CEntity **
5455FE:  ITT NE
545600:  MOVNE           R0, R5; this
545602:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
545606:  MOV             R0, R4
545608:  POP.W           {R8}
54560C:  POP             {R4-R7,PC}
