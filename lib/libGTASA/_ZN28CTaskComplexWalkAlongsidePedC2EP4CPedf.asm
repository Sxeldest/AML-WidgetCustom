; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePedC2EP4CPedf
; Address            : 0x535BD4 - 0x535C10
; =========================================================

535BD4:  PUSH            {R4-R7,LR}
535BD6:  ADD             R7, SP, #0xC
535BD8:  PUSH.W          {R11}
535BDC:  MOV             R4, R2
535BDE:  MOV             R5, R1
535BE0:  MOV             R6, R0
535BE2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
535BE6:  LDR             R0, =(_ZTV28CTaskComplexWalkAlongsidePed_ptr - 0x535BF0)
535BE8:  MOVS            R1, #0
535BEA:  STR             R4, [R6,#0x10]
535BEC:  ADD             R0, PC; _ZTV28CTaskComplexWalkAlongsidePed_ptr
535BEE:  STRD.W          R1, R1, [R6,#0x14]
535BF2:  STR             R1, [R6,#0x1C]
535BF4:  MOV             R1, R6
535BF6:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkAlongsidePed ...
535BF8:  ADDS            R0, #8
535BFA:  STR             R0, [R6]
535BFC:  STR.W           R5, [R1,#0xC]!; CEntity **
535C00:  MOV             R0, R5; this
535C02:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535C06:  STR             R4, [R6,#0x10]
535C08:  MOV             R0, R6
535C0A:  POP.W           {R11}
535C0E:  POP             {R4-R7,PC}
