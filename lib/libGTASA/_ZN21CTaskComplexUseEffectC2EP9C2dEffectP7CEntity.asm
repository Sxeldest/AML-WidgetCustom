; =========================================================
; Game Engine Function: _ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity
; Address            : 0x4EDC1C - 0x4EDC62
; =========================================================

4EDC1C:  PUSH            {R4-R7,LR}
4EDC1E:  ADD             R7, SP, #0xC
4EDC20:  PUSH.W          {R11}
4EDC24:  MOV             R5, R2
4EDC26:  MOV             R6, R1
4EDC28:  MOV             R4, R0
4EDC2A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EDC2E:  LDR             R0, =(_ZTV21CTaskComplexUseEffect_ptr - 0x4EDC3A)
4EDC30:  MOVS            R1, #0
4EDC32:  MOVS            R2, #4
4EDC34:  STR             R6, [R4,#0xC]
4EDC36:  ADD             R0, PC; _ZTV21CTaskComplexUseEffect_ptr
4EDC38:  STRD.W          R1, R1, [R4,#0x14]
4EDC3C:  STR             R2, [R4,#0x1C]
4EDC3E:  CMP             R5, #0
4EDC40:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffect ...
4EDC42:  STRB.W          R1, [R4,#0x20]
4EDC46:  MOV             R1, R4
4EDC48:  ADD.W           R0, R0, #8
4EDC4C:  STR             R0, [R4]
4EDC4E:  STR.W           R5, [R1,#0x10]!; CEntity **
4EDC52:  ITT NE
4EDC54:  MOVNE           R0, R5; this
4EDC56:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EDC5A:  MOV             R0, R4
4EDC5C:  POP.W           {R11}
4EDC60:  POP             {R4-R7,PC}
