; =========================================================
; Game Engine Function: _ZN30CTaskSimpleWaitUntilPedIsInCarC2EP4CPed
; Address            : 0x506754 - 0x506784
; =========================================================

506754:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleWaitUntilPedIsInCar::CTaskSimpleWaitUntilPedIsInCar(CPed *)'
506756:  ADD             R7, SP, #8
506758:  MOV             R5, R1
50675A:  MOV             R4, R0
50675C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506760:  LDR             R0, =(_ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr - 0x50676C)
506762:  MOVS            R1, #0
506764:  STRB            R1, [R4,#0xC]
506766:  MOV             R1, R4
506768:  ADD             R0, PC; _ZTV30CTaskSimpleWaitUntilPedIsInCar_ptr
50676A:  CMP             R5, #0
50676C:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsInCar ...
50676E:  ADD.W           R0, R0, #8
506772:  STR             R0, [R4]
506774:  STR.W           R5, [R1,#8]!; CEntity **
506778:  ITT NE
50677A:  MOVNE           R0, R5; this
50677C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506780:  MOV             R0, R4
506782:  POP             {R4,R5,R7,PC}
