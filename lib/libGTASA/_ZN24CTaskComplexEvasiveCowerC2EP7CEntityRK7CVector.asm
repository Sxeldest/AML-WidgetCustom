; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCowerC2EP7CEntityRK7CVector
; Address            : 0x50E658 - 0x50E69C
; =========================================================

50E658:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexEvasiveCower::CTaskComplexEvasiveCower(CEntity *, CVector const&)'
50E65A:  ADD             R7, SP, #0xC
50E65C:  PUSH.W          {R11}
50E660:  MOV             R6, R2
50E662:  MOV             R5, R1
50E664:  MOV             R4, R0
50E666:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50E66A:  LDR             R0, =(_ZTV24CTaskComplexEvasiveCower_ptr - 0x50E674)
50E66C:  MOV             R1, R4
50E66E:  CMP             R5, #0
50E670:  ADD             R0, PC; _ZTV24CTaskComplexEvasiveCower_ptr
50E672:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveCower ...
50E674:  ADD.W           R0, R0, #8
50E678:  STR             R0, [R4]
50E67A:  VLDR            D16, [R6]
50E67E:  LDR             R0, [R6,#8]
50E680:  STR.W           R5, [R1,#0x18]!; CEntity **
50E684:  STR.W           R0, [R1,#-4]
50E688:  VSTR            D16, [R1,#-0xC]
50E68C:  ITT NE
50E68E:  MOVNE           R0, R5; this
50E690:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50E694:  MOV             R0, R4
50E696:  POP.W           {R11}
50E69A:  POP             {R4-R7,PC}
