; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveDiveC2EP8CVehicle
; Address            : 0x50B0B0 - 0x50B0E2
; =========================================================

50B0B0:  PUSH            {R4,R5,R7,LR}
50B0B2:  ADD             R7, SP, #8
50B0B4:  MOV             R5, R1
50B0B6:  MOV             R4, R0
50B0B8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B0BC:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveDive_ptr - 0x50B0C8)
50B0BE:  MOVS            R1, #0
50B0C0:  STRB            R1, [R4,#0xC]
50B0C2:  CMP             R5, #0
50B0C4:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveDive_ptr
50B0C6:  STR             R1, [R4,#0x10]
50B0C8:  MOV             R1, R4
50B0CA:  LDR             R0, [R0]; `vtable for'CTaskSimpleEvasiveDive ...
50B0CC:  ADD.W           R0, R0, #8
50B0D0:  STR             R0, [R4]
50B0D2:  STR.W           R5, [R1,#8]!; CEntity **
50B0D6:  ITT NE
50B0D8:  MOVNE           R0, R5; this
50B0DA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B0DE:  MOV             R0, R4
50B0E0:  POP             {R4,R5,R7,PC}
