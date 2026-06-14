; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntityC2EP7CEntity12AssocGroupId
; Address            : 0x542510 - 0x54256A
; =========================================================

542510:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoPickUpEntity::CTaskComplexGoPickUpEntity(CEntity *, AssocGroupId)'
542512:  ADD             R7, SP, #0xC
542514:  PUSH.W          {R8}
542518:  MOV             R6, R2
54251A:  MOV             R5, R1
54251C:  MOV             R4, R0
54251E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
542522:  LDR             R0, =(_ZTV26CTaskComplexGoPickUpEntity_ptr - 0x542532)
542524:  ADR             R1, dword_542570
542526:  VLD1.64         {D16-D17}, [R1@128]
54252A:  ADD.W           R1, R4, #0x10
54252E:  ADD             R0, PC; _ZTV26CTaskComplexGoPickUpEntity_ptr
542530:  MOV.W           R8, #0
542534:  STR.W           R8, [R4,#0x20]
542538:  CMP             R5, #0
54253A:  LDR             R0, [R0]; `vtable for'CTaskComplexGoPickUpEntity ...
54253C:  STR             R6, [R4,#0x2C]
54253E:  VST1.32         {D16-D17}, [R1]
542542:  MOV             R1, R4
542544:  ADD.W           R0, R0, #8
542548:  STR.W           R8, [R4,#0x24]
54254C:  STR             R0, [R4]
54254E:  STR.W           R5, [R1,#0xC]!; CEntity **
542552:  ITT NE
542554:  MOVNE           R0, R5; this
542556:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54255A:  STRB.W          R8, [R4,#0x30]
54255E:  MOV             R0, R4
542560:  STR.W           R8, [R4,#0x28]
542564:  POP.W           {R8}
542568:  POP             {R4-R7,PC}
