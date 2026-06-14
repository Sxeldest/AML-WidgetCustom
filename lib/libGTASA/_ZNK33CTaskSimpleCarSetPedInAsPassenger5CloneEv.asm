; =========================================================
; Game Engine Function: _ZNK33CTaskSimpleCarSetPedInAsPassenger5CloneEv
; Address            : 0x506E30 - 0x506E8E
; =========================================================

506E30:  PUSH            {R4-R7,LR}
506E32:  ADD             R7, SP, #0xC
506E34:  PUSH.W          {R8,R9,R11}
506E38:  MOV             R4, R0
506E3A:  MOVS            R0, #dword_20; this
506E3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506E40:  ADD.W           R9, R4, #0x10
506E44:  MOV             R5, R0
506E46:  LDM.W           R9, {R6,R8,R9}
506E4A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506E4E:  LDR             R0, =(_ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr - 0x506E5A)
506E50:  MOVS            R1, #0
506E52:  STRB            R1, [R5,#8]
506E54:  CMP             R6, #0
506E56:  ADD             R0, PC; _ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr
506E58:  STR             R1, [R5,#0xC]
506E5A:  STRD.W          R8, R9, [R5,#0x14]
506E5E:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedInAsPassenger ...
506E60:  STRB            R1, [R5,#0x1C]
506E62:  STRB            R1, [R5,#0x1D]
506E64:  ADD.W           R0, R0, #8
506E68:  STRB            R1, [R5,#0x1E]
506E6A:  MOV             R1, R5
506E6C:  STR             R0, [R5]
506E6E:  STR.W           R6, [R1,#0x10]!; CEntity **
506E72:  ITT NE
506E74:  MOVNE           R0, R6; this
506E76:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506E7A:  LDRB            R0, [R4,#0x1C]
506E7C:  STRB            R0, [R5,#0x1C]
506E7E:  LDRB            R0, [R4,#0x1D]
506E80:  STRB            R0, [R5,#0x1D]
506E82:  LDRB            R0, [R4,#0x1E]
506E84:  STRB            R0, [R5,#0x1E]
506E86:  MOV             R0, R5
506E88:  POP.W           {R8,R9,R11}
506E8C:  POP             {R4-R7,PC}
