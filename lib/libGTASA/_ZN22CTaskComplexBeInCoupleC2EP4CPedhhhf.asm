; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCoupleC2EP4CPedhhhf
; Address            : 0x536564 - 0x5365B4
; =========================================================

536564:  PUSH            {R4-R7,LR}
536566:  ADD             R7, SP, #0xC
536568:  PUSH.W          {R8}
53656C:  MOV             R8, R3
53656E:  MOV             R6, R2
536570:  MOV             R5, R1
536572:  MOV             R4, R0
536574:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
536578:  LDR             R0, =(_ZTV22CTaskComplexBeInCouple_ptr - 0x536584)
53657A:  CMP             R5, #0
53657C:  VLDR            S0, [R7,#arg_4]
536580:  ADD             R0, PC; _ZTV22CTaskComplexBeInCouple_ptr
536582:  LDR             R1, [R7,#arg_0]
536584:  STRB            R6, [R4,#0x14]
536586:  LDR             R0, [R0]; `vtable for'CTaskComplexBeInCouple ...
536588:  STRB.W          R8, [R4,#0x15]
53658C:  STRB            R1, [R4,#0x16]
53658E:  MOV.W           R1, #0
536592:  VSTR            S0, [R4,#0x18]
536596:  ADD.W           R0, R0, #8
53659A:  STRB            R1, [R4,#0x1C]
53659C:  MOV             R1, R4
53659E:  STR             R0, [R4]
5365A0:  STR.W           R5, [R1,#0x10]!; CEntity **
5365A4:  ITT NE
5365A6:  MOVNE           R0, R5; this
5365A8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5365AC:  MOV             R0, R4
5365AE:  POP.W           {R8}
5365B2:  POP             {R4-R7,PC}
