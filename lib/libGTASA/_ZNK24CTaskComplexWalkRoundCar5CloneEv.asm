; =========================================================
; Game Engine Function: _ZNK24CTaskComplexWalkRoundCar5CloneEv
; Address            : 0x50F7E4 - 0x50F876
; =========================================================

50F7E4:  PUSH            {R4-R7,LR}
50F7E6:  ADD             R7, SP, #0xC
50F7E8:  PUSH.W          {R8-R10}
50F7EC:  MOV             R6, R0
50F7EE:  MOVS            R0, #dword_58; this
50F7F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50F7F4:  MOV             R4, R0
50F7F6:  LDRB.W          R8, [R6,#0xC]
50F7FA:  LDRB.W          R9, [R6,#0xD]
50F7FE:  LDRB.W          R10, [R6,#0xE]
50F802:  LDR             R5, [R6,#0x1C]
50F804:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50F808:  LDR             R0, =(_ZTV24CTaskComplexWalkRoundCar_ptr - 0x50F814)
50F80A:  CMP             R5, #0
50F80C:  STRB.W          R8, [R4,#0xC]
50F810:  ADD             R0, PC; _ZTV24CTaskComplexWalkRoundCar_ptr
50F812:  LDRB            R1, [R4,#0xD]
50F814:  LDRB            R2, [R4,#0xE]
50F816:  LDR             R0, [R0]; `vtable for'CTaskComplexWalkRoundCar ...
50F818:  AND.W           R1, R1, #0xFC
50F81C:  ADD.W           R0, R0, #8
50F820:  STR             R0, [R4]
50F822:  AND.W           R0, R9, #1
50F826:  ORR.W           R0, R0, R1
50F82A:  STRB            R0, [R4,#0xD]
50F82C:  AND.W           R0, R10, #0xF
50F830:  AND.W           R1, R2, #0xF0
50F834:  ORR.W           R0, R0, R1
50F838:  STRB            R0, [R4,#0xE]
50F83A:  VLDR            D16, [R6,#0x10]
50F83E:  MOV             R1, R4
50F840:  LDR             R0, [R6,#0x18]
50F842:  MOV.W           R6, #0
50F846:  STR             R0, [R4,#0x18]
50F848:  MOV.W           R0, #0xFFFFFFFF
50F84C:  STRD.W          R6, R6, [R4,#0x24]
50F850:  STRH            R6, [R4,#0x2C]
50F852:  STR             R0, [R4,#0x54]
50F854:  VSTR            D16, [R4,#0x10]
50F858:  STR.W           R5, [R1,#0x1C]!; CEntity **
50F85C:  ITT NE
50F85E:  MOVNE           R0, R5; this
50F860:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50F864:  MOVS            R0, #dword_64; this
50F866:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
50F86A:  STR             R6, [R0]
50F86C:  STR             R0, [R4,#0x20]
50F86E:  MOV             R0, R4
50F870:  POP.W           {R8-R10}
50F874:  POP             {R4-R7,PC}
