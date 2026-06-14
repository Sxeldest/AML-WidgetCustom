; =========================================================
; Game Engine Function: _ZN31CTaskSimpleWaitUntilPedIsOutCarC2EP4CPedRK7CVector
; Address            : 0x506640 - 0x506686
; =========================================================

506640:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleWaitUntilPedIsOutCar::CTaskSimpleWaitUntilPedIsOutCar(CPed *, CVector const&)'
506642:  ADD             R7, SP, #0xC
506644:  PUSH.W          {R11}
506648:  MOV             R6, R2
50664A:  MOV             R5, R1
50664C:  MOV             R4, R0
50664E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506652:  LDR             R0, =(_ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr - 0x50665E)
506654:  MOVS            R1, #1
506656:  STRB            R1, [R4,#0xC]
506658:  MOV             R1, R4
50665A:  ADD             R0, PC; _ZTV31CTaskSimpleWaitUntilPedIsOutCar_ptr
50665C:  CMP             R5, #0
50665E:  LDR             R0, [R0]; `vtable for'CTaskSimpleWaitUntilPedIsOutCar ...
506660:  ADD.W           R0, R0, #8
506664:  STR             R0, [R4]
506666:  STR.W           R5, [R1,#8]!; CEntity **
50666A:  VLDR            D16, [R6]
50666E:  LDR             R0, [R6,#8]
506670:  STR             R0, [R4,#0x18]
506672:  VSTR            D16, [R4,#0x10]
506676:  ITT NE
506678:  MOVNE           R0, R5; this
50667A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50667E:  MOV             R0, R4
506680:  POP.W           {R11}
506684:  POP             {R4-R7,PC}
