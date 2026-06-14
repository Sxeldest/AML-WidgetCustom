; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSwatRopeC2EiP5CHeli
; Address            : 0x511B18 - 0x511B56
; =========================================================

511B18:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexUseSwatRope::CTaskComplexUseSwatRope(int, CHeli *)'
511B1A:  ADD             R7, SP, #0xC
511B1C:  PUSH.W          {R11}
511B20:  MOV             R4, R2
511B22:  MOV             R5, R1
511B24:  MOV             R6, R0
511B26:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
511B2A:  LDR             R0, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x511B34)
511B2C:  MOVS            R2, #0
511B2E:  LDRB            R1, [R6,#0x14]
511B30:  ADD             R0, PC; _ZTV23CTaskComplexUseSwatRope_ptr
511B32:  STRD.W          R5, R2, [R6,#0xC]
511B36:  ORR.W           R1, R1, #1
511B3A:  STRB            R1, [R6,#0x14]
511B3C:  LDR             R0, [R0]; `vtable for'CTaskComplexUseSwatRope ...
511B3E:  MOV             R1, R6
511B40:  ADDS            R0, #8
511B42:  STR             R0, [R6]
511B44:  STR.W           R4, [R1,#0x18]!; CEntity **
511B48:  MOV             R0, R4; this
511B4A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
511B4E:  MOV             R0, R6
511B50:  POP.W           {R11}
511B54:  POP             {R4-R7,PC}
