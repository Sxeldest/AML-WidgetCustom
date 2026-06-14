; =========================================================
; Game Engine Function: _ZNK30CTaskSimpleCarSetPedInAsDriver5CloneEv
; Address            : 0x506EA0 - 0x506EFA
; =========================================================

506EA0:  PUSH            {R4-R7,LR}
506EA2:  ADD             R7, SP, #0xC
506EA4:  PUSH.W          {R8}
506EA8:  MOV             R4, R0
506EAA:  MOVS            R0, #dword_1C; this
506EAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506EB0:  MOV             R5, R0
506EB2:  LDRD.W          R6, R8, [R4,#0x10]
506EB6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506EBA:  LDR             R0, =(_ZTV30CTaskSimpleCarSetPedInAsDriver_ptr - 0x506EC6)
506EBC:  MOVS            R1, #0
506EBE:  STRB            R1, [R5,#8]
506EC0:  CMP             R6, #0
506EC2:  ADD             R0, PC; _ZTV30CTaskSimpleCarSetPedInAsDriver_ptr
506EC4:  STR             R1, [R5,#0xC]
506EC6:  STR.W           R8, [R5,#0x14]
506ECA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedInAsDriver ...
506ECC:  STRB            R1, [R5,#0x18]
506ECE:  STRB            R1, [R5,#0x19]
506ED0:  ADD.W           R0, R0, #8
506ED4:  STRB            R1, [R5,#0x1A]
506ED6:  MOV             R1, R5
506ED8:  STR             R0, [R5]
506EDA:  STR.W           R6, [R1,#0x10]!; CEntity **
506EDE:  ITT NE
506EE0:  MOVNE           R0, R6; this
506EE2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506EE6:  LDRB            R0, [R4,#0x18]
506EE8:  STRB            R0, [R5,#0x18]
506EEA:  LDRB            R0, [R4,#0x19]
506EEC:  STRB            R0, [R5,#0x19]
506EEE:  LDRB            R0, [R4,#0x1A]
506EF0:  STRB            R0, [R5,#0x1A]
506EF2:  MOV             R0, R5
506EF4:  POP.W           {R8}
506EF8:  POP             {R4-R7,PC}
