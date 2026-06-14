; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartnerC2EPcP4CPedhfhi7CVector
; Address            : 0x5342B0 - 0x534326
; =========================================================

5342B0:  PUSH            {R4-R7,LR}
5342B2:  ADD             R7, SP, #0xC
5342B4:  PUSH.W          {R11}
5342B8:  MOV             R6, R3
5342BA:  MOV             R5, R2
5342BC:  MOV             R4, R0
5342BE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5342C2:  LDR.W           R12, =(_ZTV19CTaskComplexPartner_ptr - 0x5342D4)
5342C6:  CMP             R5, #0
5342C8:  LDRD.W          LR, R1, [R7,#arg_4]
5342CC:  LDRD.W          R0, R3, [R7,#arg_10]
5342D0:  ADD             R12, PC; _ZTV19CTaskComplexPartner_ptr
5342D2:  VLDR            S0, [R7,#arg_0]
5342D6:  STRB.W          R6, [R4,#0x58]
5342DA:  VSTR            S0, [R4,#0x3C]
5342DE:  STRB.W          LR, [R4,#0x5D]
5342E2:  STRB.W          R1, [R4,#0x5B]
5342E6:  LDR             R2, [R7,#arg_C]
5342E8:  LDR.W           R1, [R12]; `vtable for'CTaskComplexPartner ...
5342EC:  STRD.W          R2, R0, [R4,#0x40]
5342F0:  MOV.W           R0, #0
5342F4:  MOVW            R2, #0xFF01
5342F8:  STR             R3, [R4,#0x48]
5342FA:  STRB.W          R0, [R4,#0x5C]
5342FE:  STRH.W          R2, [R4,#0x59]
534302:  STRB.W          R0, [R4,#0x6E]
534306:  STRB.W          R0, [R4,#0x5E]
53430A:  ADD.W           R0, R1, #8
53430E:  MOV             R1, R4
534310:  STR             R0, [R4]
534312:  STR.W           R5, [R1,#0x38]!; CEntity **
534316:  ITT NE
534318:  MOVNE           R0, R5; this
53431A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53431E:  MOV             R0, R4
534320:  POP.W           {R11}
534324:  POP             {R4-R7,PC}
