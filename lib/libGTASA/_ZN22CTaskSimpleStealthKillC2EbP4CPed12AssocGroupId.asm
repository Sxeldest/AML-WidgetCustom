; =========================================================
; Game Engine Function: _ZN22CTaskSimpleStealthKillC2EbP4CPed12AssocGroupId
; Address            : 0x4E8608 - 0x4E864E
; =========================================================

4E8608:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleStealthKill::CTaskSimpleStealthKill(bool, CPed *, AssocGroupId)'
4E860A:  ADD             R7, SP, #0xC
4E860C:  PUSH.W          {R8}
4E8610:  MOV             R8, R3
4E8612:  MOV             R5, R2
4E8614:  MOV             R6, R1
4E8616:  MOV             R4, R0
4E8618:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E861C:  LDR             R0, =(_ZTV22CTaskSimpleStealthKill_ptr - 0x4E8628)
4E861E:  MOVS            R1, #0
4E8620:  STRB            R6, [R4,#8]
4E8622:  CMP             R5, #0
4E8624:  ADD             R0, PC; _ZTV22CTaskSimpleStealthKill_ptr
4E8626:  STR.W           R8, [R4,#0x10]
4E862A:  STRH            R1, [R4,#0x14]
4E862C:  LDR             R0, [R0]; `vtable for'CTaskSimpleStealthKill ...
4E862E:  STRD.W          R1, R1, [R4,#0x18]
4E8632:  MOV             R1, R4
4E8634:  ADD.W           R0, R0, #8
4E8638:  STR             R0, [R4]
4E863A:  STR.W           R5, [R1,#0xC]!; CEntity **
4E863E:  ITT NE
4E8640:  MOVNE           R0, R5; this
4E8642:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E8646:  MOV             R0, R4
4E8648:  POP.W           {R8}
4E864C:  POP             {R4-R7,PC}
