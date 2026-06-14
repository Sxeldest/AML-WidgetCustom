; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStepC2EP7CEntity
; Address            : 0x50AD28 - 0x50AD5A
; =========================================================

50AD28:  PUSH            {R4,R5,R7,LR}
50AD2A:  ADD             R7, SP, #8
50AD2C:  MOV             R5, R1
50AD2E:  MOV             R4, R0
50AD30:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50AD34:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveStep_ptr - 0x50AD40)
50AD36:  MOVS            R1, #0
50AD38:  STRB            R1, [R4,#0xC]
50AD3A:  CMP             R5, #0
50AD3C:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveStep_ptr
50AD3E:  STR             R1, [R4,#0x10]
50AD40:  MOV             R1, R4
50AD42:  LDR             R0, [R0]; `vtable for'CTaskSimpleEvasiveStep ...
50AD44:  ADD.W           R0, R0, #8
50AD48:  STR             R0, [R4]
50AD4A:  STR.W           R5, [R1,#8]!; CEntity **
50AD4E:  ITT NE
50AD50:  MOVNE           R0, R5; this
50AD52:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50AD56:  MOV             R0, R4
50AD58:  POP             {R4,R5,R7,PC}
