; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar
; Address            : 0x502CB8 - 0x502CFC
; =========================================================

502CB8:  PUSH            {R4-R7,LR}
502CBA:  ADD             R7, SP, #0xC
502CBC:  PUSH.W          {R11}
502CC0:  MOV             R6, R2
502CC2:  MOV             R5, R1
502CC4:  MOV             R4, R0
502CC6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
502CCA:  LDR             R0, =(_ZTV30CTaskSimpleCarSetPedInAsDriver_ptr - 0x502CD6)
502CCC:  MOVS            R1, #0
502CCE:  STRB            R1, [R4,#8]
502CD0:  CMP             R5, #0
502CD2:  ADD             R0, PC; _ZTV30CTaskSimpleCarSetPedInAsDriver_ptr
502CD4:  STR             R1, [R4,#0xC]
502CD6:  STR             R6, [R4,#0x14]
502CD8:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedInAsDriver ...
502CDA:  STRB            R1, [R4,#0x18]
502CDC:  STRB            R1, [R4,#0x19]
502CDE:  ADD.W           R0, R0, #8
502CE2:  STRB            R1, [R4,#0x1A]
502CE4:  MOV             R1, R4
502CE6:  STR             R0, [R4]
502CE8:  STR.W           R5, [R1,#0x10]!; CEntity **
502CEC:  ITT NE
502CEE:  MOVNE           R0, R5; this
502CF0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
502CF4:  MOV             R0, R4
502CF6:  POP.W           {R11}
502CFA:  POP             {R4-R7,PC}
